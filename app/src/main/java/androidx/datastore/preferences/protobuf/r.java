package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.ByteString;
import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;

/* loaded from: classes.dex */
public final class r extends AbstractC0434s {

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f5899d;

    /* renamed from: e, reason: collision with root package name */
    public final int f5900e;

    /* renamed from: f, reason: collision with root package name */
    public int f5901f;

    /* renamed from: g, reason: collision with root package name */
    public final OutputStream f5902g;

    public r(OutputStream outputStream, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }
        byte[] bArr = new byte[Math.max(i2, 20)];
        this.f5899d = bArr;
        this.f5900e = bArr.length;
        if (outputStream == null) {
            throw new NullPointerException("out");
        }
        this.f5902g = outputStream;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public final void b(int i2, InterfaceC0406a0 interfaceC0406a0, InterfaceC0428l0 interfaceC0428l0) {
        writeTag(i2, 2);
        writeUInt32NoTag(((AbstractC0407b) interfaceC0406a0).a(interfaceC0428l0));
        interfaceC0428l0.writeTo(interfaceC0406a0, this.f5908a);
    }

    public final void c(int i2) {
        int i7 = this.f5901f;
        int i8 = i7 + 1;
        this.f5901f = i8;
        byte[] bArr = this.f5899d;
        bArr[i7] = (byte) (i2 & 255);
        int i9 = i7 + 2;
        this.f5901f = i9;
        bArr[i8] = (byte) ((i2 >> 8) & 255);
        int i10 = i7 + 3;
        this.f5901f = i10;
        bArr[i9] = (byte) ((i2 >> 16) & 255);
        this.f5901f = i7 + 4;
        bArr[i10] = (byte) ((i2 >> 24) & 255);
    }

    public final void d(long j7) {
        int i2 = this.f5901f;
        int i7 = i2 + 1;
        this.f5901f = i7;
        byte[] bArr = this.f5899d;
        bArr[i2] = (byte) (j7 & 255);
        int i8 = i2 + 2;
        this.f5901f = i8;
        bArr[i7] = (byte) ((j7 >> 8) & 255);
        int i9 = i2 + 3;
        this.f5901f = i9;
        bArr[i8] = (byte) ((j7 >> 16) & 255);
        int i10 = i2 + 4;
        this.f5901f = i10;
        bArr[i9] = (byte) (255 & (j7 >> 24));
        int i11 = i2 + 5;
        this.f5901f = i11;
        bArr[i10] = (byte) (((int) (j7 >> 32)) & 255);
        int i12 = i2 + 6;
        this.f5901f = i12;
        bArr[i11] = (byte) (((int) (j7 >> 40)) & 255);
        int i13 = i2 + 7;
        this.f5901f = i13;
        bArr[i12] = (byte) (((int) (j7 >> 48)) & 255);
        this.f5901f = i2 + 8;
        bArr[i13] = (byte) (((int) (j7 >> 56)) & 255);
    }

    public final void e(int i2, int i7) {
        f((i2 << 3) | i7);
    }

