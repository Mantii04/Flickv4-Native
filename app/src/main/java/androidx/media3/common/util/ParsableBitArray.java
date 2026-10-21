package androidx.media3.common.util;

import P3.v;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

@UnstableApi
/* loaded from: classes.dex */
public final class ParsableBitArray {
    private int bitOffset;
    private int byteLimit;
    private int byteOffset;
    public byte[] data;

    public ParsableBitArray() {
        this.data = Util.EMPTY_BYTE_ARRAY;
    }

    private void assertValidOffset() {
        int i2;
        int i7 = this.byteOffset;
        v.checkState(i7 >= 0 && (i7 < (i2 = this.byteLimit) || (i7 == i2 && this.bitOffset == 0)));
    }

    public int bitsLeft() {
        return ((this.byteLimit - this.byteOffset) * 8) - this.bitOffset;
    }

    public void byteAlign() {
        if (this.bitOffset == 0) {
            return;
        }
        this.bitOffset = 0;
        this.byteOffset++;
        assertValidOffset();
    }

    public int getBytePosition() {
        v.checkState(this.bitOffset == 0);
        return this.byteOffset;
    }

    public int getPosition() {
        return (this.byteOffset * 8) + this.bitOffset;
    }

    public void putInt(int i2, int i7) {
        if (i7 < 32) {
            i2 &= (1 << i7) - 1;
        }
        int min = Math.min(8 - this.bitOffset, i7);
        int i8 = this.bitOffset;
        int i9 = (8 - i8) - min;
        byte[] bArr = this.data;
        int i10 = this.byteOffset;
        byte b7 = (byte) (((65280 >> i8) | ((1 << i9) - 1)) & bArr[i10]);
        bArr[i10] = b7;
        int i11 = i7 - min;
        bArr[i10] = (byte) (b7 | ((i2 >>> i11) << i9));
        int i12 = i10 + 1;
        while (i11 > 8) {
            this.data[i12] = (byte) (i2 >>> (i11 - 8));
            i11 -= 8;
            i12++;
        }
        int i13 = 8 - i11;
        byte[] bArr2 = this.data;
        byte b8 = (byte) (bArr2[i12] & ((1 << i13) - 1));
        bArr2[i12] = b8;
        bArr2[i12] = (byte) (((i2 & ((1 << i11) - 1)) << i13) | b8);
        skipBits(i7);
        assertValidOffset();
    }

    public boolean readBit() {
        boolean z6 = (this.data[this.byteOffset] & (128 >> this.bitOffset)) != 0;
        skipBit();
        return z6;
    }

    public int readBits(int i2) {
        int i7;
        if (i2 == 0) {
            return 0;
        }
        this.bitOffset += i2;
        int i8 = 0;
        while (true) {
            i7 = this.bitOffset;
            if (i7 <= 8) {
                break;
            }
            int i9 = i7 - 8;
            this.bitOffset = i9;
            byte[] bArr = this.data;
            int i10 = this.byteOffset;
            this.byteOffset = i10 + 1;
            i8 |= (bArr[i10] & 255) << i9;
        }
        byte[] bArr2 = this.data;
        int i11 = this.byteOffset;
        int i12 = ((-1) >>> (32 - i2)) & (i8 | ((bArr2[i11] & 255) >> (8 - i7)));
        if (i7 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i11 + 1;
        }
        assertValidOffset();
        return i12;
    }

    public long readBitsToLong(int i2) {
        return i2 <= 32 ? Util.toUnsignedLong(readBits(i2)) : Util.toLong(readBits(i2 - 32), readBits(32));
    }

    public void readBytes(byte[] bArr, int i2, int i7) {
        v.checkState(this.bitOffset == 0);
        System.arraycopy(this.data, this.byteOffset, bArr, i2, i7);
        this.byteOffset += i7;
        assertValidOffset();
    }

    public String readBytesAsString(int i2) {
        return readBytesAsString(i2, StandardCharsets.UTF_8);
    }

    public void reset(byte[] bArr) {
        reset(bArr, bArr.length);
    }

    public void setPosition(int i2) {
        int i7 = i2 / 8;
        this.byteOffset = i7;
        this.bitOffset = i2 - (i7 * 8);
        assertValidOffset();
    }

    public void skipBit() {
        int i2 = this.bitOffset + 1;
        this.bitOffset = i2;
        if (i2 == 8) {
            this.bitOffset = 0;
            this.byteOffset++;
        }
        assertValidOffset();
    }

    public void skipBits(int i2) {
        int i7 = i2 / 8;
        int i8 = this.byteOffset + i7;
        this.byteOffset = i8;
        int i9 = (i2 - (i7 * 8)) + this.bitOffset;
        this.bitOffset = i9;
        if (i9 > 7) {
            this.byteOffset = i8 + 1;
            this.bitOffset = i9 - 8;
        }
        assertValidOffset();
    }

    public void skipBytes(int i2) {
        v.checkState(this.bitOffset == 0);
        this.byteOffset += i2;
        assertValidOffset();
    }

    public String readBytesAsString(int i2, Charset charset) {
        byte[] bArr = new byte[i2];
        readBytes(bArr, 0, i2);
        return new String(bArr, charset);
    }

    public void reset(ParsableByteArray parsableByteArray) {
        reset(parsableByteArray.getData(), parsableByteArray.limit());
        setPosition(parsableByteArray.getPosition() * 8);
    }

    public ParsableBitArray(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public ParsableBitArray(byte[] bArr, int i2) {
        this.data = bArr;
        this.byteLimit = i2;
    }

    public void reset(byte[] bArr, int i2) {
        this.data = bArr;
        this.byteOffset = 0;
        this.bitOffset = 0;
        this.byteLimit = i2;
    }

    public void readBits(byte[] bArr, int i2, int i7) {
        int i8 = (i7 >> 3) + i2;
        while (i2 < i8) {
            byte[] bArr2 = this.data;
            int i9 = this.byteOffset;
            int i10 = i9 + 1;
            this.byteOffset = i10;
            byte b7 = bArr2[i9];
            int i11 = this.bitOffset;
            byte b8 = (byte) (b7 << i11);
            bArr[i2] = b8;
            bArr[i2] = (byte) (((255 & bArr2[i10]) >> (8 - i11)) | b8);
            i2++;
        }
        int i12 = i7 & 7;
        if (i12 == 0) {
            return;
        }
        byte b9 = (byte) (bArr[i8] & (255 >> i12));
        bArr[i8] = b9;
        int i13 = this.bitOffset;
        if (i13 + i12 > 8) {
            byte[] bArr3 = this.data;
            int i14 = this.byteOffset;
            this.byteOffset = i14 + 1;
            bArr[i8] = (byte) (b9 | ((bArr3[i14] & 255) << i13));
            this.bitOffset = i13 - 8;
        }
        int i15 = this.bitOffset + i12;
        this.bitOffset = i15;
        byte[] bArr4 = this.data;
        int i16 = this.byteOffset;
        bArr[i8] = (byte) (((byte) (((255 & bArr4[i16]) >> (8 - i15)) << (8 - i12))) | bArr[i8]);
        if (i15 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i16 + 1;
        }
        assertValidOffset();
    }
}
