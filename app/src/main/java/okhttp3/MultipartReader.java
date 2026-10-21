package okhttp3;

import A.i;
import android.support.v4.media.session.PlaybackStateCompat;
import e6.A;
import e6.C0870l;
import e6.C0873o;
import e6.InterfaceC0872n;
import e6.L;
import e6.O;
import e6.w;
import e6.z;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import okhttp3.internal.http1.HeadersReader;
import okio.ByteString;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class MultipartReader implements Closeable {
    public static final Companion Companion = new Companion(null);
    private static final A afterBoundaryOptions;
    private final String boundary;
    private boolean closed;
    private final ByteString crlfDashDashBoundary;
    private PartSource currentPart;
    private final ByteString dashDashBoundary;
    private boolean noMoreParts;
    private int partCount;
    private final InterfaceC0872n source;

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final A getAfterBoundaryOptions() {
            return MultipartReader.afterBoundaryOptions;
        }

        private Companion() {
        }
    }

    public static final class Part implements Closeable {
        private final InterfaceC0872n body;
        private final Headers headers;

        public Part(Headers headers, InterfaceC0872n body) {
            j.checkNotNullParameter(headers, "headers");
            j.checkNotNullParameter(body, "body");
            this.headers = headers;
            this.body = body;
        }

        public final InterfaceC0872n body() {
            return this.body;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.body.close();
        }

        public final Headers headers() {
            return this.headers;
        }
    }

    public final class PartSource implements L {
        private final O timeout = new O();

        public PartSource() {
        }

        @Override // e6.L, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (j.areEqual(MultipartReader.this.currentPart, this)) {
                MultipartReader.this.currentPart = null;
            }
        }

        @Override // e6.L
        public long read(C0870l sink, long j7) {
            long j8;
            j.checkNotNullParameter(sink, "sink");
            if (j7 < 0) {
                throw new IllegalArgumentException(i.i("byteCount < 0: ", j7).toString());
            }
            if (!j.areEqual(MultipartReader.this.currentPart, this)) {
                throw new IllegalStateException("closed");
            }
            O timeout = MultipartReader.this.source.timeout();
            O o6 = this.timeout;
            MultipartReader multipartReader = MultipartReader.this;
            long timeoutNanos = timeout.timeoutNanos();
            long minTimeout = O.Companion.minTimeout(o6.timeoutNanos(), timeout.timeoutNanos());
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            timeout.timeout(minTimeout, timeUnit);
            if (!timeout.hasDeadline()) {
                if (o6.hasDeadline()) {
                    timeout.deadlineNanoTime(o6.deadlineNanoTime());
                }
                try {
                    long currentPartBytesRemaining = multipartReader.currentPartBytesRemaining(j7);
                    long read = currentPartBytesRemaining == 0 ? -1L : multipartReader.source.read(sink, currentPartBytesRemaining);
                    timeout.timeout(timeoutNanos, timeUnit);
                    if (o6.hasDeadline()) {
                        timeout.clearDeadline();
                    }
                    return read;
                } catch (Throwable th) {
                    timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                    if (o6.hasDeadline()) {
                        timeout.clearDeadline();
                    }
                    throw th;
                }
            }
            long deadlineNanoTime = timeout.deadlineNanoTime();
            if (o6.hasDeadline()) {
                j8 = 0;
                timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), o6.deadlineNanoTime()));
            } else {
                j8 = 0;
            }
            try {
                long currentPartBytesRemaining2 = multipartReader.currentPartBytesRemaining(j7);
                long read2 = currentPartBytesRemaining2 == j8 ? -1L : multipartReader.source.read(sink, currentPartBytesRemaining2);
                timeout.timeout(timeoutNanos, timeUnit);
                if (o6.hasDeadline()) {
                    timeout.deadlineNanoTime(deadlineNanoTime);
                }
                return read2;
            } catch (Throwable th2) {
                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                if (o6.hasDeadline()) {
                    timeout.deadlineNanoTime(deadlineNanoTime);
                }
                throw th2;
            }
        }

        @Override // e6.L
        public O timeout() {
            return this.timeout;
        }
    }

    static {
        z zVar = A.f13973j;
        C0873o c0873o = ByteString.f19159j;
        afterBoundaryOptions = zVar.of(c0873o.encodeUtf8("\r\n"), c0873o.encodeUtf8("--"), c0873o.encodeUtf8(StringUtils.SPACE), c0873o.encodeUtf8("\t"));
    }

    public MultipartReader(InterfaceC0872n source, String boundary) throws IOException {
        j.checkNotNullParameter(source, "source");
        j.checkNotNullParameter(boundary, "boundary");
        this.source = source;
        this.boundary = boundary;
        this.dashDashBoundary = new C0870l().writeUtf8("--").writeUtf8(boundary).readByteString();
        this.crlfDashDashBoundary = new C0870l().writeUtf8("\r\n--").writeUtf8(boundary).readByteString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long currentPartBytesRemaining(long j7) {
        this.source.require(this.crlfDashDashBoundary.size());
        long indexOf = this.source.getBuffer().indexOf(this.crlfDashDashBoundary);
        return indexOf == -1 ? Math.min(j7, (this.source.getBuffer().size() - this.crlfDashDashBoundary.size()) + 1) : Math.min(j7, indexOf);
    }

    public final String boundary() {
        return this.boundary;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.currentPart = null;
        this.source.close();
    }

    public final Part nextPart() throws IOException {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        if (this.noMoreParts) {
            return null;
        }
        if (this.partCount == 0 && this.source.rangeEquals(0L, this.dashDashBoundary)) {
            this.source.skip(this.dashDashBoundary.size());
        } else {
            while (true) {
                long currentPartBytesRemaining = currentPartBytesRemaining(PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                if (currentPartBytesRemaining == 0) {
                    break;
                }
                this.source.skip(currentPartBytesRemaining);
            }
            this.source.skip(this.crlfDashDashBoundary.size());
        }
        boolean z6 = false;
        while (true) {
            int select = this.source.select(afterBoundaryOptions);
            if (select == -1) {
                throw new ProtocolException("unexpected characters after boundary");
            }
            if (select == 0) {
                this.partCount++;
                Headers readHeaders = new HeadersReader(this.source).readHeaders();
                PartSource partSource = new PartSource();
                this.currentPart = partSource;
                return new Part(readHeaders, w.buffer(partSource));
            }
            if (select == 1) {
                if (z6) {
                    throw new ProtocolException("unexpected characters after boundary");
                }
                if (this.partCount == 0) {
                    throw new ProtocolException("expected at least 1 part");
                }
                this.noMoreParts = true;
                return null;
            }
            if (select == 2 || select == 3) {
                z6 = true;
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MultipartReader(okhttp3.ResponseBody r3) throws java.io.IOException {
        /*
            r2 = this;
            java.lang.String r0 = "response"
            kotlin.jvm.internal.j.checkNotNullParameter(r3, r0)
            e6.n r0 = r3.source()
            okhttp3.MediaType r3 = r3.contentType()
            if (r3 == 0) goto L1b
            java.lang.String r1 = "boundary"
            java.lang.String r3 = r3.parameter(r1)
            if (r3 == 0) goto L1b
            r2.<init>(r0, r3)
            return
        L1b:
            java.net.ProtocolException r3 = new java.net.ProtocolException
            java.lang.String r0 = "expected the Content-Type to have a boundary parameter"
            r3.<init>(r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.MultipartReader.<init>(okhttp3.ResponseBody):void");
    }
}
