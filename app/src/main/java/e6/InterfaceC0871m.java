package e6;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;
import okio.ByteString;

/* renamed from: e6.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public interface InterfaceC0871m extends J, WritableByteChannel {
    InterfaceC0871m emit() throws IOException;

    InterfaceC0871m emitCompleteSegments() throws IOException;

    @Override // e6.J, java.io.Flushable
    void flush() throws IOException;

    C0870l getBuffer();

    InterfaceC0871m write(ByteString byteString) throws IOException;

    InterfaceC0871m write(byte[] bArr) throws IOException;

    InterfaceC0871m write(byte[] bArr, int i2, int i7) throws IOException;

    long writeAll(L l7) throws IOException;

    InterfaceC0871m writeByte(int i2) throws IOException;

    InterfaceC0871m writeDecimalLong(long j7) throws IOException;

    InterfaceC0871m writeHexadecimalUnsignedLong(long j7) throws IOException;

    InterfaceC0871m writeInt(int i2) throws IOException;

    InterfaceC0871m writeShort(int i2) throws IOException;

    InterfaceC0871m writeUtf8(String str) throws IOException;

    InterfaceC0871m writeUtf8(String str, int i2, int i7) throws IOException;
}
