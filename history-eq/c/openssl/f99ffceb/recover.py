"""Recover the exact historical hashtable source from the available child blob."""

from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/openssl"
child_id = "1cce15ed2443c055ff7d6be84f1fc53d982404fa"
parent_id = "7b3da99c6d0c5b1831f462a6b7068ea368465e9a"
child = subprocess.check_output(["git", "-C", str(repo), "cat-file", "blob", child_id])
start = child.index(b"void ossl_ht_free(HT *h)")
end = child.index(b"size_t ossl_ht_count(HT *h)", start)
new_body = child[start:end]
old_body = b"""void ossl_ht_free(HT *h)
{
    int flush_ok;

    if (h == NULL)
        return;

    ossl_ht_write_lock(h);
    flush_ok = ossl_ht_flush_internal(h);
    ossl_ht_write_unlock(h);
    /* Freeing the lock does a final sync for us */
    if (!h->config.no_rcu) {
        CRYPTO_THREAD_lock_free(h->atomic_lock);
        ossl_rcu_lock_free(h->lock);
    }
    if (flush_ok) {
        OPENSSL_free(h->md->neighborhood_ptr_to_free);
        OPENSSL_free(h->md);
    } else {
        free_oldmd(h->md);
    }
    OPENSSL_free(h);
    return;
}

"""
parent = child[:start] + old_body + child[end:]
(here / "hashtable.old.c").write_bytes(parent)
(here / "hashtable.new.c").write_bytes(child)
for name, expected in (("old", parent_id), ("new", child_id)):
    actual = subprocess.check_output(["git", "hash-object", str(here / f"hashtable.{name}.c")]).decode().strip()
    assert actual == expected, (name, actual, expected)
assert new_body != old_body
print("Recovered exact old/new Git blobs")
