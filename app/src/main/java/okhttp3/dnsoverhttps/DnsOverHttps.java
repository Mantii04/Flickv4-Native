package okhttp3.dnsoverhttps;

import F5.a;
import P5.p;
import android.support.v4.media.session.PlaybackStateCompat;
import cz.msebera.android.httpclient.HttpHeaders;
import cz.msebera.android.httpclient.message.TokenParser;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Dns;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import okio.ByteString;
import u5.AbstractC1702a;
import v5.n;

/* loaded from: classes2.dex */
public final class DnsOverHttps implements Dns {
    public static final Companion Companion = new Companion(null);
    private static final MediaType DNS_MESSAGE = MediaType.Companion.get("application/dns-message");
    public static final int MAX_RESPONSE_SIZE = 65536;
    private final OkHttpClient client;
    private final boolean includeIPv6;
    private final boolean post;
    private final boolean resolvePrivateAddresses;
    private final boolean resolvePublicAddresses;
    private final HttpUrl url;

    public static final class Builder {
        private List<? extends InetAddress> bootstrapDnsHosts;
        private OkHttpClient client;
        private boolean post;
        private boolean resolvePrivateAddresses;
        private HttpUrl url;
        private boolean includeIPv6 = true;
        private Dns systemDns = Dns.SYSTEM;
        private boolean resolvePublicAddresses = true;

        public final Builder bootstrapDnsHosts(List<? extends InetAddress> list) {
            this.bootstrapDnsHosts = list;
            return this;
        }

        public final DnsOverHttps build() {
            OkHttpClient okHttpClient = this.client;
            if (okHttpClient == null) {
                throw new NullPointerException("client not set");
            }
            OkHttpClient build = okHttpClient.newBuilder().dns(DnsOverHttps.Companion.buildBootstrapClient(this)).build();
            HttpUrl httpUrl = this.url;
            if (httpUrl != null) {
                return new DnsOverHttps(build, httpUrl, this.includeIPv6, this.post, this.resolvePrivateAddresses, this.resolvePublicAddresses);
            }
            throw new IllegalStateException("url not set");
        }

        public final Builder client(OkHttpClient client) {
            j.checkNotNullParameter(client, "client");
            this.client = client;
            return this;
        }

        public final List<InetAddress> getBootstrapDnsHosts$okhttp_dnsoverhttps() {
            return this.bootstrapDnsHosts;
        }

        public final OkHttpClient getClient$okhttp_dnsoverhttps() {
            return this.client;
        }

        public final boolean getIncludeIPv6$okhttp_dnsoverhttps() {
            return this.includeIPv6;
        }

        public final boolean getPost$okhttp_dnsoverhttps() {
            return this.post;
        }

        public final boolean getResolvePrivateAddresses$okhttp_dnsoverhttps() {
            return this.resolvePrivateAddresses;
        }

        public final boolean getResolvePublicAddresses$okhttp_dnsoverhttps() {
            return this.resolvePublicAddresses;
        }

        public final Dns getSystemDns$okhttp_dnsoverhttps() {
            return this.systemDns;
        }

        public final HttpUrl getUrl$okhttp_dnsoverhttps() {
            return this.url;
        }

        public final Builder includeIPv6(boolean z6) {
            this.includeIPv6 = z6;
            return this;
        }

        public final Builder post(boolean z6) {
            this.post = z6;
            return this;
        }

        public final Builder resolvePrivateAddresses(boolean z6) {
            this.resolvePrivateAddresses = z6;
            return this;
        }

        public final Builder resolvePublicAddresses(boolean z6) {
            this.resolvePublicAddresses = z6;
            return this;
        }

        public final void setBootstrapDnsHosts$okhttp_dnsoverhttps(List<? extends InetAddress> list) {
            this.bootstrapDnsHosts = list;
        }

        public final void setClient$okhttp_dnsoverhttps(OkHttpClient okHttpClient) {
            this.client = okHttpClient;
        }

        public final void setIncludeIPv6$okhttp_dnsoverhttps(boolean z6) {
            this.includeIPv6 = z6;
        }

        public final void setPost$okhttp_dnsoverhttps(boolean z6) {
            this.post = z6;
        }

        public final void setResolvePrivateAddresses$okhttp_dnsoverhttps(boolean z6) {
            this.resolvePrivateAddresses = z6;
        }

