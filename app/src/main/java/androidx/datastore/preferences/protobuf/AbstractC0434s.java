package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Logger;

/* renamed from: androidx.datastore.preferences.protobuf.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0434s extends AbstractC0417g {

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f5906b = Logger.getLogger(AbstractC0434s.class.getName());

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f5907c = H0.f5774f;

    /* renamed from: a, reason: collision with root package name */
    public C0435t f5908a;

    public static int a(int i2, InterfaceC0406a0 interfaceC0406a0, InterfaceC0428l0 interfaceC0428l0) {
        return ((AbstractC0407b) interfaceC0406a0).a(interfaceC0428l0) + (computeTagSize(i2) * 2);
    }

    public static int computeBoolSize(int i2, boolean z6) {
        return computeBoolSizeNoTag(z6) + computeTagSize(i2);
    }

    public static int computeBoolSizeNoTag(boolean z6) {
        return 1;
    }

    public static int computeByteArraySizeNoTag(byte[] bArr) {
        int length = bArr.length;
        return computeUInt32SizeNoTag(length) + length;
    }

    public static int computeBytesSize(int i2, ByteString byteString) {
        return computeBytesSizeNoTag(byteString) + computeTagSize(i2);
    }

    public static int computeBytesSizeNoTag(ByteString byteString) {
        int size = byteString.size();
        return computeUInt32SizeNoTag(size) + size;
    }

    public static int computeDoubleSize(int i2, double d7) {
        return computeDoubleSizeNoTag(d7) + computeTagSize(i2);
    }

    public static int computeDoubleSizeNoTag(double d7) {
        return 8;
    }

    public static int computeEnumSize(int i2, int i7) {
        return computeEnumSizeNoTag(i7) + computeTagSize(i2);
    }

    public static int computeEnumSizeNoTag(int i2) {
        return computeInt32SizeNoTag(i2);
    }

    public static int computeFixed32Size(int i2, int i7) {
        return computeFixed32SizeNoTag(i7) + computeTagSize(i2);
    }

    public static int computeFixed32SizeNoTag(int i2) {
        return 4;
    }

    public static int computeFixed64Size(int i2, long j7) {
        return computeFixed64SizeNoTag(j7) + computeTagSize(i2);
    }

    public static int computeFixed64SizeNoTag(long j7) {
        return 8;
    }

    public static int computeFloatSize(int i2, float f3) {
        return computeFloatSizeNoTag(f3) + computeTagSize(i2);
    }

    public static int computeFloatSizeNoTag(float f3) {
        return 4;
    }

    @Deprecated
    public static int computeGroupSizeNoTag(InterfaceC0406a0 interfaceC0406a0) {
        return ((F) interfaceC0406a0).getSerializedSize();
    }

    public static int computeInt32Size(int i2, int i7) {
        return computeInt32SizeNoTag(i7) + computeTagSize(i2);
    }

    public static int computeInt32SizeNoTag(int i2) {
        if (i2 >= 0) {
            return computeUInt32SizeNoTag(i2);
        }
        return 10;
    }

    public static int computeInt64Size(int i2, long j7) {
        return computeInt64SizeNoTag(j7) + computeTagSize(i2);
    }

    public static int computeInt64SizeNoTag(long j7) {
        return computeUInt64SizeNoTag(j7);
    }

    public static int computeMessageSizeNoTag(InterfaceC0406a0 interfaceC0406a0) {
        int serializedSize = ((F) interfaceC0406a0).getSerializedSize();
        return computeUInt32SizeNoTag(serializedSize) + serializedSize;
    }

    public static int computeRawMessageSetExtensionSize(int i2, ByteString byteString) {
        return computeBytesSize(3, byteString) + computeUInt32Size(2, i2) + (computeTagSize(1) * 2);
    }

    public static int computeSFixed32Size(int i2, int i7) {
        return computeSFixed32SizeNoTag(i7) + computeTagSize(i2);
    }

    public static int computeSFixed32SizeNoTag(int i2) {
        return 4;
    }

    public static int computeSFixed64Size(int i2, long j7) {
        return computeSFixed64SizeNoTag(j7) + computeTagSize(i2);
    }

    public static int computeSFixed64SizeNoTag(long j7) {
        return 8;
    }

    public static int computeSInt32Size(int i2, int i7) {
        return computeSInt32SizeNoTag(i7) + computeTagSize(i2);
    }

    public static int computeSInt32SizeNoTag(int i2) {
        return computeUInt32SizeNoTag(encodeZigZag32(i2));
    }

    public static int computeSInt64Size(int i2, long j7) {
        return computeSInt64SizeNoTag(j7) + computeTagSize(i2);
    }

    public static int computeSInt64SizeNoTag(long j7) {
        return computeUInt64SizeNoTag(encodeZigZag64(j7));
    }

    public static int computeStringSize(int i2, String str) {
        return computeStringSizeNoTag(str) + computeTagSize(i2);
    }

    public static int computeStringSizeNoTag(String str) {
        int length;
        try {
            length = J0.b(str);
        } catch (Utf8$UnpairedSurrogateException unused) {
            length = str.getBytes(I.f5777a).length;
        }
        return computeUInt32SizeNoTag(length) + length;
    }

    public static int computeTagSize(int i2) {
        return computeUInt32SizeNoTag(i2 << 3);
    }

    public static int computeUInt32Size(int i2, int i7) {
        return computeUInt32SizeNoTag(i7) + computeTagSize(i2);
    }

    public static int computeUInt32SizeNoTag(int i2) {
        if ((i2 & (-128)) == 0) {
            return 1;
        }
        if ((i2 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i2) == 0) {
            return 3;
        }
        return (i2 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int computeUInt64Size(int i2, long j7) {
        return computeUInt64SizeNoTag(j7) + computeTagSize(i2);
    }

    public static int computeUInt64SizeNoTag(long j7) {
        int i2;
        if (((-128) & j7) == 0) {
            return 1;
        }
        if (j7 < 0) {
            return 10;
        }
        if (((-34359738368L) & j7) != 0) {
            j7 >>>= 28;
            i2 = 6;
        } else {
            i2 = 2;
        }
        if (((-2097152) & j7) != 0) {
            i2 += 2;
            j7 >>>= 14;
        }
        return (j7 & (-16384)) != 0 ? i2 + 1 : i2;
    }

    public static int encodeZigZag32(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    public static long encodeZigZag64(long j7) {
        return (j7 >> 63) ^ (j7 << 1);
    }

    public static AbstractC0434s newInstance(OutputStream outputStream, int i2) {
        return new r(outputStream, i2);
    }

    public abstract void b(int i2, InterfaceC0406a0 interfaceC0406a0, InterfaceC0428l0 interfaceC0428l0);

    public abstract void flush() throws IOException;

    public abstract void write(byte b7) throws IOException;

    public abstract void writeBool(int i2, boolean z6) throws IOException;

    public final void writeBoolNoTag(boolean z6) throws IOException {
        write(z6 ? (byte) 1 : (byte) 0);
    }

    public final void writeByteArrayNoTag(byte[] bArr) throws IOException {
        writeByteArrayNoTag(bArr, 0, bArr.length);
    }

    public abstract void writeByteArrayNoTag(byte[] bArr, int i2, int i7);

    public abstract void writeBytes(int i2, ByteString byteString) throws IOException;

    public abstract void writeBytesNoTag(ByteString byteString) throws IOException;

    public final void writeDouble(int i2, double d7) throws IOException {
        writeFixed64(i2, Double.doubleToRawLongBits(d7));
    }

    public final void writeDoubleNoTag(double d7) throws IOException {
        writeFixed64NoTag(Double.doubleToRawLongBits(d7));
    }

    public final void writeEnum(int i2, int i7) throws IOException {
        writeInt32(i2, i7);
    }

    public final void writeEnumNoTag(int i2) throws IOException {
        writeInt32NoTag(i2);
    }

    public abstract void writeFixed32(int i2, int i7) throws IOException;

    public abstract void writeFixed32NoTag(int i2) throws IOException;

    public abstract void writeFixed64(int i2, long j7) throws IOException;

    public abstract void writeFixed64NoTag(long j7) throws IOException;

    public final void writeFloat(int i2, float f3) throws IOException {
        writeFixed32(i2, Float.floatToRawIntBits(f3));
    }

    public final void writeFloatNoTag(float f3) throws IOException {
        writeFixed32NoTag(Float.floatToRawIntBits(f3));
    }

    @Deprecated
    public final void writeGroup(int i2, InterfaceC0406a0 interfaceC0406a0) throws IOException {
        writeTag(i2, 3);
        writeGroupNoTag(interfaceC0406a0);
        writeTag(i2, 4);
    }

    @Deprecated
    public final void writeGroupNoTag(InterfaceC0406a0 interfaceC0406a0) throws IOException {
        ((F) interfaceC0406a0).writeTo(this);
    }

    public abstract void writeInt32(int i2, int i7) throws IOException;

    public abstract void writeInt32NoTag(int i2) throws IOException;

    public final void writeInt64(int i2, long j7) throws IOException {
        writeUInt64(i2, j7);
    }

    public final void writeInt64NoTag(long j7) throws IOException {
        writeUInt64NoTag(j7);
    }

    public abstract void writeLazy(byte[] bArr, int i2, int i7) throws IOException;

    public abstract void writeMessageNoTag(InterfaceC0406a0 interfaceC0406a0) throws IOException;

    public final void writeSFixed32(int i2, int i7) throws IOException {
        writeFixed32(i2, i7);
    }

    public final void writeSFixed32NoTag(int i2) throws IOException {
        writeFixed32NoTag(i2);
    }

    public final void writeSFixed64(int i2, long j7) throws IOException {
        writeFixed64(i2, j7);
    }

    public final void writeSFixed64NoTag(long j7) throws IOException {
        writeFixed64NoTag(j7);
    }

    public final void writeSInt32(int i2, int i7) throws IOException {
        writeUInt32(i2, encodeZigZag32(i7));
    }

    public final void writeSInt32NoTag(int i2) throws IOException {
        writeUInt32NoTag(encodeZigZag32(i2));
    }

    public final void writeSInt64(int i2, long j7) throws IOException {
        writeUInt64(i2, encodeZigZag64(j7));
    }

    public final void writeSInt64NoTag(long j7) throws IOException {
        writeUInt64NoTag(encodeZigZag64(j7));
    }

    public abstract void writeString(int i2, String str) throws IOException;

    public abstract void writeStringNoTag(String str) throws IOException;

    public abstract void writeTag(int i2, int i7) throws IOException;

    public abstract void writeUInt32(int i2, int i7) throws IOException;

    public abstract void writeUInt32NoTag(int i2) throws IOException;

    public abstract void writeUInt64(int i2, long j7) throws IOException;

    public abstract void writeUInt64NoTag(long j7) throws IOException;
}
