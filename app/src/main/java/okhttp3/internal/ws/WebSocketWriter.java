package okhttp3.internal.ws;

import e6.C0867i;
import e6.C0870l;
import e6.InterfaceC0871m;
import java.io.Closeable;
import java.io.IOException;
import java.util.Random;
import kotlin.jvm.internal.j;
import okio.ByteString;

/* loaded from: classes2.dex */
public final class WebSocketWriter implements Closeable {
    private final boolean isClient;
    private final C0867i maskCursor;
    private final byte[] maskKey;
    private final C0870l messageBuffer;
    private MessageDeflater messageDeflater;
    private final long minimumDeflateSize;
    private final boolean noContextTakeover;
    private final boolean perMessageDeflate;
    private final Random random;
    private final InterfaceC0871m sink;
    private final C0870l sinkBuffer;
    private boolean writerClosed;

    public WebSocketWriter(boolean z6, InterfaceC0871m sink, Random random, boolean z7, boolean z8, long j7) {
        j.checkNotNullParameter(sink, "sink");
        j.checkNotNullParameter(random, "random");
        this.isClient = z6;
        this.sink = sink;
        this.random = random;
        this.perMessageDeflate = z7;
        this.noContextTakeover = z8;
        this.minimumDeflateSize = j7;
        this.messageBuffer = new C0870l();
        this.sinkBuffer = sink.getBuffer();
        this.maskKey = z6 ? new byte[4] : null;
        this.maskCursor = z6 ? new C0867i() : null;
    }

    private final void writeControlFrame(int i2, ByteString byteString) throws IOException {
        if (this.writerClosed) {
            throw new IOException("closed");
        }
        int size = byteString.size();
        if (size > 125) {
            throw new IllegalArgumentException("Payload size must be less than or equal to 125");
        }
        this.sinkBuffer.writeByte(i2 | 128);
        if (this.isClient) {
            this.sinkBuffer.writeByte(size | 128);
            Random random = this.random;
            byte[] bArr = this.maskKey;
            j.checkNotNull(bArr);
            random.nextBytes(bArr);
            this.sinkBuffer.write(this.maskKey);
            if (size > 0) {
                long size2 = this.sinkBuffer.size();
                this.sinkBuffer.write(byteString);
                C0870l c0870l = this.sinkBuffer;
                C0867i c0867i = this.maskCursor;
                j.checkNotNull(c0867i);
                c0870l.readAndWriteUnsafe(c0867i);
                this.maskCursor.seek(size2);
                WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        } else {
            this.sinkBuffer.writeByte(size);
            this.sinkBuffer.write(byteString);
        }
        this.sink.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        MessageDeflater messageDeflater = this.messageDeflater;
        if (messageDeflater != null) {
            messageDeflater.close();
        }
    }

    public final Random getRandom() {
        return this.random;
    }

    public final InterfaceC0871m getSink() {
        return this.sink;
    }

    public final void writeClose(int i2, ByteString byteString) throws IOException {
        ByteString byteString2 = ByteString.f19160m;
        if (i2 != 0 || byteString != null) {
            if (i2 != 0) {
                WebSocketProtocol.INSTANCE.validateCloseCode(i2);
            }
            C0870l c0870l = new C0870l();
            c0870l.writeShort(i2);
            if (byteString != null) {
                c0870l.write(byteString);
            }
            byteString2 = c0870l.readByteString();
        }
        try {
            writeControlFrame(8, byteString2);
        } finally {
            this.writerClosed = true;
        }
    }

    public final void writeMessageFrame(int i2, ByteString data) throws IOException {
        j.checkNotNullParameter(data, "data");
        if (this.writerClosed) {
            throw new IOException("closed");
        }
        this.messageBuffer.write(data);
        int i7 = i2 | 128;
        if (this.perMessageDeflate && data.size() >= this.minimumDeflateSize) {
            MessageDeflater messageDeflater = this.messageDeflater;
            if (messageDeflater == null) {
                messageDeflater = new MessageDeflater(this.noContextTakeover);
                this.messageDeflater = messageDeflater;
            }
            messageDeflater.deflate(this.messageBuffer);
            i7 = i2 | 192;
        }
        long size = this.messageBuffer.size();
        this.sinkBuffer.writeByte(i7);
        int i8 = this.isClient ? 128 : 0;
        if (size <= 125) {
            this.sinkBuffer.writeByte(i8 | ((int) size));
        } else if (size <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            this.sinkBuffer.writeByte(i8 | WebSocketProtocol.PAYLOAD_SHORT);
            this.sinkBuffer.writeShort((int) size);
        } else {
            this.sinkBuffer.writeByte(i8 | 127);
            this.sinkBuffer.writeLong(size);
        }
        if (this.isClient) {
            Random random = this.random;
            byte[] bArr = this.maskKey;
            j.checkNotNull(bArr);
            random.nextBytes(bArr);
            this.sinkBuffer.write(this.maskKey);
            if (size > 0) {
                C0870l c0870l = this.messageBuffer;
                C0867i c0867i = this.maskCursor;
                j.checkNotNull(c0867i);
                c0870l.readAndWriteUnsafe(c0867i);
                this.maskCursor.seek(0L);
                WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        }
        this.sinkBuffer.write(this.messageBuffer, size);
        this.sink.emit();
    }

    public final void writePing(ByteString payload) throws IOException {
        j.checkNotNullParameter(payload, "payload");
        writeControlFrame(9, payload);
    }

    public final void writePong(ByteString payload) throws IOException {
        j.checkNotNullParameter(payload, "payload");
        writeControlFrame(10, payload);
    }
}