        public final void setResolvePublicAddresses$okhttp_dnsoverhttps(boolean z6) {
            this.resolvePublicAddresses = z6;
        }

        public final void setSystemDns$okhttp_dnsoverhttps(Dns dns) {
            j.checkNotNullParameter(dns, "<set-?>");
            this.systemDns = dns;
        }

        public final void setUrl$okhttp_dnsoverhttps(HttpUrl httpUrl) {
            this.url = httpUrl;
        }

        public final Builder systemDns(Dns systemDns) {
            j.checkNotNullParameter(systemDns, "systemDns");
            this.systemDns = systemDns;
            return this;
        }

        public final Builder url(HttpUrl url) {
            j.checkNotNullParameter(url, "url");
            this.url = url;
            return this;
        }

        public final Builder bootstrapDnsHosts(InetAddress... bootstrapDnsHosts) {
            j.checkNotNullParameter(bootstrapDnsHosts, "bootstrapDnsHosts");
            return bootstrapDnsHosts(n.toList(bootstrapDnsHosts));
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Dns buildBootstrapClient(Builder builder) {
            List<InetAddress> bootstrapDnsHosts$okhttp_dnsoverhttps = builder.getBootstrapDnsHosts$okhttp_dnsoverhttps();
            if (bootstrapDnsHosts$okhttp_dnsoverhttps == null) {
                return builder.getSystemDns$okhttp_dnsoverhttps();
            }
            HttpUrl url$okhttp_dnsoverhttps = builder.getUrl$okhttp_dnsoverhttps();
            j.checkNotNull(url$okhttp_dnsoverhttps);
            return new BootstrapDns(url$okhttp_dnsoverhttps.host(), bootstrapDnsHosts$okhttp_dnsoverhttps);
        }

        public final MediaType getDNS_MESSAGE() {
            return DnsOverHttps.DNS_MESSAGE;
        }

        public final boolean isPrivateHost$okhttp_dnsoverhttps(String host) {
            j.checkNotNullParameter(host, "host");
            return PublicSuffixDatabase.Companion.get().getEffectiveTldPlusOne(host) == null;
        }

        private Companion() {
        }
    }

    public DnsOverHttps(OkHttpClient client, HttpUrl url, boolean z6, boolean z7, boolean z8, boolean z9) {
        j.checkNotNullParameter(client, "client");
        j.checkNotNullParameter(url, "url");
        this.client = client;
        this.url = url;
        this.includeIPv6 = z6;
        this.post = z7;
        this.resolvePrivateAddresses = z8;
        this.resolvePublicAddresses = z9;
    }

    private final void buildRequest(String str, List<Call> list, List<InetAddress> list2, List<Exception> list3, int i2) {
        Request buildRequest = buildRequest(str, i2);
        Response cacheOnlyResponse = getCacheOnlyResponse(buildRequest);
        if (cacheOnlyResponse != null) {
            processResponse(cacheOnlyResponse, str, list2, list3);
        } else {
            list.add(this.client.newCall(buildRequest));
        }
    }

    private final void executeRequests(final String str, List<? extends Call> list, final List<InetAddress> list2, final List<Exception> list3) {
        final CountDownLatch countDownLatch = new CountDownLatch(list.size());
        Iterator<? extends Call> it = list.iterator();
        while (it.hasNext()) {
            it.next().enqueue(new Callback() { // from class: okhttp3.dnsoverhttps.DnsOverHttps$executeRequests$1
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException e3) {
                    j.checkNotNullParameter(call, "call");
                    j.checkNotNullParameter(e3, "e");
                    List<Exception> list4 = list3;
                    synchronized (list4) {
                        list4.add(e3);
                    }
                    countDownLatch.countDown();
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) {
                    j.checkNotNullParameter(call, "call");
                    j.checkNotNullParameter(response, "response");
                    this.processResponse(response, str, list2, list3);
                    countDownLatch.countDown();
                }
            });
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e3) {
            list3.add(e3);
        }
    }

    private final Response getCacheOnlyResponse(Request request) {
        if (this.post || this.client.cache() == null) {
            return null;
        }
        try {
            Response execute = this.client.newCall(request.newBuilder().cacheControl(new CacheControl.Builder().onlyIfCached().build()).build()).execute();
            if (execute.code() != 504) {
                return execute;
            }
            return null;
        } catch (IOException unused) {
            return null;
        }
    }

