package o5;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* renamed from: o5.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1471c implements X509TrustManager {
    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        return new X509Certificate[0];
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
    }
}
