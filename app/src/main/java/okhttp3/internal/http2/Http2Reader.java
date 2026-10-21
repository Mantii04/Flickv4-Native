package okhttp3.internal.http2;

import A.i;
import M5.b;
import androidx.media3.common.util.Log;
import e6.C0870l;
import e6.InterfaceC0872n;
import e6.L;
import e6.O;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import okio.ByteString;

/* loaded from: classes2.dex */
public final class Http2Reader implements Closeable {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger;
    private final boolean client;
    private final ContinuationSource continuation;
    private final Hpack.Reader hpackReader;
    private final InterfaceC0872n source;

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final Logger getLogger() {
            return Http2Reader.logger;
        }

        public final int lengthWithoutPadding(int i2, int i7, int i8) throws IOException {
            if ((i7 & 8) != 0) {
                i2--;
            }
            if (i8 <= i2) {
                return i2 - i8;
            }
            throw new IOException(i.e(i8, i2, "PROTOCOL_ERROR padding ", " > remaining length "));
        }

        private Companion() {
        }
    }

    public static final class ContinuationSource implements L {
        private int flags;
        private int left;
        private int length;
        private int padding;
        private final InterfaceC0872n source;
        private int streamId;

        public ContinuationSource(InterfaceC0872n source) {
            j.checkNotNullParameter(source, "source");
            this.source = source;
        }

        private final void readContinuationHeader() throws IOException {
            int i2 = this.streamId;
            int readMedium = Util.readMedium(this.source);
            this.left = readMedium;
            this.length = readMedium;
            int and = Util.and(this.source.readByte(), 255);
            this.flags = Util.and(this.source.readByte(), 255);
            Companion companion = Http2Reader.Companion;
            if (companion.getLogger().isLoggable(Level.FINE)) {
                companion.getLogger().fine(Http2.INSTANCE.frameLog(true, this.streamId, this.length, and, this.flags));
            }
            int readInt = this.source.readInt() & Log.LOG_LEVEL_OFF;
            this.streamId = readInt;
            if (and == 9) {
                if (readInt != i2) {
                    throw new IOException("TYPE_CONTINUATION streamId changed");
                }
            } else {
                throw new IOException(and + " != TYPE_CONTINUATION");
            }
        }

        @Override // e6.L, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        public final int getFlags() {
            return this.flags;
        }

        public final int getLeft() {
            return this.left;
        }

        public final int getLength() {
            return this.length;
        }

        public final int getPadding() {
            return this.padding;
        }

        public final int getStreamId() {
            return this.streamId;
        }

        @Override // e6.L
        public long read(C0870l sink, long j7) throws IOException {
            j.checkNotNullParameter(sink, "sink");
            while (true) {
                int i2 = this.left;
                if (i2 != 0) {
                    long read = this.source.read(sink, Math.min(j7, i2));
                    if (read == -1) {
                        return -1L;
                    }
                    this.left -= (int) read;
                    return read;
                }
                this.source.skip(this.padding);
                this.padding = 0;
                if ((this.flags & 4) != 0) {
                    return -1L;
                }
                readContinuationHeader();
            }
        }

        public final void setFlags(int i2) {
            this.flags = i2;
        }

        public final void setLeft(int i2) {
            this.left = i2;
        }

        public final void setLength(int i2) {
            this.length = i2;
        }

        public final void setPadding(int i2) {
            this.padding = i2;
        }

        public final void setStreamId(int i2) {
            this.streamId = i2;
        }

        @Override // e6.L
        public O timeout() {
            return this.source.timeout();
        }
    }

    public interface Handler {
        void ackSettings();

        void alternateService(int i2, String str, ByteString byteString, String str2, int i7, long j7);

        void data(boolean z6, int i2, InterfaceC0872n interfaceC0872n, int i7) throws IOException;

        void goAway(int i2, ErrorCode errorCode, ByteString byteString);

        void headers(boolean z6, int i2, int i7, List<Header> list);

        void ping(boolean z6, int i2, int i7);

        void priority(int i2, int i7, int i8, boolean z6);

        void pushPromise(int i2, int i7, List<Header> list) throws IOException;

        void rstStream(int i2, ErrorCode errorCode);

        void settings(boolean z6, Settings settings);

        void windowUpdate(int i2, long j7);
    }

    static {
        Logger logger2 = Logger.getLogger(Http2.class.getName());
        j.checkNotNullExpressionValue(logger2, "getLogger(Http2::class.java.name)");
        logger = logger2;
    }

    public Http2Reader(InterfaceC0872n source, boolean z6) {
        j.checkNotNullParameter(source, "source");
        this.source = source;
        this.client = z6;
        ContinuationSource continuationSource = new ContinuationSource(source);
        this.continuation = continuationSource;
        this.hpackReader = new Hpack.Reader(continuationSource, 4096, 0, 4, null);
    }

    private final void readData(Handler handler, int i2, int i7, int i8) throws IOException {
        if (i8 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
        }
        boolean z6 = (i7 & 1) != 0;
        if ((i7 & 32) != 0) {
            throw new IOException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
        }
        int and = (i7 & 8) != 0 ? Util.and(this.source.readByte(), 255) : 0;
        handler.data(z6, i8, this.source, Companion.lengthWithoutPadding(i2, i7, and));
        this.source.skip(and);
    }

    private final void readGoAway(Handler handler, int i2, int i7, int i8) throws IOException {
        if (i2 < 8) {
            throw new IOException(i.f(i2, "TYPE_GOAWAY length < 8: "));
        }
        if (i8 != 0) {
            throw new IOException("TYPE_GOAWAY streamId != 0");
        }
        int readInt = this.source.readInt();
        int readInt2 = this.source.readInt();
        int i9 = i2 - 8;
        ErrorCode fromHttp2 = ErrorCode.Companion.fromHttp2(readInt2);
        if (fromHttp2 == null) {
            throw new IOException(i.f(readInt2, "TYPE_GOAWAY unexpected error code: "));
        }
        ByteString byteString = ByteString.f19160m;
        if (i9 > 0) {
            byteString = this.source.readByteString(i9);
        }
        handler.goAway(readInt, fromHttp2, byteString);
    }

    private final List<Header> readHeaderBlock(int i2, int i7, int i8, int i9) throws IOException {
        this.continuation.setLeft(i2);
        ContinuationSource continuationSource = this.continuation;
        continuationSource.setLength(continuationSource.getLeft());
        this.continuation.setPadding(i7);
        this.continuation.setFlags(i8);
        this.continuation.setStreamId(i9);
        this.hpackReader.readHeaders();
        return this.hpackReader.getAndResetHeaderList();
    }

    private final void readHeaders(Handler handler, int i2, int i7, int i8) throws IOException {
        if (i8 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
        }
        boolean z6 = (i7 & 1) != 0;
        int and = (i7 & 8) != 0 ? Util.and(this.source.readByte(), 255) : 0;
        if ((i7 & 32) != 0) {
            readPriority(handler, i8);
            i2 -= 5;
        }
        handler.headers(z6, i8, -1, readHeaderBlock(Companion.lengthWithoutPadding(i2, i7, and), and, i7, i8));
    }

    private final void readPing(Handler handler, int i2, int i7, int i8) throws IOException {
        if (i2 != 8) {
            throw new IOException(i.f(i2, "TYPE_PING length != 8: "));
        }
        if (i8 != 0) {
            throw new IOException("TYPE_PING streamId != 0");
        }
        handler.ping((i7 & 1) != 0, this.source.readInt(), this.source.readInt());
    }

    private final void readPriority(Handler handler, int i2, int i7, int i8) throws IOException {
        if (i2 != 5) {
            throw new IOException(i.g(i2, "TYPE_PRIORITY length: ", " != 5"));
        }
        if (i8 == 0) {
            throw new IOException("TYPE_PRIORITY streamId == 0");
        }
        readPriority(handler, i8);
    }

    private final void readPushPromise(Handler handler, int i2, int i7, int i8) throws IOException {
        if (i8 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
        }
        int and = (i7 & 8) != 0 ? Util.and(this.source.readByte(), 255) : 0;
        handler.pushPromise(i8, this.source.readInt() & Log.LOG_LEVEL_OFF, readHeaderBlock(Companion.lengthWithoutPadding(i2 - 4, i7, and), and, i7, i8));
    }

    private final void readRstStream(Handler handler, int i2, int i7, int i8) throws IOException {
        if (i2 != 4) {
            throw new IOException(i.g(i2, "TYPE_RST_STREAM length: ", " != 4"));
        }
        if (i8 == 0) {
            throw new IOException("TYPE_RST_STREAM streamId == 0");
        }
        int readInt = this.source.readInt();
        ErrorCode fromHttp2 = ErrorCode.Companion.fromHttp2(readInt);
        if (fromHttp2 == null) {
            throw new IOException(i.f(readInt, "TYPE_RST_STREAM unexpected error code: "));
        }
        handler.rstStream(i8, fromHttp2);
    }

    private final void readSettings(Handler handler, int i2, int i7, int i8) throws IOException {
        int readInt;
        if (i8 != 0) {
            throw new IOException("TYPE_SETTINGS streamId != 0");
        }
        if ((i7 & 1) != 0) {
            if (i2 != 0) {
                throw new IOException("FRAME_SIZE_ERROR ack frame should be empty!");
            }
            handler.ackSettings();
            return;
        }
        if (i2 % 6 != 0) {
            throw new IOException(i.f(i2, "TYPE_SETTINGS length % 6 != 0: "));
        }
        Settings settings = new Settings();
        b step = M5.g.step(M5.g.until(0, i2), 6);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (true) {
                int and = Util.and(this.source.readShort(), Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                readInt = this.source.readInt();
                if (and != 2) {
                    if (and == 3) {
                        and = 4;
                    } else if (and != 4) {
                        if (and == 5 && (readInt < 16384 || readInt > 16777215)) {
                            break;
                        }
                    } else {
                        if (readInt < 0) {
                            throw new IOException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                        }
                        and = 7;
                    }
                } else if (readInt != 0 && readInt != 1) {
                    throw new IOException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                }
                settings.set(and, readInt);
                if (first == last) {
                    break;
                } else {
                    first += step2;
                }
            }
            throw new IOException(i.f(readInt, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "));
        }
        handler.settings(false, settings);
    }

    private final void readWindowUpdate(Handler handler, int i2, int i7, int i8) throws IOException {
        if (i2 != 4) {
            throw new IOException(i.f(i2, "TYPE_WINDOW_UPDATE length !=4: "));
        }
        long and = Util.and(this.source.readInt(), 2147483647L);
        if (and == 0) {
            throw new IOException("windowSizeIncrement was 0");
        }
        handler.windowUpdate(i8, and);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.source.close();
    }

    public final boolean nextFrame(boolean z6, Handler handler) throws IOException {
        j.checkNotNullParameter(handler, "handler");
        try {
            this.source.require(9L);
            int readMedium = Util.readMedium(this.source);
            if (readMedium > 16384) {
                throw new IOException(i.f(readMedium, "FRAME_SIZE_ERROR: "));
            }
            int and = Util.and(this.source.readByte(), 255);
            int and2 = Util.and(this.source.readByte(), 255);
            int readInt = this.source.readInt() & Log.LOG_LEVEL_OFF;
            Logger logger2 = logger;
            if (logger2.isLoggable(Level.FINE)) {
                logger2.fine(Http2.INSTANCE.frameLog(true, readInt, readMedium, and, and2));
            }
            if (z6 && and != 4) {
                throw new IOException("Expected a SETTINGS frame but was " + Http2.INSTANCE.formattedType$okhttp(and));
            }
            switch (and) {
                case 0:
                    readData(handler, readMedium, and2, readInt);
                    return true;
                case 1:
                    readHeaders(handler, readMedium, and2, readInt);
                    return true;
                case 2:
                    readPriority(handler, readMedium, and2, readInt);
                    return true;
                case 3:
                    readRstStream(handler, readMedium, and2, readInt);
                    return true;
                case 4:
                    readSettings(handler, readMedium, and2, readInt);
                    return true;
                case 5:
                    readPushPromise(handler, readMedium, and2, readInt);
                    return true;
                case 6:
                    readPing(handler, readMedium, and2, readInt);
                    return true;
                case 7:
                    readGoAway(handler, readMedium, and2, readInt);
                    return true;
                case 8:
                    readWindowUpdate(handler, readMedium, and2, readInt);
                    return true;
                default:
                    this.source.skip(readMedium);
                    return true;
            }
        } catch (EOFException unused) {
            return false;
        }
    }

    public final void readConnectionPreface(Handler handler) throws IOException {
        j.checkNotNullParameter(handler, "handler");
        if (this.client) {
            if (!nextFrame(true, handler)) {
                throw new IOException("Required SETTINGS preface not received");
            }
            return;
        }
        InterfaceC0872n interfaceC0872n = this.source;
        ByteString byteString = Http2.CONNECTION_PREFACE;
        ByteString readByteString = interfaceC0872n.readByteString(byteString.size());
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Util.format("<< CONNECTION " + readByteString.hex(), new Object[0]));
        }
        if (j.areEqual(byteString, readByteString)) {
            return;
        }
        throw new IOException("Expected a connection header but was " + readByteString.utf8());
    }

    private final void readPriority(Handler handler, int i2) throws IOException {
        int readInt = this.source.readInt();
        handler.priority(i2, readInt & Log.LOG_LEVEL_OFF, Util.and(this.source.readByte(), 255) + 1, (Integer.MIN_VALUE & readInt) != 0);
    }
}
