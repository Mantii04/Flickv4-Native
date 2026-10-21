package e6;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
import okio.ByteString;

/* renamed from: e6.n, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public interface InterfaceC0872n extends L, ReadableByteChannel {
    boolean exhausted() throws IOException;

    C0870l getBuffer();

    long indexOfElement(ByteString byteString) throws IOException;

    InputStream inputStream();

    InterfaceC0872n peek();

    boolean rangeEquals(long j7, ByteString byteString) throws IOException;

    long readAll(J j7) throws IOException;

    byte readByte() throws IOException;

    byte[] readByteArray() throws IOException;

    byte[] readByteArray(long j7) throws IOException;

    ByteString readByteString() throws IOException;

    ByteString readByteString(long j7) throws IOException;

    long readDecimalLong() throws IOException;

    void readFully(C0870l c0870l, long j7) throws IOException;

    void readFully(byte[] bArr) throws IOException;

    long readHexadecimalUnsignedLong() throws IOException;

    int readInt() throws IOException;

    long readLong() throws IOException;

    short readShort() throws IOException;

    String readString(Charset charset) throws IOException;

    String readUtf8LineStrict() throws IOException;

    String readUtf8LineStrict(long j7) throws IOException;

    boolean request(long j7) throws IOException;

    void require(long j7) throws IOException;

    int select(A a7) throws IOException;

    void skip(long j7) throws IOException;
}
