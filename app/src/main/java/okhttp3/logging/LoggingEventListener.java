package okhttp3.logging;

import cz.msebera.android.httpclient.message.TokenParser;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.logging.HttpLoggingInterceptor;

/* loaded from: classes2.dex */
public final class LoggingEventListener extends EventListener {
    private final HttpLoggingInterceptor.Logger logger;
    private long startNs;

    public static class Factory implements EventListener.Factory {
        private final HttpLoggingInterceptor.Logger logger;

        /* JADX WARN: Multi-variable type inference failed */
        public Factory() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        @Override // okhttp3.EventListener.Factory
        public EventListener create(Call call) {
            j.checkNotNullParameter(call, "call");
            return new LoggingEventListener(this.logger, null);
        }

        public Factory(HttpLoggingInterceptor.Logger logger) {
            j.checkNotNullParameter(logger, "logger");
            this.logger = logger;
        }

        public /* synthetic */ Factory(HttpLoggingInterceptor.Logger logger, int i2, g gVar) {
            this((i2 & 1) != 0 ? HttpLoggingInterceptor.Logger.DEFAULT : logger);
        }
    }

    public /* synthetic */ LoggingEventListener(HttpLoggingInterceptor.Logger logger, g gVar) {
        this(logger);
    }

    private final void logWithTime(String str) {
        long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - this.startNs);
        this.logger.log("[" + millis + " ms] " + str);
    }

    @Override // okhttp3.EventListener
    public void cacheConditionalHit(Call call, Response cachedResponse) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(cachedResponse, "cachedResponse");
        logWithTime(j.stringPlus("cacheConditionalHit: ", cachedResponse));
    }

    @Override // okhttp3.EventListener
    public void cacheHit(Call call, Response response) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(response, "response");
        logWithTime(j.stringPlus("cacheHit: ", response));
    }

    @Override // okhttp3.EventListener
    public void cacheMiss(Call call) {
        j.checkNotNullParameter(call, "call");
        logWithTime("cacheMiss");
    }

    @Override // okhttp3.EventListener
    public void callEnd(Call call) {
        j.checkNotNullParameter(call, "call");
        logWithTime("callEnd");
    }

    @Override // okhttp3.EventListener
    public void callFailed(Call call, IOException ioe) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(ioe, "ioe");
        logWithTime(j.stringPlus("callFailed: ", ioe));
    }

    @Override // okhttp3.EventListener
    public void callStart(Call call) {
        j.checkNotNullParameter(call, "call");
        this.startNs = System.nanoTime();
        logWithTime(j.stringPlus("callStart: ", call.request()));
    }

    @Override // okhttp3.EventListener
    public void canceled(Call call) {
        j.checkNotNullParameter(call, "call");
        logWithTime("canceled");
    }

    @Override // okhttp3.EventListener
    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        j.checkNotNullParameter(proxy, "proxy");
        logWithTime(j.stringPlus("connectEnd: ", protocol));
    }

    @Override // okhttp3.EventListener
    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException ioe) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        j.checkNotNullParameter(proxy, "proxy");
        j.checkNotNullParameter(ioe, "ioe");
        logWithTime("connectFailed: " + protocol + TokenParser.SP + ioe);
    }

    @Override // okhttp3.EventListener
    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        j.checkNotNullParameter(proxy, "proxy");
        logWithTime("connectStart: " + inetSocketAddress + TokenParser.SP + proxy);
    }

    @Override // okhttp3.EventListener
    public void connectionAcquired(Call call, Connection connection) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(connection, "connection");
        logWithTime(j.stringPlus("connectionAcquired: ", connection));
    }

    @Override // okhttp3.EventListener
    public void connectionReleased(Call call, Connection connection) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(connection, "connection");
        logWithTime("connectionReleased");
    }

    @Override // okhttp3.EventListener
    public void dnsEnd(Call call, String domainName, List<? extends InetAddress> inetAddressList) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(domainName, "domainName");
        j.checkNotNullParameter(inetAddressList, "inetAddressList");
        logWithTime(j.stringPlus("dnsEnd: ", inetAddressList));
    }

    @Override // okhttp3.EventListener
    public void dnsStart(Call call, String domainName) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(domainName, "domainName");
        logWithTime(j.stringPlus("dnsStart: ", domainName));
    }

    @Override // okhttp3.EventListener
    public void proxySelectEnd(Call call, HttpUrl url, List<? extends Proxy> proxies) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(url, "url");
        j.checkNotNullParameter(proxies, "proxies");
        logWithTime(j.stringPlus("proxySelectEnd: ", proxies));
    }

    @Override // okhttp3.EventListener
    public void proxySelectStart(Call call, HttpUrl url) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(url, "url");
        logWithTime(j.stringPlus("proxySelectStart: ", url));
    }

    @Override // okhttp3.EventListener
    public void requestBodyEnd(Call call, long j7) {
        j.checkNotNullParameter(call, "call");
        logWithTime(j.stringPlus("requestBodyEnd: byteCount=", Long.valueOf(j7)));
    }

    @Override // okhttp3.EventListener
    public void requestBodyStart(Call call) {
        j.checkNotNullParameter(call, "call");
        logWithTime("requestBodyStart");
    }

    @Override // okhttp3.EventListener
    public void requestFailed(Call call, IOException ioe) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(ioe, "ioe");
        logWithTime(j.stringPlus("requestFailed: ", ioe));
    }

    @Override // okhttp3.EventListener
    public void requestHeadersEnd(Call call, Request request) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(request, "request");
        logWithTime("requestHeadersEnd");
    }

    @Override // okhttp3.EventListener
    public void requestHeadersStart(Call call) {
        j.checkNotNullParameter(call, "call");
        logWithTime("requestHeadersStart");
    }

    @Override // okhttp3.EventListener
    public void responseBodyEnd(Call call, long j7) {
        j.checkNotNullParameter(call, "call");
        logWithTime(j.stringPlus("responseBodyEnd: byteCount=", Long.valueOf(j7)));
    }

    @Override // okhttp3.EventListener
    public void responseBodyStart(Call call) {
        j.checkNotNullParameter(call, "call");
        logWithTime("responseBodyStart");
    }

    @Override // okhttp3.EventListener
    public void responseFailed(Call call, IOException ioe) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(ioe, "ioe");
        logWithTime(j.stringPlus("responseFailed: ", ioe));
    }

    @Override // okhttp3.EventListener
    public void responseHeadersEnd(Call call, Response response) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(response, "response");
        logWithTime(j.stringPlus("responseHeadersEnd: ", response));
    }

    @Override // okhttp3.EventListener
    public void responseHeadersStart(Call call) {
        j.checkNotNullParameter(call, "call");
        logWithTime("responseHeadersStart");
    }

    @Override // okhttp3.EventListener
    public void satisfactionFailure(Call call, Response response) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(response, "response");
        logWithTime(j.stringPlus("satisfactionFailure: ", response));
    }

    @Override // okhttp3.EventListener
    public void secureConnectEnd(Call call, Handshake handshake) {
        j.checkNotNullParameter(call, "call");
        logWithTime(j.stringPlus("secureConnectEnd: ", handshake));
    }

    @Override // okhttp3.EventListener
    public void secureConnectStart(Call call) {
        j.checkNotNullParameter(call, "call");
        logWithTime("secureConnectStart");
    }

    private LoggingEventListener(HttpLoggingInterceptor.Logger logger) {
        this.logger = logger;
    }
}
