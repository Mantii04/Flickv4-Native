package okhttp3;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public abstract class EventListener {
    public static final Companion Companion = new Companion(null);
    public static final EventListener NONE = new EventListener() { // from class: okhttp3.EventListener$Companion$NONE$1
    };

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        private Companion() {
        }
    }

    public interface Factory {
        EventListener create(Call call);
    }

    public void cacheConditionalHit(Call call, Response cachedResponse) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(cachedResponse, "cachedResponse");
    }

    public void cacheHit(Call call, Response response) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(response, "response");
    }

    public void cacheMiss(Call call) {
        j.checkNotNullParameter(call, "call");
    }

    public void callEnd(Call call) {
        j.checkNotNullParameter(call, "call");
    }

    public void callFailed(Call call, IOException ioe) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(ioe, "ioe");
    }

    public void callStart(Call call) {
        j.checkNotNullParameter(call, "call");
    }

    public void canceled(Call call) {
        j.checkNotNullParameter(call, "call");
    }

    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        j.checkNotNullParameter(proxy, "proxy");
    }

    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException ioe) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        j.checkNotNullParameter(proxy, "proxy");
        j.checkNotNullParameter(ioe, "ioe");
    }

    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        j.checkNotNullParameter(proxy, "proxy");
    }

    public void connectionAcquired(Call call, Connection connection) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(connection, "connection");
    }

    public void connectionReleased(Call call, Connection connection) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(connection, "connection");
    }

    public void dnsEnd(Call call, String domainName, List<InetAddress> inetAddressList) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(domainName, "domainName");
        j.checkNotNullParameter(inetAddressList, "inetAddressList");
    }

    public void dnsStart(Call call, String domainName) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(domainName, "domainName");
    }

    public void proxySelectEnd(Call call, HttpUrl url, List<Proxy> proxies) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(url, "url");
        j.checkNotNullParameter(proxies, "proxies");
    }

    public void proxySelectStart(Call call, HttpUrl url) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(url, "url");
    }

    public void requestBodyEnd(Call call, long j7) {
        j.checkNotNullParameter(call, "call");
    }

    public void requestBodyStart(Call call) {
        j.checkNotNullParameter(call, "call");
    }

    public void requestFailed(Call call, IOException ioe) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(ioe, "ioe");
    }

    public void requestHeadersEnd(Call call, Request request) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(request, "request");
    }

    public void requestHeadersStart(Call call) {
        j.checkNotNullParameter(call, "call");
    }

    public void responseBodyEnd(Call call, long j7) {
        j.checkNotNullParameter(call, "call");
    }

    public void responseBodyStart(Call call) {
        j.checkNotNullParameter(call, "call");
    }

    public void responseFailed(Call call, IOException ioe) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(ioe, "ioe");
    }

    public void responseHeadersEnd(Call call, Response response) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(response, "response");
    }

    public void responseHeadersStart(Call call) {
        j.checkNotNullParameter(call, "call");
    }

    public void satisfactionFailure(Call call, Response response) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(response, "response");
    }

    public void secureConnectEnd(Call call, Handshake handshake) {
        j.checkNotNullParameter(call, "call");
    }

    public void secureConnectStart(Call call) {
        j.checkNotNullParameter(call, "call");
    }
}
