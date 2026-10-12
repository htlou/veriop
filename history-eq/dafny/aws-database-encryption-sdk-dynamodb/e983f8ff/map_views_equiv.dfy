// Exact map-view rewrites from e983f8ff^ and e983f8ff, in isolation.
module MapViewEquivalence {
  datatype Result<V,E> = Success(value: V) | Failure(error: E)

  function OldFlattenValueMap<X(==),Y(==)>(m: map<X, Result<Y,string>>): map<X,Y> {
    map kv <- m.Items | kv.1.Success? :: kv.0 := kv.1.value
  }

  function NewFlattenValueMap<X(==),Y(==)>(m: map<X, Result<Y,string>>): map<X,Y> {
    map k <- m | m[k].Success? :: k := m[k].value
  }

  function OldFlattenErrors<X(==),Y(==)>(m: map<X, Result<Y,string>>): set<string> {
    set k <- m.Values | k.Failure? :: k.error
  }

  function NewFlattenErrors<X(==),Y(==)>(m: map<X, Result<Y,string>>): set<string> {
    set k <- m | m[k].Failure? :: m[k].error
  }

  function OldAllSuccess<X(==),Y(==)>(m: map<X, Result<Y,string>>): bool {
    forall v <- m.Values :: v.Success?
  }

  function NewAllSuccess<X(==),Y(==)>(m: map<X, Result<Y,string>>): bool {
    forall k <- m :: m[k].Success?
  }

  lemma MapViewEquiv<X,Y>(m: map<X, Result<Y,string>>)
    ensures OldFlattenValueMap(m) == NewFlattenValueMap(m)
    ensures OldFlattenErrors(m) == NewFlattenErrors(m)
    ensures OldAllSuccess(m) == NewAllSuccess(m)
  {
    var prior := OldFlattenValueMap(m);
    var newer := NewFlattenValueMap(m);
    assert forall k :: k in m ==> (k, m[k]) in m.Items;
    assert forall kv :: kv in m.Items ==> kv.0 in m && kv.1 == m[kv.0];
    forall k: X
      ensures k in prior <==> k in newer
    {
      assert k in prior <==> (k in m && m[k].Success?);
      assert k in newer <==> (k in m && m[k].Success?);
    }
    forall k: X | k in prior
      ensures prior[k] == newer[k]
    {
      assert k in m && m[k].Success?;
      assert prior[k] == m[k].value;
      assert newer[k] == m[k].value;
    }
    assert prior == newer;
  }
}
