package cz.msebera.android.httpclient.impl.execchain;

import cz.msebera.android.httpclient.ConnectionReuseStrategy;
import cz.msebera.android.httpclient.HttpHost;
import cz.msebera.android.httpclient.ProtocolException;
import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import cz.msebera.android.httpclient.client.methods.HttpRequestWrapper;
import cz.msebera.android.httpclient.client.protocol.RequestClientConnControl;
import cz.msebera.android.httpclient.client.utils.URIUtils;
import cz.msebera.android.httpclient.conn.ConnectionKeepAliveStrategy;
import cz.msebera.android.httpclient.conn.HttpClientConnectionManager;
import cz.msebera.android.httpclient.conn.routing.HttpRoute;
import cz.msebera.android.httpclient.extras.HttpClientAndroidLog;
import cz.msebera.android.httpclient.protocol.HttpProcessor;
import cz.msebera.android.httpclient.protocol.HttpRequestExecutor;
import cz.msebera.android.httpclient.protocol.ImmutableHttpProcessor;
import cz.msebera.android.httpclient.protocol.RequestContent;
import cz.msebera.android.httpclient.protocol.RequestTargetHost;
import cz.msebera.android.httpclient.protocol.RequestUserAgent;
import cz.msebera.android.httpclient.util.Args;
import cz.msebera.android.httpclient.util.VersionInfo;
import java.net.URI;
import java.net.URISyntaxException;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
/* loaded from: classes2.dex */
public class MinimalClientExec implements ClientExecChain {
    private final HttpClientConnectionManager connManager;
    private final HttpProcessor httpProcessor;
    private final ConnectionKeepAliveStrategy keepAliveStrategy;
    public HttpClientAndroidLog log = new HttpClientAndroidLog(getClass());
    private final HttpRequestExecutor requestExecutor;
    private final ConnectionReuseStrategy reuseStrategy;

    public MinimalClientExec(HttpRequestExecutor httpRequestExecutor, HttpClientConnectionManager httpClientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy) {
        Args.notNull(httpRequestExecutor, "HTTP request executor");
        Args.notNull(httpClientConnectionManager, "Client connection manager");
        Args.notNull(connectionReuseStrategy, "Connection reuse strategy");
        Args.notNull(connectionKeepAliveStrategy, "Connection keep alive strategy");
        this.httpProcessor = new ImmutableHttpProcessor(new RequestContent(), new RequestTargetHost(), new RequestClientConnControl(), new RequestUserAgent(VersionInfo.getUserAgent("Apache-HttpClient", "cz.msebera.android.httpclient.client", getClass())));
        this.requestExecutor = httpRequestExecutor;
        this.connManager = httpClientConnectionManager;
        this.reuseStrategy = connectionReuseStrategy;
        this.keepAliveStrategy = connectionKeepAliveStrategy;
    }

    public static void rewriteRequestURI(HttpRequestWrapper httpRequestWrapper, HttpRoute httpRoute, boolean z6) throws ProtocolException {
        URI rewriteURI;
        try {
            URI uri = httpRequestWrapper.getURI();
            if (uri != null) {
                if (uri.isAbsolute()) {
                    rewriteURI = URIUtils.rewriteURI(uri, (HttpHost) null, z6 ? URIUtils.DROP_FRAGMENT_AND_NORMALIZE : URIUtils.DROP_FRAGMENT);
                } else {
                    rewriteURI = URIUtils.rewriteURI(uri);
                }
                httpRequestWrapper.setURI(rewriteURI);
            }
        } catch (URISyntaxException e3) {
            throw new ProtocolException("Invalid URI: " + httpRequestWrapper.getRequestLine().getUri(), e3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00c3 A[Catch: Error -> 0x0061, RuntimeException -> 0x0064, IOException -> 0x0067, HttpException -> 0x006a, ConnectionShutdownException -> 0x006d, TryCatch #3 {HttpException -> 0x006a, ConnectionShutdownException -> 0x006d, IOException -> 0x0067, Error -> 0x0061, RuntimeException -> 0x0064, blocks: (B:49:0x0057, B:51:0x005d, B:52:0x0070, B:53:0x0078, B:17:0x0079, B:19:0x007f, B:22:0x0089, B:24:0x0091, B:26:0x0097, B:27:0x009a, B:29:0x00a2, B:31:0x00ae, B:33:0x00c3, B:34:0x00c7, B:36:0x00f3, B:37:0x0103, B:39:0x0109, B:42:0x0110, B:44:0x0116, B:46:0x0100), top: B:48:0x0057 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f3 A[Catch: Error -> 0x0061, RuntimeException -> 0x0064, IOException -> 0x0067, HttpException -> 0x006a, ConnectionShutdownException -> 0x006d, TryCatch #3 {HttpException -> 0x006a, ConnectionShutdownException -> 0x006d, IOException -> 0x0067, Error -> 0x0061, RuntimeException -> 0x0064, blocks: (B:49:0x0057, B:51:0x005d, B:52:0x0070, B:53:0x0078, B:17:0x0079, B:19:0x007f, B:22:0x0089, B:24:0x0091, B:26:0x0097, B:27:0x009a, B:29:0x00a2, B:31:0x00ae, B:33:0x00c3, B:34:0x00c7, B:36:0x00f3, B:37:0x0103, B:39:0x0109, B:42:0x0110, B:44:0x0116, B:46:0x0100), top: B:48:0x0057 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0100 A[Catch: Error -> 0x0061, RuntimeException -> 0x0064, IOException -> 0x0067, HttpException -> 0x006a, ConnectionShutdownException -> 0x006d, TryCatch #3 {HttpException -> 0x006a, ConnectionShutdownException -> 0x006d, IOException -> 0x0067, Error -> 0x0061, RuntimeException -> 0x0064, blocks: (B:49:0x0057, B:51:0x005d, B:52:0x0070, B:53:0x0078, B:17:0x0079, B:19:0x007f, B:22:0x0089, B:24:0x0091, B:26:0x0097, B:27:0x009a, B:29:0x00a2, B:31:0x00ae, B:33:0x00c3, B:34:0x00c7, B:36:0x00f3, B:37:0x0103, B:39:0x0109, B:42:0x0110, B:44:0x0116, B:46:0x0100), top: B:48:0x0057 }] */
    @Override // cz.msebera.android.httpclient.impl.execchain.ClientExecChain
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public cz.msebera.android.httpclient.client.methods.CloseableHttpResponse execute(cz.msebera.android.httpclient.conn.routing.HttpRoute r9, cz.msebera.android.httpclient.client.methods.HttpRequestWrapper r10, cz.msebera.android.httpclient.client.protocol.HttpClientContext r11, cz.msebera.android.httpclient.client.methods.HttpExecutionAware r12) throws java.io.IOException, cz.msebera.android.httpclient.HttpException {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cz.msebera.android.httpclient.impl.execchain.MinimalClientExec.execute(cz.msebera.android.httpclient.conn.routing.HttpRoute, cz.msebera.android.httpclient.client.methods.HttpRequestWrapper, cz.msebera.android.httpclient.client.protocol.HttpClientContext, cz.msebera.android.httpclient.client.methods.HttpExecutionAware):cz.msebera.android.httpclient.client.methods.CloseableHttpResponse");
    }
}