    private final List<InetAddress> lookupHttps(String str) throws UnknownHostException {
        ArrayList arrayList = new ArrayList(2);
        ArrayList arrayList2 = new ArrayList(2);
        ArrayList arrayList3 = new ArrayList(5);
        buildRequest(str, arrayList, arrayList3, arrayList2, 1);
        if (this.includeIPv6) {
            buildRequest(str, arrayList, arrayList3, arrayList2, 28);
        }
        executeRequests(str, arrayList, arrayList3, arrayList2);
        return !arrayList3.isEmpty() ? arrayList3 : throwBestFailure(str, arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processResponse(Response response, String str, List<InetAddress> list, List<Exception> list2) {
        try {
            List<InetAddress> readResponse = readResponse(str, response);
            synchronized (list) {
                list.addAll(readResponse);
            }
        } catch (Exception e3) {
            synchronized (list2) {
                list2.add(e3);
            }
        }
    }

    private final List<InetAddress> readResponse(String str, Response response) throws Exception {
        if (response.cacheResponse() == null && response.protocol() != Protocol.HTTP_2) {
            Platform.log$default(Platform.Companion.get(), "Incorrect protocol: " + response.protocol(), 5, null, 4, null);
        }
        try {
            if (!response.isSuccessful()) {
                throw new IOException("response: " + response.code() + TokenParser.SP + response.message());
            }
            ResponseBody body = response.body();
            j.checkNotNull(body);
            if (body.contentLength() <= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                List<InetAddress> decodeAnswers = DnsRecordCodec.INSTANCE.decodeAnswers(str, body.source().readByteString());
                a.closeFinally(response, null);
                return decodeAnswers;
            }
            throw new IOException("response size exceeds limit (65536 bytes): " + body.contentLength() + " bytes");
        } finally {
        }
    }

    private final List<InetAddress> throwBestFailure(String str, List<? extends Exception> list) throws UnknownHostException {
        if (list.isEmpty()) {
            throw new UnknownHostException(str);
        }
        Exception exc = list.get(0);
        if (exc instanceof UnknownHostException) {
            throw exc;
        }
        UnknownHostException unknownHostException = new UnknownHostException(str);
        unknownHostException.initCause(exc);
        int size = list.size();
        for (int i2 = 1; i2 < size; i2++) {
            AbstractC1702a.addSuppressed(unknownHostException, list.get(i2));
        }
        throw unknownHostException;
    }

    public final OkHttpClient client() {
        return this.client;
    }

    public final boolean includeIPv6() {
        return this.includeIPv6;
    }

    @Override // okhttp3.Dns
    public List<InetAddress> lookup(String hostname) throws UnknownHostException {
        j.checkNotNullParameter(hostname, "hostname");
        if (!this.resolvePrivateAddresses || !this.resolvePublicAddresses) {
            boolean isPrivateHost$okhttp_dnsoverhttps = Companion.isPrivateHost$okhttp_dnsoverhttps(hostname);
            if (isPrivateHost$okhttp_dnsoverhttps && !this.resolvePrivateAddresses) {
                throw new UnknownHostException("private hosts not resolved");
            }
            if (!isPrivateHost$okhttp_dnsoverhttps && !this.resolvePublicAddresses) {
                throw new UnknownHostException("public hosts not resolved");
            }
        }
        return lookupHttps(hostname);
    }

    public final boolean post() {
        return this.post;
    }

    public final boolean resolvePrivateAddresses() {
        return this.resolvePrivateAddresses;
    }

    public final boolean resolvePublicAddresses() {
        return this.resolvePublicAddresses;
    }

    public final HttpUrl url() {
        return this.url;
    }

    private final Request buildRequest(String str, int i2) {
        Request.Builder builder = new Request.Builder();
        MediaType mediaType = DNS_MESSAGE;
        Request.Builder header = builder.header(HttpHeaders.ACCEPT, mediaType.toString());
        ByteString encodeQuery = DnsRecordCodec.INSTANCE.encodeQuery(str, i2);
        if (this.post) {
            header.url(this.url).post(RequestBody.Companion.create(encodeQuery, mediaType));
        } else {
            header.url(this.url.newBuilder().addQueryParameter("dns", p.replace$default(encodeQuery.base64Url(), "=", "", false, 4, (Object) null)).build());
        }
        return header.build();
    }
}
