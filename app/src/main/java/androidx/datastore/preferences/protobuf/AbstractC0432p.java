package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.InputStream;

/* renamed from: androidx.datastore.preferences.protobuf.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0432p {

    /* renamed from: a, reason: collision with root package name */
    public int f5893a;

    /* renamed from: b, reason: collision with root package name */
    public C0433q f5894b;

    public static int decodeZigZag32(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    public static long decodeZigZag64(long j7) {
        return (-(j7 & 1)) ^ (j7 >>> 1);
    }

    public static AbstractC0432p newInstance(InputStream inputStream) {
        return newInstance(inputStream, 4096);
    }

    public abstract void checkLastTagWas(int i2) throws InvalidProtocolBufferException;

    public abstract int getTotalBytesRead();

    public abstract boolean isAtEnd() throws IOException;

    public abstract void popLimit(int i2);

    public abstract int pushLimit(int i2) throws InvalidProtocolBufferException;

    public abstract boolean readBool() throws IOException;

    public abstract ByteString readBytes() throws IOException;

    public abstract double readDouble() throws IOException;

    public abstract int readEnum() throws IOException;

    public abstract int readFixed32() throws IOException;

    public abstract long readFixed64() throws IOException;

    public abstract float readFloat() throws IOException;

    public abstract int readInt32() throws IOException;

    public abstract long readInt64() throws IOException;

    public abstract int readSFixed32() throws IOException;

    public abstract long readSFixed64() throws IOException;

    public abstract int readSInt32() throws IOException;

    public abstract long readSInt64() throws IOException;

    public abstract String readString() throws IOException;

    public abstract String readStringRequireUtf8() throws IOException;

    public abstract int readTag() throws IOException;

    public abstract int readUInt32() throws IOException;

    public abstract long readUInt64() throws IOException;

    public abstract boolean skipField(int i2) throws IOException;

    public static AbstractC0432p newInstance(InputStream inputStream, int i2) {
        if (i2 > 0) {
            return inputStream == null ? newInstance(I.f5778b) : new C0431o(inputStream, i2);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    public static AbstractC0432p newInstance(byte[] bArr) {
        return newInstance(bArr, 0, bArr.length);
    }

    public static AbstractC0432p newInstance(byte[] bArr, int i2, int i7) {
        C0430n c0430n = new C0430n(bArr, i2, i7);
        try {
            c0430n.pushLimit(i7);
            return c0430n;
        } catch (InvalidProtocolBufferException e3) {
            throw new IllegalArgumentException(e3);
        }
    }
}
