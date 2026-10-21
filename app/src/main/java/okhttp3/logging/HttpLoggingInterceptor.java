package okhttp3.logging;

import A.i;
import F5.a;
import P5.p;
import com.loopj.android.http.AsyncHttpClient;
import cz.msebera.android.httpclient.message.TokenParser;
import cz.msebera.android.httpclient.protocol.HTTP;
import e6.C0870l;
import e6.InterfaceC0872n;
import e6.t;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.n;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.platform.Platform;
import org.apache.commons.lang3.StringUtils;
import v5.AbstractC1764B;
import v5.s;

/* loaded from: classes2.dex */
public final class HttpLoggingInterceptor implements Interceptor {
    private volatile Set<String> headersToRedact;
    private volatile Level level;
    private final Logger logger;

    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    public interface Logger {
        public static final Companion Companion = Companion.$$INSTANCE;
        public static final Logger DEFAULT = new Companion.DefaultLogger();

        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();

            public static final class DefaultLogger implements Logger {
                @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
                public void log(String message) {
                    j.checkNotNullParameter(message, "message");
                    Platform.log$default(Platform.Companion.get(), message, 0, null, 6, null);
                }
            }

            private Companion() {
            }
        }

        void log(String str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public HttpLoggingInterceptor() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final boolean bodyHasUnknownEncoding(Headers headers) {
        String str = headers.get("Content-Encoding");
        return (str == null || p.equals(str, HTTP.IDENTITY_CODING, true) || p.equals(str, AsyncHttpClient.ENCODING_GZIP, true)) ? false : true;
    }

    private final void logHeader(Headers headers, int i2) {
        String value = this.headersToRedact.contains(headers.name(i2)) ? "██" : headers.value(i2);
        this.logger.log(headers.name(i2) + ": " + value);
    }

    /* renamed from: -deprecated_level, reason: not valid java name */
    public final Level m247deprecated_level() {
        return this.level;
    }

    public final Level getLevel() {
        return this.level;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        boolean z6;
        String str;
        long j7;
        Charset charset;
        Long l7;
        j.checkNotNullParameter(chain, "chain");
        Level level = this.level;
        Request request = chain.request();
        if (level == Level.NONE) {
            return chain.proceed(request);
        }
        boolean z7 = level == Level.BODY;
        boolean z8 = z7 || level == Level.HEADERS;
        RequestBody body = request.body();
        Connection connection = chain.connection();
        StringBuilder sb = new StringBuilder("--> ");
        sb.append(request.method());
        sb.append(TokenParser.SP);
        sb.append(request.url());
        sb.append(connection != null ? j.stringPlus(StringUtils.SPACE, connection.protocol()) : "");
        String sb2 = sb.toString();
        if (!z8 && body != null) {
            StringBuilder s6 = i.s(sb2, " (");
            s6.append(body.contentLength());
            s6.append("-byte body)");
            sb2 = s6.toString();
        }
        this.logger.log(sb2);
        if (z8) {
            j7 = -1;
            Headers headers = request.headers();
            if (body != null) {
                MediaType contentType = body.contentType();
                if (contentType != null && headers.get("Content-Type") == null) {
                    this.logger.log(j.stringPlus("Content-Type: ", contentType));
                }
                if (body.contentLength() != -1 && headers.get("Content-Length") == null) {
                    this.logger.log(j.stringPlus("Content-Length: ", Long.valueOf(body.contentLength())));
                }
            }
            int size = headers.size();
            for (int i2 = 0; i2 < size; i2++) {
                logHeader(headers, i2);
            }
            if (!z7 || body == null) {
                z6 = z7;
                str = "-byte body)";
                this.logger.log(j.stringPlus("--> END ", request.method()));
            } else {
                if (bodyHasUnknownEncoding(request.headers())) {
                    this.logger.log("--> END " + request.method() + " (encoded body omitted)");
                } else if (body.isDuplex()) {
                    this.logger.log("--> END " + request.method() + " (duplex request body omitted)");
                } else if (body.isOneShot()) {
                    this.logger.log("--> END " + request.method() + " (one-shot body omitted)");
                } else {
                    C0870l c0870l = new C0870l();
                    body.writeTo(c0870l);
                    MediaType contentType2 = body.contentType();
                    Charset UTF_8 = contentType2 == null ? null : contentType2.charset(StandardCharsets.UTF_8);
                    if (UTF_8 == null) {
                        UTF_8 = StandardCharsets.UTF_8;
                        j.checkNotNullExpressionValue(UTF_8, "UTF_8");
                    }
                    this.logger.log("");
                    if (Utf8Kt.isProbablyUtf8(c0870l)) {
                        this.logger.log(c0870l.readString(UTF_8));
                        Logger logger = this.logger;
                        StringBuilder sb3 = new StringBuilder("--> END ");
                        sb3.append(request.method());
                        sb3.append(" (");
                        z6 = z7;
                        sb3.append(body.contentLength());
                        sb3.append("-byte body)");
                        logger.log(sb3.toString());
                        str = "-byte body)";
                    } else {
                        z6 = z7;
                        Logger logger2 = this.logger;
                        StringBuilder sb4 = new StringBuilder("--> END ");
                        sb4.append(request.method());
                        sb4.append(" (binary ");
                        str = "-byte body)";
                        sb4.append(body.contentLength());
                        sb4.append("-byte body omitted)");
                        logger2.log(sb4.toString());
                    }
                }
                z6 = z7;
                str = "-byte body)";
            }
        } else {
            z6 = z7;
            str = "-byte body)";
            j7 = -1;
        }
        long nanoTime = System.nanoTime();
        try {
            Response proceed = chain.proceed(request);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
            ResponseBody body2 = proceed.body();
            j.checkNotNull(body2);
            long contentLength = body2.contentLength();
            String str2 = contentLength != j7 ? contentLength + "-byte" : "unknown-length";
            Logger logger3 = this.logger;
            boolean z9 = z8;
            StringBuilder sb5 = new StringBuilder("<-- ");
            sb5.append(proceed.code());
            sb5.append(proceed.message().length() == 0 ? "" : i.k(StringUtils.SPACE, proceed.message()));
            sb5.append(TokenParser.SP);
            sb5.append(proceed.request().url());
            sb5.append(" (");
            sb5.append(millis);
            sb5.append("ms");
            sb5.append(!z9 ? i.l(", ", str2, " body") : "");
            sb5.append(')');
            logger3.log(sb5.toString());
            if (z9) {
                Headers headers2 = proceed.headers();
                int size2 = headers2.size();
                for (int i7 = 0; i7 < size2; i7++) {
                    logHeader(headers2, i7);
                }
                if (z6 && HttpHeaders.promisesBody(proceed)) {
                    if (bodyHasUnknownEncoding(proceed.headers())) {
                        this.logger.log("<-- END HTTP (encoded body omitted)");
                        return proceed;
                    }
                    InterfaceC0872n source = body2.source();
                    source.request(Long.MAX_VALUE);
                    C0870l buffer = source.getBuffer();
                    if (p.equals(AsyncHttpClient.ENCODING_GZIP, headers2.get("Content-Encoding"), true)) {
                        l7 = Long.valueOf(buffer.size());
                        t tVar = new t(buffer.m88clone());
                        try {
                            buffer = new C0870l();
                            buffer.writeAll(tVar);
                            charset = null;
                            a.closeFinally(tVar, null);
                        } finally {
                        }
                    } else {
                        charset = null;
                        l7 = null;
                    }
                    MediaType contentType3 = body2.contentType();
                    Charset UTF_82 = contentType3 == null ? charset : contentType3.charset(StandardCharsets.UTF_8);
                    if (UTF_82 == null) {
                        UTF_82 = StandardCharsets.UTF_8;
                        j.checkNotNullExpressionValue(UTF_82, "UTF_8");
                    }
                    if (!Utf8Kt.isProbablyUtf8(buffer)) {
                        this.logger.log("");
                        this.logger.log("<-- END HTTP (binary " + buffer.size() + "-byte body omitted)");
                        return proceed;
                    }
                    if (contentLength != 0) {
                        this.logger.log("");
                        this.logger.log(buffer.m88clone().readString(UTF_82));
                    }
                    if (l7 == null) {
                        this.logger.log("<-- END HTTP (" + buffer.size() + str);
                        return proceed;
                    }
                    this.logger.log("<-- END HTTP (" + buffer.size() + "-byte, " + l7 + "-gzipped-byte body)");
                    return proceed;
                }
                this.logger.log("<-- END HTTP");
            }
            return proceed;
        } catch (Exception e3) {
            this.logger.log(j.stringPlus("<-- HTTP FAILED: ", e3));
            throw e3;
        }
    }

    public final void level(Level level) {
        j.checkNotNullParameter(level, "<set-?>");
        this.level = level;
    }

    public final void redactHeader(String name) {
        j.checkNotNullParameter(name, "name");
        TreeSet treeSet = new TreeSet(p.getCASE_INSENSITIVE_ORDER(n.f17457a));
        s.addAll(treeSet, this.headersToRedact);
        treeSet.add(name);
        this.headersToRedact = treeSet;
    }

    public final HttpLoggingInterceptor setLevel(Level level) {
        j.checkNotNullParameter(level, "level");
        level(level);
        return this;
    }

    public HttpLoggingInterceptor(Logger logger) {
        j.checkNotNullParameter(logger, "logger");
        this.logger = logger;
        this.headersToRedact = AbstractC1764B.emptySet();
        this.level = Level.NONE;
    }

    public /* synthetic */ HttpLoggingInterceptor(Logger logger, int i2, g gVar) {
        this((i2 & 1) != 0 ? Logger.DEFAULT : logger);
    }
}