    public final void f(int i2) {
        boolean z6 = AbstractC0434s.f5907c;
        byte[] bArr = this.f5899d;
        if (z6) {
            while ((i2 & (-128)) != 0) {
                int i7 = this.f5901f;
                this.f5901f = i7 + 1;
                H0.j(bArr, i7, (byte) ((i2 & 127) | 128));
                i2 >>>= 7;
            }
            int i8 = this.f5901f;
            this.f5901f = i8 + 1;
            H0.j(bArr, i8, (byte) i2);
            return;
        }
        while ((i2 & (-128)) != 0) {
            int i9 = this.f5901f;
            this.f5901f = i9 + 1;
            bArr[i9] = (byte) ((i2 & 127) | 128);
            i2 >>>= 7;
        }
        int i10 = this.f5901f;
        this.f5901f = i10 + 1;
        bArr[i10] = (byte) i2;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void flush() throws IOException {
        if (this.f5901f > 0) {
            h();
        }
    }

    public final void g(long j7) {
        boolean z6 = AbstractC0434s.f5907c;
        byte[] bArr = this.f5899d;
        if (z6) {
            while ((j7 & (-128)) != 0) {
                int i2 = this.f5901f;
                this.f5901f = i2 + 1;
                H0.j(bArr, i2, (byte) ((((int) j7) & 127) | 128));
                j7 >>>= 7;
            }
            int i7 = this.f5901f;
            this.f5901f = i7 + 1;
            H0.j(bArr, i7, (byte) j7);
            return;
        }
        while ((j7 & (-128)) != 0) {
            int i8 = this.f5901f;
            this.f5901f = i8 + 1;
            bArr[i8] = (byte) ((((int) j7) & 127) | 128);
            j7 >>>= 7;
        }
        int i9 = this.f5901f;
        this.f5901f = i9 + 1;
        bArr[i9] = (byte) j7;
    }

    public final void h() {
        this.f5902g.write(this.f5899d, 0, this.f5901f);
        this.f5901f = 0;
    }

    public final void i(int i2) {
        if (this.f5900e - this.f5901f < i2) {
            h();
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void write(byte b7) throws IOException {
        if (this.f5901f == this.f5900e) {
            h();
        }
        int i2 = this.f5901f;
        this.f5901f = i2 + 1;
        this.f5899d[i2] = b7;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeBool(int i2, boolean z6) throws IOException {
        i(11);
        e(i2, 0);
        byte b7 = z6 ? (byte) 1 : (byte) 0;
        int i7 = this.f5901f;
        this.f5901f = i7 + 1;
        this.f5899d[i7] = b7;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeByteArrayNoTag(byte[] bArr, int i2, int i7) throws IOException {
        writeUInt32NoTag(i7);
        write(bArr, i2, i7);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeBytes(int i2, ByteString byteString) throws IOException {
        writeTag(i2, 2);
        writeBytesNoTag(byteString);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeBytesNoTag(ByteString byteString) throws IOException {
        writeUInt32NoTag(byteString.size());
        ByteString.LiteralByteString literalByteString = (ByteString.LiteralByteString) byteString;
        writeLazy(literalByteString.f5746j, literalByteString.getOffsetIntoBytes(), literalByteString.size());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeFixed32(int i2, int i7) throws IOException {
        i(14);
        e(i2, 5);
        c(i7);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeFixed32NoTag(int i2) throws IOException {
        i(4);
        c(i2);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeFixed64(int i2, long j7) throws IOException {
        i(18);
        e(i2, 1);
        d(j7);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeFixed64NoTag(long j7) throws IOException {
        i(8);
        d(j7);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeInt32(int i2, int i7) throws IOException {
        i(20);
        e(i2, 0);
        if (i7 >= 0) {
            f(i7);
        } else {
            g(i7);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeInt32NoTag(int i2) throws IOException {
        if (i2 >= 0) {
            writeUInt32NoTag(i2);
        } else {
            writeUInt64NoTag(i2);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeLazy(byte[] bArr, int i2, int i7) throws IOException {
        write(bArr, i2, i7);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeMessageNoTag(InterfaceC0406a0 interfaceC0406a0) throws IOException {
        F f3 = (F) interfaceC0406a0;
        writeUInt32NoTag(f3.getSerializedSize());
        f3.writeTo(this);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeString(int i2, String str) throws IOException {
        writeTag(i2, 2);
        writeStringNoTag(str);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeStringNoTag(String str) throws IOException {
        try {
            int length = str.length() * 3;
            int computeUInt32SizeNoTag = AbstractC0434s.computeUInt32SizeNoTag(length);
            int i2 = computeUInt32SizeNoTag + length;
            int i7 = this.f5900e;
            if (i2 > i7) {
                byte[] bArr = new byte[length];
                int f3 = J0.f5783a.f(str, bArr, 0, length);
                writeUInt32NoTag(f3);
                writeLazy(bArr, 0, f3);
                return;
            }
            if (i2 > i7 - this.f5901f) {
                h();
            }
            int computeUInt32SizeNoTag2 = AbstractC0434s.computeUInt32SizeNoTag(str.length());
            int i8 = this.f5901f;
            byte[] bArr2 = this.f5899d;
            try {
                try {
                    if (computeUInt32SizeNoTag2 == computeUInt32SizeNoTag) {
                        int i9 = i8 + computeUInt32SizeNoTag2;
                        this.f5901f = i9;
                        int f7 = J0.f5783a.f(str, bArr2, i9, i7 - i9);
                        this.f5901f = i8;
                        f((f7 - i8) - computeUInt32SizeNoTag2);
                        this.f5901f = f7;
                    } else {
                        int b7 = J0.b(str);
                        f(b7);
                        this.f5901f = J0.f5783a.f(str, bArr2, this.f5901f, b7);
                    }
                } catch (Utf8$UnpairedSurrogateException e3) {
                    this.f5901f = i8;
                    throw e3;
                }
            } catch (ArrayIndexOutOfBoundsException e7) {
                throw new CodedOutputStream$OutOfSpaceException(e7);
            }
        } catch (Utf8$UnpairedSurrogateException e8) {
            AbstractC0434s.f5906b.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e8);
            byte[] bytes = str.getBytes(I.f5777a);
            try {
                writeUInt32NoTag(bytes.length);
                writeLazy(bytes, 0, bytes.length);
            } catch (CodedOutputStream$OutOfSpaceException e9) {
                throw e9;
            } catch (IndexOutOfBoundsException e10) {
                throw new CodedOutputStream$OutOfSpaceException(e10);
            }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeTag(int i2, int i7) throws IOException {
        writeUInt32NoTag((i2 << 3) | i7);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeUInt32(int i2, int i7) throws IOException {
        i(20);
        e(i2, 0);
        f(i7);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeUInt32NoTag(int i2) throws IOException {
        i(5);
        f(i2);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeUInt64(int i2, long j7) throws IOException {
        i(20);
        e(i2, 0);
        g(j7);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0434s
    public void writeUInt64NoTag(long j7) throws IOException {
        i(10);
        g(j7);
    }

    public void write(byte[] bArr, int i2, int i7) throws IOException {
        int i8 = this.f5901f;
        int i9 = this.f5900e;
        int i10 = i9 - i8;
        byte[] bArr2 = this.f5899d;
        if (i10 >= i7) {
            System.arraycopy(bArr, i2, bArr2, i8, i7);
            this.f5901f += i7;
            return;
        }
        System.arraycopy(bArr, i2, bArr2, i8, i10);
        int i11 = i2 + i10;
        int i12 = i7 - i10;
        this.f5901f = i9;
        h();
        if (i12 <= i9) {
            System.arraycopy(bArr, i11, bArr2, 0, i12);
            this.f5901f = i12;
        } else {
            this.f5902g.write(bArr, i11, i12);
        }
    }
}
