package cz.msebera.android.httpclient.impl.conn;

import cz.msebera.android.httpclient.HttpHost;
import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import cz.msebera.android.httpclient.client.protocol.ClientContext;
import cz.msebera.android.httpclient.conn.ClientConnectionOperator;
import cz.msebera.android.httpclient.conn.DnsResolver;
import cz.msebera.android.httpclient.conn.OperatedClientConnection;
import cz.msebera.android.httpclient.conn.scheme.Scheme;
import cz.msebera.android.httpclient.conn.scheme.SchemeLayeredSocketFactory;
import cz.msebera.android.httpclient.conn.scheme.SchemeRegistry;
import cz.msebera.android.httpclient.extras.HttpClientAndroidLog;
import cz.msebera.android.httpclient.params.HttpConnectionParams;
import cz.msebera.android.httpclient.params.HttpParams;
import cz.msebera.android.httpclient.protocol.HttpContext;
import cz.msebera.android.httpclient.util.Args;
import cz.msebera.android.httpclient.util.Asserts;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;

@Contract(threading = ThreadingBehavior.SAFE_CONDITIONAL)
@Deprecated
/* loaded from: classes2.dex */
public class DefaultClientConnectionOperator implements ClientConnectionOperator {
    protected final DnsResolver dnsResolver;
    public HttpClientAndroidLog log = new HttpClientAndroidLog(getClass());
    protected final SchemeRegistry schemeRegistry;

    public DefaultClientConnectionOperator(SchemeRegistry schemeRegistry) {
        Args.notNull(schemeRegistry, "Scheme registry");
        this.schemeRegistry = schemeRegistry;
        this.dnsResolver = new SystemDefaultDnsResolver();
    }

    private SchemeRegistry getSchemeRegistry(HttpContext httpContext) {
        SchemeRegistry schemeRegistry = (SchemeRegistry) httpContext.getAttribute(ClientContext.SCHEME_REGISTRY);
        return schemeRegistry == null ? this.schemeRegistry : schemeRegistry;
    }

