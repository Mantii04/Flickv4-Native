package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.ByteString;
import androidx.media3.common.util.Log;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: androidx.datastore.preferences.protobuf.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0430n extends AbstractC0432p {

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f5874c;

    /* renamed from: d, reason: collision with root package name */
    public int f5875d;

    /* renamed from: e, reason: collision with root package name */
    public int f5876e;

    /* renamed from: f, reason: collision with root package name */
    public int f5877f;

    /* renamed from: g, reason: collision with root package name */
    public final int f5878g;

    /* renamed from: h, reason: collision with root package name */
    public int f5879h;

    /* renamed from: i, reason: collision with root package name */
    public int f5880i = Log.LOG_LEVEL_OFF;

    public C0430n(byte[] bArr, int i2, int i7) {
        this.f5874c = bArr;
        this.f5875d = i7 + i2;
        this.f5877f = i2;
        this.f5878g = i2;
    }

    public final long a() {
        long j7 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            j7 |= (r3 & Byte.MAX_VALUE) << i2;
            if ((readRawByte() & 128) == 0) {
                return j7;
            }
        }
        throw InvalidProtocolBufferException.c();
    }

    public final void b() {
        int i2 = this.f5875d + this.f5876e;
        this.f5875d = i2;
        int i7 = i2 - this.f5878g;
        int i8 = this.f5880i;
        if (i7 <= i8) {
            this.f5876e = 0;
            return;
        }
        int i9 = i7 - i8;
        this.f5876e = i9;
        this.f5875d = i2 - i9;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public void checkLastTagWas(int i2) throws InvalidProtocolBufferException {
        if (this.f5879h != i2) {
            throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public int getTotalBytesRead() {
        return this.f5877f - this.f5878g;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public boolean isAtEnd() throws IOException {
        return this.f5877f == this.f5875d;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public void popLimit(int i2) {
        this.f5880i = i2;
        b();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public int pushLimit(int i2) throws InvalidProtocolBufferException {
        if (i2 < 0) {
            throw InvalidProtocolBufferException.d();
        }
        int totalBytesRead = getTotalBytesRead() + i2;
        int i7 = this.f5880i;
        if (totalBytesRead > i7) {
            throw InvalidProtocolBufferException.f();
        }
        this.f5880i = totalBytesRead;
        b();
        return i7;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public boolean readBool() throws IOException {
        return readRawVarint64() != 0;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public ByteString readBytes() throws IOException {
        int readRawVarint32 = readRawVarint32();
        if (readRawVarint32 > 0) {
            int i2 = this.f5875d;
            int i7 = this.f5877f;
            if (readRawVarint32 <= i2 - i7) {
                ByteString copyFrom = ByteString.copyFrom(this.f5874c, i7, readRawVarint32);
                this.f5877f += readRawVarint32;
                return copyFrom;
            }
        }
        if (readRawVarint32 == 0) {
            return ByteString.f5743e;
        }
        byte[] readRawBytes = readRawBytes(readRawVarint32);
        ByteString byteString = ByteString.f5743e;
        return new ByteString.LiteralByteString(readRawBytes);
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
        int i2 = this.f5877f;
        if (i2 == this.f5875d) {
            throw InvalidProtocolBufferException.f();
        }
        this.f5877f = i2 + 1;
        return this.f5874c[i2];
    }

    public byte[] readRawBytes(int i2) throws IOException {
        if (i2 > 0) {
            int i7 = this.f5875d;
            int i8 = this.f5877f;
            if (i2 <= i7 - i8) {
                int i9 = i2 + i8;
                this.f5877f = i9;
                return Arrays.copyOfRange(this.f5874c, i8, i9);
            }
        }
        if (i2 > 0) {
            throw InvalidProtocolBufferException.f();
        }
        if (i2 == 0) {
            return I.f5778b;
        }
        throw InvalidProtocolBufferException.d();
    }

    public int readRawLittleEndian32() throws IOException {
        int i2 = this.f5877f;
        if (this.f5875d - i2 < 4) {
            throw InvalidProtocolBufferException.f();
        }
        this.f5877f = i2 + 4;
        byte[] bArr = this.f5874c;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public long readRawLittleEndian64() throws IOException {
        int i2 = this.f5877f;
        if (this.f5875d - i2 < 8) {
            throw InvalidProtocolBufferException.f();
        }
        this.f5877f = i2 + 8;
        byte[] bArr = this.f5874c;
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    public int readRawVarint32() throws IOException {
        int i2;
        int i7 = this.f5877f;
        int i8 = this.f5875d;
        if (i8 != i7) {
            int i9 = i7 + 1;
            byte[] bArr = this.f5874c;
            byte b7 = bArr[i7];
            if (b7 >= 0) {
                this.f5877f = i9;
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
                this.f5877f = i10;
                return i2;
            }
        }
        return (int) a();
    }

    public long readRawVarint64() throws IOException {
        long j7;
        long j8;
        long j9;
        long j10;
        int i2 = this.f5877f;
        int i7 = this.f5875d;
        if (i7 != i2) {
            int i8 = i2 + 1;
            byte[] bArr = this.f5874c;
            byte b7 = bArr[i2];
            if (b7 >= 0) {
                this.f5877f = i8;
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
                this.f5877f = i9;
                return j7;
            }
        }
        return a();
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
        if (readRawVarint32 > 0) {
            int i2 = this.f5875d;
            int i7 = this.f5877f;
            if (readRawVarint32 <= i2 - i7) {
                String str = new String(this.f5874c, i7, readRawVarint32, I.f5777a);
                this.f5877f += readRawVarint32;
                return str;
            }
        }
        if (readRawVarint32 == 0) {
            return "";
        }
        if (readRawVarint32 < 0) {
            throw InvalidProtocolBufferException.d();
        }
        throw InvalidProtocolBufferException.f();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public String readStringRequireUtf8() throws IOException {
        int readRawVarint32 = readRawVarint32();
        if (readRawVarint32 > 0) {
            int i2 = this.f5875d;
            int i7 = this.f5877f;
            if (readRawVarint32 <= i2 - i7) {
                String e3 = J0.f5783a.e(i7, this.f5874c, readRawVarint32);
                this.f5877f += readRawVarint32;
                return e3;
            }
        }
        if (readRawVarint32 == 0) {
            return "";
        }
        if (readRawVarint32 <= 0) {
            throw InvalidProtocolBufferException.d();
        }
        throw InvalidProtocolBufferException.f();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0432p
    public int readTag() throws IOException {
        if (isAtEnd()) {
            this.f5879h = 0;
            return 0;
        }
        int readRawVarint32 = readRawVarint32();
        this.f5879h = readRawVarint32;
        if (K0.getTagFieldNumber(readRawVarint32) != 0) {
            return this.f5879h;
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
            if (this.f5875d - this.f5877f < 10) {
                while (i7 < 10) {
                    if (readRawByte() < 0) {
                        i7++;
                    }
                }
                throw InvalidProtocolBufferException.c();
            }
            while (i7 < 10) {
                int i8 = this.f5877f;
                this.f5877f = i8 + 1;
                if (this.f5874c[i8] < 0) {
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
        if (i2 >= 0) {
            int i7 = this.f5875d;
            int i8 = this.f5877f;
            if (i2 <= i7 - i8) {
                this.f5877f = i8 + i2;
                return;
            }
        }
        if (i2 >= 0) {
            throw InvalidProtocolBufferException.f();
        }
        throw InvalidProtocolBufferException.d();
    }
}
