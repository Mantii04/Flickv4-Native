package com.loopj.android.http;

import cz.msebera.android.httpclient.HttpHost;
import cz.msebera.android.httpclient.HttpVersion;
import cz.msebera.android.httpclient.conn.scheme.PlainSocketFactory;
import cz.msebera.android.httpclient.conn.scheme.Scheme;
import cz.msebera.android.httpclient.conn.scheme.SchemeRegistry;
import cz.msebera.android.httpclient.conn.ssl.SSLSocketFactory;
import cz.msebera.android.httpclient.impl.client.DefaultHttpClient;
import cz.msebera.android.httpclient.impl.conn.tsccm.ThreadSafeClientConnManager;
import cz.msebera.android.httpclient.params.BasicHttpParams;
import cz.msebera.android.httpclient.params.HttpProtocolParams;
import java.io.IOException;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes2.dex */
public class MySSLSocketFactory extends SSLSocketFactory {
    final SSLContext sslContext;

    public MySSLSocketFactory(KeyStore keyStore) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
        super(keyStore);
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        this.sslContext = sSLContext;
        sSLContext.init(null, new TrustManager[]{new X509TrustManager() { // from class: com.loopj.android.http.MySSLSocketFactory.1
            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                try {
                    x509CertificateArr[0].checkValidity();
                } catch (Exception unused) {
                    throw new CertificateException("Certificate not valid or trusted.");
                }
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                try {
                    x509CertificateArr[0].checkValidity();
                } catch (Exception unused) {
                    throw new CertificateException("Certificate not valid or trusted.");
                }
            }

            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return null;
            }
        }}, null);
    }

    private void enableSecureProtocols(Socket socket) {
        ((SSLSocket) socket).setEnabledProtocols(this.sslContext.getSupportedSSLParameters().getProtocols());
    }

    public static SSLSocketFactory getFixedSocketFactory() {
        try {
            MySSLSocketFactory mySSLSocketFactory = new MySSLSocketFactory(getKeystore());
            mySSLSocketFactory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            return mySSLSocketFactory;
        } catch (Throwable th) {
            th.printStackTrace();
            return SSLSocketFactory.getSocketFactory();
        }
    }

    public static KeyStore getKeystore() {
        KeyStore keyStore;
        Throwable th;
        try {
            keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            try {
                keyStore.load(null, null);
                return keyStore;
            } catch (Throwable th2) {
                th = th2;
                th.printStackTrace();
                return keyStore;
            }
        } catch (Throwable th3) {
            keyStore = null;
            th = th3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.security.KeyStore getKeystoreOfCA(java.io.InputStream r3) {
        /*
            r0 = 0
            java.lang.String r1 = "X.509"
            java.security.cert.CertificateFactory r1 = java.security.cert.CertificateFactory.getInstance(r1)     // Catch: java.lang.Throwable -> L1e java.security.cert.CertificateException -> L20
            java.io.BufferedInputStream r2 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L1e java.security.cert.CertificateException -> L20
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L1e java.security.cert.CertificateException -> L20
            java.security.cert.Certificate r3 = r1.generateCertificate(r2)     // Catch: java.lang.Throwable -> L19 java.security.cert.CertificateException -> L1c
            r2.close()     // Catch: java.io.IOException -> L14
            goto L30
        L14:
            r1 = move-exception
            r1.printStackTrace()
            goto L30
        L19:
            r3 = move-exception
            r0 = r2
            goto L4a
        L1c:
            r3 = move-exception
            goto L22
        L1e:
            r3 = move-exception
            goto L4a
        L20:
            r3 = move-exception
            r2 = r0
        L22:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L19
            if (r2 == 0) goto L2f
            r2.close()     // Catch: java.io.IOException -> L2b
            goto L2f
        L2b:
            r3 = move-exception
            r3.printStackTrace()
        L2f:
            r3 = r0
        L30:
            java.lang.String r1 = java.security.KeyStore.getDefaultType()
            java.security.KeyStore r1 = java.security.KeyStore.getInstance(r1)     // Catch: java.lang.Exception -> L44
            r1.load(r0, r0)     // Catch: java.lang.Exception -> L41
            java.lang.String r0 = "ca"
            r1.setCertificateEntry(r0, r3)     // Catch: java.lang.Exception -> L41
            goto L49
        L41:
            r3 = move-exception
            r0 = r1
            goto L45
        L44:
            r3 = move-exception
        L45:
            r3.printStackTrace()
            r1 = r0
        L49:
            return r1
        L4a:
            if (r0 == 0) goto L54
            r0.close()     // Catch: java.io.IOException -> L50
            goto L54
        L50:
            r0 = move-exception
            r0.printStackTrace()
        L54:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loopj.android.http.MySSLSocketFactory.getKeystoreOfCA(java.io.InputStream):java.security.KeyStore");
    }

    public static DefaultHttpClient getNewHttpClient(KeyStore keyStore) {
        try {
            MySSLSocketFactory mySSLSocketFactory = new MySSLSocketFactory(keyStore);
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme(HttpHost.DEFAULT_SCHEME_NAME, PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme("https", mySSLSocketFactory, 443));
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
            return new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        } catch (Exception unused) {
            return new DefaultHttpClient();
        }
    }

    @Override // cz.msebera.android.httpclient.conn.ssl.SSLSocketFactory, cz.msebera.android.httpclient.conn.scheme.LayeredSocketFactory
    public Socket createSocket(Socket socket, String str, int i2, boolean z6) throws IOException {
        Socket createSocket = this.sslContext.getSocketFactory().createSocket(socket, str, i2, z6);
        enableSecureProtocols(createSocket);
        return createSocket;
    }

    public void fixHttpsURLConnection() {
        HttpsURLConnection.setDefaultSSLSocketFactory(this.sslContext.getSocketFactory());
    }

    @Override // cz.msebera.android.httpclient.conn.ssl.SSLSocketFactory, cz.msebera.android.httpclient.conn.scheme.SocketFactory
    public Socket createSocket() throws IOException {
        Socket createSocket = this.sslContext.getSocketFactory().createSocket();
        enableSecureProtocols(createSocket);
        return createSocket;
    }
}
