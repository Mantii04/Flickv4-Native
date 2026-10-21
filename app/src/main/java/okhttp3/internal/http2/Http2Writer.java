package okhttp3.internal.http2;

import A.i;
import androidx.media3.common.util.Log;
import e6.C0870l;
import e6.InterfaceC0871m;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;

/* loaded from: classes2.dex */
public final class Http2Writer implements Closeable {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private boolean closed;
    private final C0870l hpackBuffer;
    private final Hpack.Writer hpackWriter;
    private int maxFrameSize;
    private final InterfaceC0871m sink;

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        private Companion() {
        }
    }

    public Http2Writer(InterfaceC0871m sink, boolean z6) {
        j.checkNotNullParameter(sink, "sink");
        this.sink = sink;
        this.client = z6;
        C0870l c0870l = new C0870l();
        this.hpackBuffer = c0870l;
        this.maxFrameSize = 16384;
        this.hpackWriter = new Hpack.Writer(0, false, c0870l, 3, null);
    }

    private final void writeContinuationFrames(int i2, long j7) throws IOException {
        while (j7 > 0) {
            long min = Math.min(this.maxFrameSize, j7);
            j7 -= min;
            frameHeader(i2, (int) min, 9, j7 == 0 ? 4 : 0);
            this.sink.write(this.hpackBuffer, min);
        }
    }

    public final synchronized void applyAndAckSettings(Settings peerSettings) throws IOException {
        try {
            j.checkNotNullParameter(peerSettings, "peerSettings");
            if (this.closed) {
                throw new IOException("closed");
            }
            this.maxFrameSize = peerSettings.getMaxFrameSize(this.maxFrameSize);
            if (peerSettings.getHeaderTableSize() != -1) {
                this.hpackWriter.resizeHeaderTable(peerSettings.getHeaderTableSize());
            }
            frameHeader(0, 0, 4, 1);
            this.sink.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.closed = true;
        this.sink.close();
    }

    public final synchronized void connectionPreface() throws IOException {
        try {
            if (this.closed) {
                throw new IOException("closed");
            }
            if (this.client) {
                Logger logger2 = logger;
                if (logger2.isLoggable(Level.FINE)) {
                    logger2.fine(Util.format(">> CONNECTION " + Http2.CONNECTION_PREFACE.hex(), new Object[0]));
                }
                this.sink.write(Http2.CONNECTION_PREFACE);
                this.sink.flush();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void data(boolean z6, int i2, C0870l c0870l, int i7) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        dataFrame(i2, z6 ? 1 : 0, c0870l, i7);
    }

    public final void dataFrame(int i2, int i7, C0870l c0870l, int i8) throws IOException {
        frameHeader(i2, i8, 0, i7);
        if (i8 > 0) {
            InterfaceC0871m interfaceC0871m = this.sink;
            j.checkNotNull(c0870l);
            interfaceC0871m.write(c0870l, i8);
        }
    }

    public final synchronized void flush() throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        this.sink.flush();
    }

    public final void frameHeader(int i2, int i7, int i8, int i9) throws IOException {
        int i10;
        int i11;
        int i12;
        int i13;
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            i10 = i2;
            i11 = i7;
            i12 = i8;
            i13 = i9;
            logger2.fine(Http2.INSTANCE.frameLog(false, i10, i11, i12, i13));
        } else {
            i10 = i2;
            i11 = i7;
            i12 = i8;
            i13 = i9;
        }
        if (i11 > this.maxFrameSize) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.maxFrameSize + ": " + i11).toString());
        }
        if ((Integer.MIN_VALUE & i10) != 0) {
            throw new IllegalArgumentException(i.f(i10, "reserved bit set: ").toString());
        }
        Util.writeMedium(this.sink, i11);
        this.sink.writeByte(i12 & 255);
        this.sink.writeByte(i13 & 255);
        this.sink.writeInt(Integer.MAX_VALUE & i10);
    }

    public final Hpack.Writer getHpackWriter() {
        return this.hpackWriter;
    }

    public final synchronized void goAway(int i2, ErrorCode errorCode, byte[] debugData) throws IOException {
        try {
            j.checkNotNullParameter(errorCode, "errorCode");
            j.checkNotNullParameter(debugData, "debugData");
            if (this.closed) {
                throw new IOException("closed");
            }
            if (errorCode.getHttpCode() == -1) {
                throw new IllegalArgumentException("errorCode.httpCode == -1");
            }
            frameHeader(0, debugData.length + 8, 7, 0);
            this.sink.writeInt(i2);
            this.sink.writeInt(errorCode.getHttpCode());
            if (!(debugData.length == 0)) {
                this.sink.write(debugData);
            }
            this.sink.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void headers(boolean z6, int i2, List<Header> headerBlock) throws IOException {
        j.checkNotNullParameter(headerBlock, "headerBlock");
        if (this.closed) {
            throw new IOException("closed");
        }
        this.hpackWriter.writeHeaders(headerBlock);
        long size = this.hpackBuffer.size();
        long min = Math.min(this.maxFrameSize, size);
        int i7 = size == min ? 4 : 0;
        if (z6) {
            i7 |= 1;
        }
        frameHeader(i2, (int) min, 1, i7);
        this.sink.write(this.hpackBuffer, min);
        if (size > min) {
            writeContinuationFrames(i2, size - min);
        }
    }

    public final int maxDataLength() {
        return this.maxFrameSize;
    }

    public final synchronized void ping(boolean z6, int i2, int i7) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        frameHeader(0, 8, 6, z6 ? 1 : 0);
        this.sink.writeInt(i2);
        this.sink.writeInt(i7);
        this.sink.flush();
    }

    public final synchronized void pushPromise(int i2, int i7, List<Header> requestHeaders) throws IOException {
        j.checkNotNullParameter(requestHeaders, "requestHeaders");
        if (this.closed) {
            throw new IOException("closed");
        }
        this.hpackWriter.writeHeaders(requestHeaders);
        long size = this.hpackBuffer.size();
        int min = (int) Math.min(this.maxFrameSize - 4, size);
        long j7 = min;
        frameHeader(i2, min + 4, 5, size == j7 ? 4 : 0);
        this.sink.writeInt(i7 & Log.LOG_LEVEL_OFF);
        this.sink.write(this.hpackBuffer, j7);
        if (size > j7) {
            writeContinuationFrames(i2, size - j7);
        }
    }

    public final synchronized void rstStream(int i2, ErrorCode errorCode) throws IOException {
        j.checkNotNullParameter(errorCode, "errorCode");
        if (this.closed) {
            throw new IOException("closed");
        }
        if (errorCode.getHttpCode() == -1) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        frameHeader(i2, 4, 3, 0);
        this.sink.writeInt(errorCode.getHttpCode());
        this.sink.flush();
    }

    public final synchronized void settings(Settings settings) throws IOException {
        try {
            j.checkNotNullParameter(settings, "settings");
            if (this.closed) {
                throw new IOException("closed");
            }
            int i2 = 0;
            frameHeader(0, settings.size() * 6, 4, 0);
            while (i2 < 10) {
                if (settings.isSet(i2)) {
                    this.sink.writeShort(i2 != 4 ? i2 != 7 ? i2 : 4 : 3);
                    this.sink.writeInt(settings.get(i2));
                }
                i2++;
            }
            this.sink.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void windowUpdate(int i2, long j7) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        if (j7 == 0 || j7 > 2147483647L) {
            throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j7).toString());
        }
        frameHeader(i2, 4, 8, 0);
        this.sink.writeInt((int) j7);
        this.sink.flush();
    }
}
