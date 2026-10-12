import java.nio.file.Files;
import java.nio.file.Path;
import java.security.KeyStore;
import java.security.cert.CertificateFactory;

class MakeTruststore {
    public static void main(String[] args) throws Exception {
        var certs = CertificateFactory.getInstance("X.509")
            .generateCertificates(Files.newInputStream(Path.of(args[0])));
        var store = KeyStore.getInstance("PKCS12");
        store.load(null, "changeit".toCharArray());
        int i = 0;
        for (var cert : certs) store.setCertificateEntry("ca-" + i++, cert);
        try (var out = Files.newOutputStream(Path.of(args[1]))) {
            store.store(out, "changeit".toCharArray());
        }
        System.out.println(i + " CA certificates imported");
    }
}
