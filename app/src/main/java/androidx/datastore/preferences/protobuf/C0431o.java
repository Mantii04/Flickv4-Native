package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.ByteString;
import androidx.media3.common.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: androidx.datastore.preferences.protobuf.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0431o extends AbstractC0432p {

    /* renamed from: c, reason: collision with root package name */
    public final InputStream f5885c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f5886d;

    /* renamed from: e, reason: collision with root package name */
    public int f5887e;

    /* renamed from: f, reason: collision with root package name */
    public int f5888f;

    /* renamed from: g, reason: collision with root package name */
    public int f5889g;

    /* renamed from: h, reason: collision with root package name */
    public int f5890h;

    /* renamed from: i, reason: collision with root package name */
    public int f5891i;

    /* renamed from: j, reason: collision with root package name */
    public int f5892j = Log.LOG_LEVEL_OFF;

    public C0431o(InputStream inputStream, int i2) {
        Charset charset = I.f5777a;
        this.f5885c = inputStream;
        this.f5886d = new byte[i2];
        this.f5887e = 0;
        this.f5889g = 0;
        this.f5891i = 0;
    }

    public final byte[] a(int i2) {
        byte[] b7 = b(i2);
        if (b7 != null) {
            return b7;
        }
        int i7 = this.f5889g;
        int i8 = this.f5887e;
        int i9 = i8 - i7;
        this.f5891i += i8;
        this.f5889g = 0;
        this.f5887e = 0;
        ArrayList c7 = c(i2 - i9);
        byte[] bArr = new byte[i2];
        System.arraycopy(this.f5886d, i7, bArr, 0, i9);
        Iterator it = c7.iterator();
        while (it.hasNext()) {
            byte[] bArr2 = (byte[]) it.next();
            System.arraycopy(bArr2, 0, bArr, i9, bArr2.length);
            i9 += bArr2.length;
        }
        return bArr;
    }

    public final byte[] b(int i2) {
        if (i2 == 0) {
            return I.f5778b;
        }
        if (i2 < 0) {
            throw InvalidProtocolBufferException.d();
        }
        int i7 = this.f5891i;
        int i8 = this.f5889g;
        int i9 = i7 + i8 + i2;
        if (i9 - Log.LOG_LEVEL_OFF > 0) {
            throw new InvalidProtocolBufferException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }
        int i10 = this.f5892j;
        if (i9 > i10) {
            skipRawBytes((i10 - i7) - i8);
            throw InvalidProtocolBufferException.f();
        }
        int i11 = this.f5887e - i8;
        int i12 = i2 - i11;
        InputStream inputStream = this.f5885c;
        if (i12 >= 4096 && i12 > inputStream.available()) {
            return null;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.f5886d, this.f5889g, bArr, 0, i11);
        this.f5891i += this.f5887e;
        this.f5889g = 0;
        this.f5887e = 0;
        while (i11 < i2) {
            int read = inputStream.read(bArr, i11, i2 - i11);
            if (read == -1) {
                throw InvalidProtocolBufferException.f();
            }
            this.f5891i += read;
            i11 += read;
        }
        return bArr;
    }

    public final ArrayList c(int i2) {
        ArrayList arrayList = new ArrayList();
        while (i2 > 0) {
            int min = Math.min(i2, 4096);
            byte[] bArr = new byte[min];
            int i7 = 0;
            while (i7 < min) {
                int read = this.f5885c.read(bArr, i7, min - i7);
                if (read == -1) {
                    throw InvalidProtocolBufferException.f();
                }
                this.f5891i += read;
                i7 += read;
            }
            i2 -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public void checkLastTagWas(int i2) throws InvalidProtocolBufferException {
        if (this.f5890h != i2) {
            throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final long d() {
        long j7 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            j7 |= (r3 & Byte.MAX_VALUE) << i2;
            if ((readRawByte() & 128) == 0) {
                return j7;
            }
        }
        throw InvalidProtocolBufferException.c();
    }

    public final void e() {
        int i2 = this.f5887e + this.f5888f;
        this.f5887e = i2;
        int i7 = this.f5891i + i2;
        int i8 = this.f5892j;
        if (i7 <= i8) {
            this.f5888f = 0;
            return;
        }
        int i9 = i7 - i8;
        this.f5888f = i9;
        this.f5887e = i2 - i9;
    }

    public final void f(int i2) {
        if (g(i2)) {
            return;
        }
        if (i2 <= (Log.LOG_LEVEL_OFF - this.f5891i) - this.f5889g) {
            throw InvalidProtocolBufferException.f();
        }
        throw new InvalidProtocolBufferException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    public final boolean g(int i2) {
        int i7 = this.f5889g;
        int i8 = i7 + i2;
        int i9 = this.f5887e;
        if (i8 <= i9) {
            throw new IllegalStateException(A.i.g(i2, "refillBuffer() called when ", " bytes were already available in buffer"));
        }
        int i10 = this.f5891i;
        if (i2 <= (Log.LOG_LEVEL_OFF - i10) - i7 && i10 + i7 + i2 <= this.f5892j) {
            byte[] bArr = this.f5886d;
            if (i7 > 0) {
                if (i9 > i7) {
                    System.arraycopy(bArr, i7, bArr, 0, i9 - i7);
                }
                this.f5891i += i7;
                this.f5887e -= i7;
                this.f5889g = 0;
            }
            int i11 = this.f5887e;
            int min = Math.min(bArr.length - i11, (Log.LOG_LEVEL_OFF - this.f5891i) - i11);
            InputStream inputStream = this.f5885c;
            int read = inputStream.read(bArr, i11, min);
            if (read == 0 || read < -1 || read > bArr.length) {
                throw new IllegalStateException(inputStream.getClass() + "#read(byte[]) returned invalid result: " + read + "\nThe InputStream implementation is buggy.");
            }
            if (read > 0) {
                this.f5887e += read;
                e();
                if (this.f5887e >= i2) {
                    return true;
                }
                return g(i2);
            }
        }
        return false;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public int getTotalBytesRead() {
        return this.f5891i + this.f5889g;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public boolean isAtEnd() throws IOException {
        return this.f5889g == this.f5887e && !g(1);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public void popLimit(int i2) {
        this.f5892j = i2;
        e();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public int pushLimit(int i2) throws InvalidProtocolBufferException {
        if (i2 < 0) {
            throw InvalidProtocolBufferException.d();
        }
        int i7 = this.f5891i + this.f5889g + i2;
        int i8 = this.f5892j;
        if (i7 > i8) {
            throw InvalidProtocolBufferException.f();
        }
        this.f5892j = i7;
        e();
        return i8;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public boolean readBool() throws IOException {
        return readRawVarint64() != 0;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public ByteString readBytes() throws IOException {
        int readRawVarint32 = readRawVarint32();
        int i2 = this.f5887e;
        int i7 = this.f5889g;
        int i8 = i2 - i7;
        byte[] bArr = this.f5886d;
        if (readRawVarint32 <= i8 && readRawVarint32 > 0) {
            ByteString copyFrom = ByteString.copyFrom(bArr, i7, readRawVarint32);
            this.f5889g += readRawVarint32;
            return copyFrom;
        }
        if (readRawVarint32 == 0) {
            return ByteString.f5743e;
        }
        byte[] b7 = b(readRawVarint32);
        if (b7 != null) {
            return ByteString.copyFrom(b7);
        }
        int i9 = this.f5889g;
        int i10 = this.f5887e;
        int i11 = i10 - i9;
        this.f5891i += i10;
        this.f5889g = 0;
        this.f5887e = 0;
        ArrayList c7 = c(readRawVarint32 - i11);
        byte[] bArr2 = new byte[readRawVarint32];
        System.arraycopy(bArr, i9, bArr2, 0, i11);
        Iterator it = c7.iterator();
        while (it.hasNext()) {
            byte[] bArr3 = (byte[]) it.next();
            System.arraycopy(bArr3, 0, bArr2, i11, bArr3.length);
            i11 += bArr3.length;
        }
        ByteString byteString = ByteString.f5743e;
        return new ByteString.LiteralByteString(bArr2);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readRawLittleEndian64());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public int readEnum() throws IOException {
        return readRawVarint32();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public int readFixed32() throws IOException {
        return readRawLittleEndian32();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public long readFixed64() throws IOException {
        return readRawLittleEndian64();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readRawLittleEndian32());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public int readInt32() throws IOException {
        return readRawVarint32();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public long readInt64() throws IOException {
        return readRawVarint64();
    }

    public byte readRawByte() throws IOException {
        if (this.f5889g == this.f5887e) {
            f(1);
        }
        int i2 = this.f5889g;
        this.f5889g = i2 + 1;
        return this.f5886d[i2];
    }

    public int readRawLittleEndian32() throws IOException {
        int i2 = this.f5889g;
        if (this.f5887e - i2 < 4) {
            f(4);
            i2 = this.f5889g;
        }
        this.f5889g = i2 + 4;
        byte[] bArr = this.f5886d;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public long readRawLittleEndian64() throws IOException {
        int i2 = this.f5889g;
        if (this.f5887e - i2 < 8) {
            f(8);
            i2 = this.f5889g;
        }
        this.f5889g = i2 + 8;
        byte[] bArr = this.f5886d;
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    public int readRawVarint32() throws IOException {
        int i2;
        int i7 = this.f5889g;
        int i8 = this.f5887e;
        if (i8 != i7) {
            int i9 = i7 + 1;
            byte[] bArr = this.f5886d;
            byte b7 = bArr[i7];
            if (b7 >= 0) {
                this.f5889g = i9;
                return b7;
            }
            if (i8 - i9 >= 9) {
                int i10 = i7 + 2;
                int i11 = (bArr[i9] << 7) ^ b7;
                if (i11 < 0) {
                    i2 = i11 ^ (-128);
                } else {
                    int i12 = i7 + 3;
                    int i13 = (bArr[i10] << 14) ^ i11;
                    if (i13 >= 0) {
                        i2 = i13 ^ 16256;
                    } else {
                        int i14 = i7 + 4;
                        int i15 = i13 ^ (bArr[i12] << 21);
                        if (i15 < 0) {
                            i2 = (-2080896) ^ i15;
                        } else {
                            i12 = i7 + 5;
                            byte b8 = bArr[i14];
                            int i16 = (i15 ^ (b8 << 28)) ^ 266354560;
                            if (b8 < 0) {
                                i14 = i7 + 6;
                                if (bArr[i12] < 0) {
                                    i12 = i7 + 7;
                                    if (bArr[i14] < 0) {
                                        i14 = i7 + 8;
                                        if (bArr[i12] < 0) {
                                            i12 = i7 + 9;
                                            if (bArr[i14] < 0) {
                                                int i17 = i7 + 10;
                                                if (bArr[i12] >= 0) {
                                                    i10 = i17;
                                                    i2 = i16;
                                                }
                                            }
                                        }
                                    }
                                }
                                i2 = i16;
                            }
                            i2 = i16;
                        }
                        i10 = i14;
                    }
                    i10 = i12;
                }
                this.f5889g = i10;
                return i2;
            }
        }
        return (int) d();
    }

    public long readRawVarint64() throws IOException {
        long j7;
        long j8;
        long j9;
        long j10;
        int i2 = this.f5889g;
        int i7 = this.f5887e;
        if (i7 != i2) {
            int i8 = i2 + 1;
            byte[] bArr = this.f5886d;
            byte b7 = bArr[i2];
            if (b7 >= 0) {
                this.f5889g = i8;
                return b7;
            }
            if (i7 - i8 >= 9) {
                int i9 = i2 + 2;
                int i10 = (bArr[i8] << 7) ^ b7;
                if (i10 < 0) {
                    j7 = i10 ^ (-128);
                } else {
                    int i11 = i2 + 3;
                    int i12 = (bArr[i9] << 14) ^ i10;
                    if (i12 >= 0) {
                        j7 = i12 ^ 16256;
                        i9 = i11;
                    } else {
                        int i13 = i2 + 4;
                        int i14 = i12 ^ (bArr[i11] << 21);
                        if (i14 < 0) {
                            j10 = (-2080896) ^ i14;
                        } else {
                            long j11 = i14;
                            i9 = i2 + 5;
                            long j12 = j11 ^ (bArr[i13] << 28);
                            if (j12 >= 0) {
                                j9 = 266354560;
                            } else {
                                i13 = i2 + 6;
                                long j13 = j12 ^ (bArr[i9] << 35);
                                if (j13 < 0) {
                                    j8 = -34093383808L;
                                } else {
                                    i9 = i2 + 7;
                                    j12 = j13 ^ (bArr[i13] << 42);
                                    if (j12 >= 0) {
                                        j9 = 4363953127296L;
                                    } else {
                                        i13 = i2 + 8;
                                        j13 = j12 ^ (bArr[i9] << 49);
                                        if (j13 < 0) {
                                            j8 = -558586000294016L;
                                        } else {
                                            i9 = i2 + 9;
                                            long j14 = (j13 ^ (bArr[i13] << 56)) ^ 71499008037633920L;
                                            if (j14 < 0) {
                                                int i15 = i2 + 10;
                                                if (bArr[i9] >= 0) {
                                                    i9 = i15;
                                                }
                                            }
                                            j7 = j14;
                                        }
                                    }
                                }
                                j10 = j8 ^ j13;
                            }
                            j7 = j9 ^ j12;
                        }
                        i9 = i13;
                        j7 = j10;
                    }
                }
                this.f5889g = i9;
                return j7;
            }
        }
        return d();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public int readSFixed32() throws IOException {
        return readRawLittleEndian32();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public long readSFixed64() throws IOException {
        return readRawLittleEndian64();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public int readSInt32() throws IOException {
        return AbstractC0432p.decodeZigZag32(readRawVarint32());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public long readSInt64() throws IOException {
        return AbstractC0432p.decodeZigZag64(readRawVarint64());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public String readString() throws IOException {
        int readRawVarint32 = readRawVarint32();
        byte[] bArr = this.f5886d;
        if (readRawVarint32 > 0) {
            int i2 = this.f5887e;
            int i7 = this.f5889g;
            if (readRawVarint32 <= i2 - i7) {
                String str = new String(bArr, i7, readRawVarint32, I.f5777a);
                this.f5889g += readRawVarint32;
                return str;
            }
        }
        if (readRawVarint32 == 0) {
            return "";
        }
        if (readRawVarint32 > this.f5887e) {
            return new String(a(readRawVarint32), I.f5777a);
        }
        f(readRawVarint32);
        String str2 = new String(bArr, this.f5889g, readRawVarint32, I.f5777a);
        this.f5889g += readRawVarint32;
        return str2;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public String readStringRequireUtf8() throws IOException {
        int readRawVarint32 = readRawVarint32();
        int i2 = this.f5889g;
        int i7 = this.f5887e;
        int i8 = i7 - i2;
        byte[] bArr = this.f5886d;
        if (readRawVarint32 <= i8 && readRawVarint32 > 0) {
            this.f5889g = i2 + readRawVarint32;
        } else {
            if (readRawVarint32 == 0) {
                return "";
            }
            i2 = 0;
            if (readRawVarint32 <= i7) {
                f(readRawVarint32);
                this.f5889g = readRawVarint32;
            } else {
                bArr = a(readRawVarint32);
            }
        }
        return J0.f5783a.e(i2, bArr, readRawVarint32);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public int readTag() throws IOException {
        if (isAtEnd()) {
            this.f5890h = 0;
            return 0;
        }
        int readRawVarint32 = readRawVarint32();
        this.f5890h = readRawVarint32;
        if (K0.getTagFieldNumber(readRawVarint32) != 0) {
            return this.f5890h;
        }
        throw new InvalidProtocolBufferException("Protocol message contained an invalid tag (zero).");
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public int readUInt32() throws IOException {
        return readRawVarint32();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public long readUInt64() throws IOException {
        return readRawVarint64();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public boolean skipField(int i2) throws IOException {
        int tagWireType = K0.getTagWireType(i2);
        int i7 = 0;
        if (tagWireType == 0) {
            if (this.f5887e - this.f5889g < 10) {
                while (i7 < 10) {
                    if (readRawByte() < 0) {
                        i7++;
                    }
                }
                throw InvalidProtocolBufferException.c();
            }
            while (i7 < 10) {
                int i8 = this.f5889g;
                this.f5889g = i8 + 1;
                if (this.f5886d[i8] < 0) {
                    i7++;
                }
            }
            throw InvalidProtocolBufferException.c();
            return true;
        }
        if (tagWireType == 1) {
            skipRawBytes(8);
            return true;
        }
        if (tagWireType == 2) {
            skipRawBytes(readRawVarint32());
            return true;
        }
        if (tagWireType == 3) {
            skipMessage();
            checkLastTagWas((K0.getTagFieldNumber(i2) << 3) | 4);
            return true;
        }
        if (tagWireType == 4) {
            return false;
        }
        if (tagWireType != 5) {
            throw InvalidProtocolBufferException.b();
        }
        skipRawBytes(4);
        return true;
    }

    public void skipMessage() throws IOException {
        int readTag;
        do {
            readTag = readTag();
            if (readTag == 0) {
                return;
            }
        } while (skipField(readTag));
    }

    public void skipRawBytes(int i2) throws IOException {
        int i7 = this.f5887e;
        int i8 = this.f5889g;
        if (i2 <= i7 - i8 && i2 >= 0) {
            this.f5889g = i8 + i2;
            return;
        }
        InputStream inputStream = this.f5885c;
        if (i2 < 0) {
            throw InvalidProtocolBufferException.d();
        }
        int i9 = this.f5891i;
        int i10 = i9 + i8;
        int i11 = i10 + i2;
        int i12 = this.f5892j;
        if (i11 > i12) {
            skipRawBytes((i12 - i9) - i8);
            throw InvalidProtocolBufferException.f();
        }
        this.f5891i = i10;
        int i13 = i7 - i8;
        this.f5887e = 0;
        this.f5889g = 0;
        while (i13 < i2) {
            long j7 = i2 - i13;
            try {
                long skip = inputStream.skip(j7);
                if (skip < 0 || skip > j7) {
                    throw new IllegalStateException(inputStream.getClass() + "#skip returned invalid result: " + skip + "\nThe InputStream implementation is buggy.");
                }
                if (skip == 0) {
                    break;
                } else {
                    i13 += (int) skip;
                }
            } finally {
                this.f5891i += i13;
                e();
            }
        }
        if (i13 >= i2) {
            return;
        }
        int i14 = this.f5887e;
        int i15 = i14 - this.f5889g;
        this.f5889g = i14;
        f(1);
        while (true) {
            int i16 = i2 - i15;
            int i17 = this.f5887e;
            if (i16 <= i17) {
                this.f5889g = i16;
                return;
            } else {
                i15 += i17;
                this.f5889g = i17;
                f(1);
            }
        }
    }
}
