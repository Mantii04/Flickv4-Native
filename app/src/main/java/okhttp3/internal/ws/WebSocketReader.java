package okhttp3.internal.ws;

import e6.C0867i;
import e6.C0870l;
import e6.InterfaceC0872n;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.j;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Settings;
import okio.ByteString;

/* loaded from: classes2.dex */
public final class WebSocketReader implements Closeable {
    private boolean closed;
    private final C0870l controlFrameBuffer;
    private final FrameCallback frameCallback;
    private long frameLength;
    private final boolean isClient;
    private boolean isControlFrame;
    private boolean isFinalFrame;
    private final C0867i maskCursor;
    private final byte[] maskKey;
    private final C0870l messageFrameBuffer;
    private MessageInflater messageInflater;
    private final boolean noContextTakeover;
    private int opcode;
    private final boolean perMessageDeflate;
    private boolean readingCompressedMessage;
    private final InterfaceC0872n source;

    public interface FrameCallback {
        void onReadClose(int i2, String str);

        void onReadMessage(String str) throws IOException;

        void onReadMessage(ByteString byteString) throws IOException;

        void onReadPing(ByteString byteString);

        void onReadPong(ByteString byteString);
    }

    public WebSocketReader(boolean z6, InterfaceC0872n source, FrameCallback frameCallback, boolean z7, boolean z8) {
        j.checkNotNullParameter(source, "source");
        j.checkNotNullParameter(frameCallback, "frameCallback");
        this.isClient = z6;
        this.source = source;
        this.frameCallback = frameCallback;
        this.perMessageDeflate = z7;
        this.noContextTakeover = z8;
        this.controlFrameBuffer = new C0870l();
        this.messageFrameBuffer = new C0870l();
        this.maskKey = z6 ? null : new byte[4];
        this.maskCursor = z6 ? null : new C0867i();
    }

    private final void readControlFrame() throws IOException {
        short s6;
        String str;
        long j7 = this.frameLength;
        if (j7 > 0) {
            this.source.readFully(this.controlFrameBuffer, j7);
            if (!this.isClient) {
                C0870l c0870l = this.controlFrameBuffer;
                C0867i c0867i = this.maskCursor;
                j.checkNotNull(c0867i);
                c0870l.readAndWriteUnsafe(c0867i);
                this.maskCursor.seek(0L);
                WebSocketProtocol webSocketProtocol = WebSocketProtocol.INSTANCE;
                C0867i c0867i2 = this.maskCursor;
                byte[] bArr = this.maskKey;
                j.checkNotNull(bArr);
                webSocketProtocol.toggleMask(c0867i2, bArr);
                this.maskCursor.close();
            }
        }
        switch (this.opcode) {
            case 8:
                long size = this.controlFrameBuffer.size();
                if (size == 1) {
                    throw new ProtocolException("Malformed close payload length of 1.");
                }
                if (size != 0) {
                    s6 = this.controlFrameBuffer.readShort();
                    str = this.controlFrameBuffer.readUtf8();
                    String closeCodeExceptionMessage = WebSocketProtocol.INSTANCE.closeCodeExceptionMessage(s6);
                    if (closeCodeExceptionMessage != null) {
                        throw new ProtocolException(closeCodeExceptionMessage);
                    }
                } else {
                    s6 = 1005;
                    str = "";
                }
                this.frameCallback.onReadClose(s6, str);
                this.closed = true;
                return;
            case 9:
                this.frameCallback.onReadPing(this.controlFrameBuffer.readByteString());
                return;
            case 10:
                this.frameCallback.onReadPong(this.controlFrameBuffer.readByteString());
                return;
            default:
                throw new ProtocolException("Unknown control opcode: " + Util.toHexString(this.opcode));
        }
    }