    @Override // cz.msebera.android.httpclient.conn.ClientConnectionOperator
    public OperatedClientConnection createConnection() {
        return new DefaultClientConnection();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c4 A[SYNTHETIC] */
    @Override // cz.msebera.android.httpclient.conn.ClientConnectionOperator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void openConnection(cz.msebera.android.httpclient.conn.OperatedClientConnection r17, cz.msebera.android.httpclient.HttpHost r18, java.net.InetAddress r19, cz.msebera.android.httpclient.protocol.HttpContext r20, cz.msebera.android.httpclient.params.HttpParams r21) throws java.io.IOException {
        /*
            r16 = this;
            r1 = r16
            r2 = r17
            r3 = r18
            r4 = r19
            r5 = r20
            r6 = r21
            java.lang.String r0 = "Connection"
            cz.msebera.android.httpclient.util.Args.notNull(r2, r0)
            java.lang.String r0 = "Target host"
            cz.msebera.android.httpclient.util.Args.notNull(r3, r0)
            java.lang.String r0 = "HTTP parameters"
            cz.msebera.android.httpclient.util.Args.notNull(r6, r0)
            boolean r0 = r2.isOpen()
            r7 = 1
            r0 = r0 ^ r7
            java.lang.String r8 = "Connection must not be open"
            cz.msebera.android.httpclient.util.Asserts.check(r0, r8)
            cz.msebera.android.httpclient.conn.scheme.SchemeRegistry r0 = r1.getSchemeRegistry(r5)
            java.lang.String r8 = r3.getSchemeName()
            cz.msebera.android.httpclient.conn.scheme.Scheme r0 = r0.getScheme(r8)
            cz.msebera.android.httpclient.conn.scheme.SchemeSocketFactory r8 = r0.getSchemeSocketFactory()
            java.lang.String r9 = r3.getHostName()
            java.net.InetAddress[] r9 = r1.resolveHostname(r9)
            int r10 = r3.getPort()
            int r10 = r0.resolvePort(r10)
            r11 = 0
            r12 = r11
        L48:
            int r0 = r9.length
            if (r12 >= r0) goto Lcd
            r0 = r9[r12]
            int r13 = r9.length
            int r13 = r13 - r7
            if (r12 != r13) goto L53
            r13 = r7
            goto L54
        L53:
            r13 = r11
        L54:
            java.net.Socket r14 = r8.createSocket(r6)
            r2.opening(r14, r3)
            cz.msebera.android.httpclient.conn.HttpInetSocketAddress r15 = new cz.msebera.android.httpclient.conn.HttpInetSocketAddress
            r15.<init>(r3, r0, r10)
            if (r4 == 0) goto L68
            java.net.InetSocketAddress r0 = new java.net.InetSocketAddress
            r0.<init>(r4, r11)
            goto L69
        L68:
            r0 = 0
        L69:
            cz.msebera.android.httpclient.extras.HttpClientAndroidLog r7 = r1.log
            boolean r7 = r7.isDebugEnabled()
            if (r7 == 0) goto L84
            cz.msebera.android.httpclient.extras.HttpClientAndroidLog r7 = r1.log
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            java.lang.String r4 = "Connecting to "
            r11.<init>(r4)
            r11.append(r15)
            java.lang.String r4 = r11.toString()
            r7.debug(r4)
        L84:
            java.net.Socket r0 = r8.connectSocket(r14, r15, r0, r6)     // Catch: cz.msebera.android.httpclient.conn.ConnectTimeoutException -> L8f java.net.ConnectException -> L91
            if (r14 == r0) goto L93
            r2.opening(r0, r3)     // Catch: cz.msebera.android.httpclient.conn.ConnectTimeoutException -> L8f java.net.ConnectException -> L91
            r14 = r0
            goto L93
        L8f:
            r0 = move-exception
            goto L9e
        L91:
            r0 = move-exception
            goto La2
        L93:
            r1.prepareSocket(r14, r5, r6)     // Catch: cz.msebera.android.httpclient.conn.ConnectTimeoutException -> L8f java.net.ConnectException -> L91
            boolean r0 = r8.isSecure(r14)     // Catch: cz.msebera.android.httpclient.conn.ConnectTimeoutException -> L8f java.net.ConnectException -> L91
            r2.openCompleted(r0, r6)     // Catch: cz.msebera.android.httpclient.conn.ConnectTimeoutException -> L8f java.net.ConnectException -> L91
            goto Lcd
        L9e:
            if (r13 != 0) goto La1
            goto La4
        La1:
            throw r0
        La2:
            if (r13 != 0) goto Lcc
        La4:
            cz.msebera.android.httpclient.extras.HttpClientAndroidLog r0 = r1.log
            boolean r0 = r0.isDebugEnabled()
            if (r0 == 0) goto Lc4
            cz.msebera.android.httpclient.extras.HttpClientAndroidLog r0 = r1.log
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r7 = "Connect to "
            r4.<init>(r7)
            r4.append(r15)
            java.lang.String r7 = " timed out. Connection will be retried using another IP address"
            r4.append(r7)
            java.lang.String r4 = r4.toString()
            r0.debug(r4)
        Lc4:
            int r12 = r12 + 1
            r4 = r19
            r7 = 1
            r11 = 0
            goto L48
        Lcc:
            throw r0
        Lcd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cz.msebera.android.httpclient.impl.conn.DefaultClientConnectionOperator.openConnection(cz.msebera.android.httpclient.conn.OperatedClientConnection, cz.msebera.android.httpclient.HttpHost, java.net.InetAddress, cz.msebera.android.httpclient.protocol.HttpContext, cz.msebera.android.httpclient.params.HttpParams):void");
    }

    public void prepareSocket(Socket socket, HttpContext httpContext, HttpParams httpParams) throws IOException {
        socket.setTcpNoDelay(HttpConnectionParams.getTcpNoDelay(httpParams));
        socket.setSoTimeout(HttpConnectionParams.getSoTimeout(httpParams));
        int linger = HttpConnectionParams.getLinger(httpParams);
        if (linger >= 0) {
            socket.setSoLinger(linger > 0, linger);
        }
    }

    public InetAddress[] resolveHostname(String str) throws UnknownHostException {
        return this.dnsResolver.resolve(str);
    }

    @Override // cz.msebera.android.httpclient.conn.ClientConnectionOperator
    public void updateSecureConnection(OperatedClientConnection operatedClientConnection, HttpHost httpHost, HttpContext httpContext, HttpParams httpParams) throws IOException {
        Args.notNull(operatedClientConnection, "Connection");
        Args.notNull(httpHost, "Target host");
        Args.notNull(httpParams, "Parameters");
        Asserts.check(operatedClientConnection.isOpen(), "Connection must be open");
        Scheme scheme = getSchemeRegistry(httpContext).getScheme(httpHost.getSchemeName());
        Asserts.check(scheme.getSchemeSocketFactory() instanceof SchemeLayeredSocketFactory, "Socket factory must implement SchemeLayeredSocketFactory");
        SchemeLayeredSocketFactory schemeLayeredSocketFactory = (SchemeLayeredSocketFactory) scheme.getSchemeSocketFactory();
        Socket createLayeredSocket = schemeLayeredSocketFactory.createLayeredSocket(operatedClientConnection.getSocket(), httpHost.getHostName(), scheme.resolvePort(httpHost.getPort()), httpParams);
        prepareSocket(createLayeredSocket, httpContext, httpParams);
        operatedClientConnection.update(createLayeredSocket, httpHost, schemeLayeredSocketFactory.isSecure(createLayeredSocket), httpParams);
    }

    public DefaultClientConnectionOperator(SchemeRegistry schemeRegistry, DnsResolver dnsResolver) {
        Args.notNull(schemeRegistry, "Scheme registry");
        Args.notNull(dnsResolver, "DNS resolver");
        this.schemeRegistry = schemeRegistry;
        this.dnsResolver = dnsResolver;
    }
}
