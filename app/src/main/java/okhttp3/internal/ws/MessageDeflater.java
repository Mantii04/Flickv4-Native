package okhttp3.internal.ws;

import F5.a;
import e6.C0867i;
import e6.C0870l;
import e6.C0874p;
import e6.J;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Deflater;
import kotlin.jvm.internal.j;
import okio.ByteString;

/* loaded from: classes2.dex */
public final class MessageDeflater implements Closeable {
    private final C0870l deflatedBytes;
    private final Deflater deflater;
    private final C0874p deflaterSink;
    private final boolean noContextTakeover;

    public MessageDeflater(boolean z6) {
        this.noContextTakeover = z6;
        C0870l c0870l = new C0870l();
        this.deflatedBytes = c0870l;
        Deflater deflater = new Deflater(-1, true);
        this.deflater = deflater;
        this.deflaterSink = new C0874p((J) c0870l, deflater);
    }

    private final boolean endsWith(C0870l c0870l, ByteString byteString) {
        return c0870l.rangeEquals(c0870l.size() - byteString.size(), byteString);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.deflaterSink.close();
    }

    public final void deflate(C0870l buffer) throws IOException {
        ByteString byteString;
        j.checkNotNullParameter(buffer, "buffer");
        if (this.deflatedBytes.size() != 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (this.noContextTakeover) {
            this.deflater.reset();
        }
        this.deflaterSink.write(buffer, buffer.size());
        this.deflaterSink.flush();
        C0870l c0870l = this.deflatedBytes;
        byteString = MessageDeflaterKt.EMPTY_DEFLATE_BLOCK;
        if (endsWith(c0870l, byteString)) {
            long size = this.deflatedBytes.size() - 4;
            C0867i readAndWriteUnsafe$default = C0870l.readAndWriteUnsafe$default(this.deflatedBytes, null, 1, null);
            try {
                readAndWriteUnsafe$default.resizeBuffer(size);
                a.closeFinally(readAndWriteUnsafe$default, null);
            } finally {
            }
        } else {
            this.deflatedBytes.writeByte(0);
        }
        C0870l c0870l2 = this.deflatedBytes;
        buffer.write(c0870l2, c0870l2.size());
    }
}