    private final void readHeader() throws IOException, ProtocolException {
        boolean z6;
        if (this.closed) {
            throw new IOException("closed");
        }
        long timeoutNanos = this.source.timeout().timeoutNanos();
        this.source.timeout().clearTimeout();
        try {
            int and = Util.and(this.source.readByte(), 255);
            this.source.timeout().timeout(timeoutNanos, TimeUnit.NANOSECONDS);
            int i2 = and & 15;
            this.opcode = i2;
            boolean z7 = (and & 128) != 0;
            this.isFinalFrame = z7;
            boolean z8 = (and & 8) != 0;
            this.isControlFrame = z8;
            if (z8 && !z7) {
                throw new ProtocolException("Control frames must be final.");
            }
            boolean z9 = (and & 64) != 0;
            if (i2 == 1 || i2 == 2) {
                if (!z9) {
                    z6 = false;
                } else {
                    if (!this.perMessageDeflate) {
                        throw new ProtocolException("Unexpected rsv1 flag");
                    }
                    z6 = true;
                }
                this.readingCompressedMessage = z6;
            } else if (z9) {
                throw new ProtocolException("Unexpected rsv1 flag");
            }
            if ((and & 32) != 0) {
                throw new ProtocolException("Unexpected rsv2 flag");
            }
            if ((and & 16) != 0) {
                throw new ProtocolException("Unexpected rsv3 flag");
            }
            int and2 = Util.and(this.source.readByte(), 255);
            boolean z10 = (and2 & 128) != 0;
            if (z10 == this.isClient) {
                throw new ProtocolException(this.isClient ? "Server-sent frames must not be masked." : "Client-sent frames must be masked.");
            }
            long j7 = and2 & 127;
            this.frameLength = j7;
            if (j7 == 126) {
                this.frameLength = Util.and(this.source.readShort(), Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            } else if (j7 == 127) {
                long readLong = this.source.readLong();
                this.frameLength = readLong;
                if (readLong < 0) {
                    throw new ProtocolException("Frame length 0x" + Util.toHexString(this.frameLength) + " > 0x7FFFFFFFFFFFFFFF");
                }
            }
            if (this.isControlFrame && this.frameLength > 125) {
                throw new ProtocolException("Control frame must be less than 125B.");
            }
            if (z10) {
                InterfaceC0872n interfaceC0872n = this.source;
                byte[] bArr = this.maskKey;
                j.checkNotNull(bArr);
                interfaceC0872n.readFully(bArr);
            }
        } catch (Throwable th) {
            this.source.timeout().timeout(timeoutNanos, TimeUnit.NANOSECONDS);
            throw th;
        }
    }

    private final void readMessage() throws IOException {
        while (!this.closed) {
            long j7 = this.frameLength;
            if (j7 > 0) {
                this.source.readFully(this.messageFrameBuffer, j7);
                if (!this.isClient) {
                    C0870l c0870l = this.messageFrameBuffer;
                    C0867i c0867i = this.maskCursor;
                    j.checkNotNull(c0867i);
                    c0870l.readAndWriteUnsafe(c0867i);
                    this.maskCursor.seek(this.messageFrameBuffer.size() - this.frameLength);
                    WebSocketProtocol webSocketProtocol = WebSocketProtocol.INSTANCE;
                    C0867i c0867i2 = this.maskCursor;
                    byte[] bArr = this.maskKey;
                    j.checkNotNull(bArr);
                    webSocketProtocol.toggleMask(c0867i2, bArr);
                    this.maskCursor.close();
                }
            }
            if (this.isFinalFrame) {
                return;
            }
            readUntilNonControlFrame();
            if (this.opcode != 0) {
                throw new ProtocolException("Expected continuation opcode. Got: " + Util.toHexString(this.opcode));
            }
        }
        throw new IOException("closed");
    }

    private final void readMessageFrame() throws IOException {
        int i2 = this.opcode;
        if (i2 != 1 && i2 != 2) {
            throw new ProtocolException("Unknown opcode: " + Util.toHexString(i2));
        }
        readMessage();
        if (this.readingCompressedMessage) {
            MessageInflater messageInflater = this.messageInflater;
            if (messageInflater == null) {
                messageInflater = new MessageInflater(this.noContextTakeover);
                this.messageInflater = messageInflater;
            }
            messageInflater.inflate(this.messageFrameBuffer);
        }
        if (i2 == 1) {
            this.frameCallback.onReadMessage(this.messageFrameBuffer.readUtf8());
        } else {
            this.frameCallback.onReadMessage(this.messageFrameBuffer.readByteString());
        }
    }

    private final void readUntilNonControlFrame() throws IOException {
        while (!this.closed) {
            readHeader();
            if (!this.isControlFrame) {
                return;
            } else {
                readControlFrame();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        MessageInflater messageInflater = this.messageInflater;
        if (messageInflater != null) {
            messageInflater.close();
        }
    }

    public final InterfaceC0872n getSource() {
        return this.source;
    }

    public final void processNextFrame() throws IOException {
        readHeader();
        if (this.isControlFrame) {
            readControlFrame();
        } else {
            readMessageFrame();
        }
    }
}
