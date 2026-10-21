package androidx.media3.common.util;

import P3.v;
import com.google.common.collect.ImmutableSet;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

@UnstableApi
/* loaded from: classes.dex */
public final class ParsableByteArray {
    public static final int INVALID_CODE_POINT = 1114112;
    private byte[] data;
    private int limit;
    private int position;
    private static final char[] CR_AND_LF = {'\r', '\n'};
    private static final char[] LF = {'\n'};
    private static final ImmutableSet<Charset> SUPPORTED_CHARSETS_FOR_READLINE = ImmutableSet.of(StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE);
    private static final AtomicBoolean shouldEnforceLimitOnLegacyMethods = new AtomicBoolean();

    public ParsableByteArray() {
        this.data = Util.EMPTY_BYTE_ARRAY;
    }

    private static int decodeUtf8CodeUnit(int i2, int i7, int i8, int i9) {
        byte b7 = (byte) i8;
        return com.google.common.primitives.a.fromBytes((byte) 0, U3.g.checkedCast(((i2 & 7) << 2) | ((i7 & 48) >> 4)), U3.g.checkedCast(((((byte) i7) & 15) << 4) | ((b7 & 60) >> 2)), U3.g.checkedCast(((b7 & 3) << 6) | (((byte) i9) & 63)));
    }

    private int findNextLineTerminator(Charset charset) {
        int i2;
        if (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) {
            i2 = 1;
        } else {
            if (!charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16LE) && !charset.equals(StandardCharsets.UTF_16BE)) {
                throw new IllegalArgumentException("Unsupported charset: " + charset);
            }
            i2 = 2;
        }
        int i7 = this.position;
        while (true) {
            int i8 = this.limit;
            if (i7 >= i8 - (i2 - 1)) {
                return i8;
            }
            if ((charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) && Util.isLinebreak(this.data[i7])) {
                break;
            }
            if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
                byte[] bArr = this.data;
                if (bArr[i7] == 0 && Util.isLinebreak(bArr[i7 + 1])) {
                    break;
                }
            }
            if (charset.equals(StandardCharsets.UTF_16LE)) {
                byte[] bArr2 = this.data;
                if (bArr2[i7 + 1] == 0 && Util.isLinebreak(bArr2[i7])) {
                    break;
                }
            }
            i7 += i2;
        }
        return i7;
    }

    private static int getSmallestCodeUnitSize(Charset charset) {
        v.checkArgument(SUPPORTED_CHARSETS_FOR_READLINE.contains(charset), "Unsupported charset: %s", charset);
        return (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) ? 1 : 2;
    }

    private static boolean isUtf8ContinuationByte(byte b7) {
        return (b7 & 192) == 128;
    }

    private void maybeAssertAtLeastBytesLeftForLegacyMethod(int i2) {
        if (!shouldEnforceLimitOnLegacyMethods.get() || bytesLeft() >= i2) {
            return;
        }
        StringBuilder q6 = A.i.q(i2, "bytesNeeded= ", ", bytesLeft=");
        q6.append(bytesLeft());
        throw new IndexOutOfBoundsException(q6.toString());
    }

    private int peekCodePointAndSize(Charset charset) {
        int i2;
        int i7;
        v.checkArgument(SUPPORTED_CHARSETS_FOR_READLINE.contains(charset), "Unsupported charset: %s", charset);
        if (bytesLeft() < getSmallestCodeUnitSize(charset)) {
            throw new IndexOutOfBoundsException("position=" + this.position + ", limit=" + this.limit);
        }
        byte b7 = 1;
        if (charset.equals(StandardCharsets.US_ASCII)) {
            byte b8 = this.data[this.position];
            if ((b8 & 128) != 0) {
                return 0;
            }
            i2 = U3.g.toInt(b8);
        } else if (charset.equals(StandardCharsets.UTF_8)) {
            byte peekUtf8CodeUnitSize = peekUtf8CodeUnitSize();
            if (peekUtf8CodeUnitSize == 1) {
                i7 = U3.g.toInt(this.data[this.position]);
            } else if (peekUtf8CodeUnitSize == 2) {
                byte[] bArr = this.data;
                int i8 = this.position;
                i7 = decodeUtf8CodeUnit(0, 0, bArr[i8], bArr[i8 + 1]);
            } else if (peekUtf8CodeUnitSize == 3) {
                byte[] bArr2 = this.data;
                int i9 = this.position;
                i7 = decodeUtf8CodeUnit(0, bArr2[i9] & 15, bArr2[i9 + 1], bArr2[i9 + 2]);
            } else {
                if (peekUtf8CodeUnitSize != 4) {
                    return 0;
                }
                byte[] bArr3 = this.data;
                int i10 = this.position;
                i7 = decodeUtf8CodeUnit(bArr3[i10], bArr3[i10 + 1], bArr3[i10 + 2], bArr3[i10 + 3]);
            }
            b7 = peekUtf8CodeUnitSize;
            i2 = i7;
        } else {
            ByteOrder byteOrder = charset.equals(StandardCharsets.UTF_16LE) ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
            char peekChar = peekChar(byteOrder, 0);
            if (!Character.isHighSurrogate(peekChar) || bytesLeft() < 4) {
                i2 = peekChar;
                b7 = 2;
            } else {
                i2 = Character.toCodePoint(peekChar, peekChar(byteOrder, 2));
                b7 = 4;
            }
        }
        return (i2 << 8) | b7;
    }

    private byte peekUtf8CodeUnitSize() {
        byte b7 = this.data[this.position];
        if ((b7 & 128) == 0) {
            return (byte) 1;
        }
        if ((b7 & 224) == 192 && bytesLeft() >= 2 && isUtf8ContinuationByte(this.data[this.position + 1])) {
            return (byte) 2;
        }
        if ((this.data[this.position] & 240) == 224 && bytesLeft() >= 3 && isUtf8ContinuationByte(this.data[this.position + 1]) && isUtf8ContinuationByte(this.data[this.position + 2])) {
            return (byte) 3;
        }
        return ((this.data[this.position] & 248) == 240 && bytesLeft() >= 4 && isUtf8ContinuationByte(this.data[this.position + 1]) && isUtf8ContinuationByte(this.data[this.position + 2]) && isUtf8ContinuationByte(this.data[this.position + 3])) ? (byte) 4 : (byte) 0;
    }

    private char readCharacterIfInList(Charset charset, char[] cArr) {
        int peekCodePointAndSize;
        if (bytesLeft() < getSmallestCodeUnitSize(charset) || (peekCodePointAndSize = peekCodePointAndSize(charset)) == 0) {
            return (char) 0;
        }
        int checkedCast = U3.h.checkedCast(peekCodePointAndSize >>> 8);
        if (Character.isSupplementaryCodePoint(checkedCast)) {
            return (char) 0;
        }
        char checkedCast2 = U3.c.checkedCast(checkedCast);
        if (!U3.c.contains(cArr, checkedCast2)) {
            return (char) 0;
        }
        this.position = com.google.common.primitives.a.checkedCast(peekCodePointAndSize & 255) + this.position;
        return checkedCast2;
    }

    public static void setShouldEnforceLimitOnLegacyMethods(boolean z6) {
        shouldEnforceLimitOnLegacyMethods.set(z6);
    }

    private void skipLineTerminator(Charset charset) {
        if (readCharacterIfInList(charset, CR_AND_LF) == '\r') {
            readCharacterIfInList(charset, LF);
        }
    }

    public int bytesLeft() {
        return Math.max(this.limit - this.position, 0);
    }

    public int capacity() {
        return this.data.length;
    }

    public void ensureCapacity(int i2) {
        if (i2 > capacity()) {
            this.data = Arrays.copyOf(this.data, i2);
        }
    }

    public byte[] getData() {
        return this.data;
    }

    public int getPosition() {
        return this.position;
    }

    public int limit() {
        return this.limit;
    }

    public char peekChar() {
        return peekChar(ByteOrder.BIG_ENDIAN, 0);
    }

    public int peekCodePoint(Charset charset) {
        return peekCodePointAndSize(charset) != 0 ? com.google.common.primitives.a.checkedCast(r3 >>> 8) : INVALID_CODE_POINT;
    }

    public int peekInt() {
        if (bytesLeft() >= 4) {
            int readInt = readInt();
            this.position -= 4;
            return readInt;
        }
        throw new IndexOutOfBoundsException("position=" + this.position + ", limit=" + this.limit);
    }

    public int peekUnsignedByte() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(1);
        return this.data[this.position] & 255;
    }

    public int peekUnsignedInt24() {
        if (bytesLeft() >= 3) {
            int readUnsignedInt24 = readUnsignedInt24();
            this.position -= 3;
            return readUnsignedInt24;
        }
        throw new IndexOutOfBoundsException("position=" + this.position + ", limit=" + this.limit);
    }

    public void readBytes(ParsableBitArray parsableBitArray, int i2) {
        readBytes(parsableBitArray.data, 0, i2);
        parsableBitArray.setPosition(0);
    }

    public String readDelimiterTerminatedString(char c7) {
        if (bytesLeft() == 0) {
            return null;
        }
        int i2 = this.position;
        while (i2 < this.limit && this.data[i2] != c7) {
            i2++;
        }
        byte[] bArr = this.data;
        int i7 = this.position;
        String fromUtf8Bytes = Util.fromUtf8Bytes(bArr, i7, i2 - i7);
        this.position = i2;
        if (i2 < this.limit) {
            this.position = i2 + 1;
        }
        return fromUtf8Bytes;
    }

    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    public int readInt() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(4);
        byte[] bArr = this.data;
        int i2 = this.position;
        int i7 = i2 + 1;
        this.position = i7;
        int i8 = (bArr[i2] & 255) << 24;
        int i9 = i2 + 2;
        this.position = i9;
        int i10 = ((bArr[i7] & 255) << 16) | i8;
        int i11 = i2 + 3;
        this.position = i11;
        int i12 = i10 | ((bArr[i9] & 255) << 8);
        this.position = i2 + 4;
        return (bArr[i11] & 255) | i12;
    }

    public int readInt24() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(3);
        byte[] bArr = this.data;
        int i2 = this.position;
        int i7 = i2 + 1;
        this.position = i7;
        int i8 = ((bArr[i2] & 255) << 24) >> 8;
        int i9 = i2 + 2;
        this.position = i9;
        int i10 = ((bArr[i7] & 255) << 8) | i8;
        this.position = i2 + 3;
        return (bArr[i9] & 255) | i10;
    }

    public String readLine() {
        return readLine(StandardCharsets.UTF_8);
    }

    public int readLittleEndianInt() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(4);
        byte[] bArr = this.data;
        int i2 = this.position;
        int i7 = i2 + 1;
        this.position = i7;
        int i8 = bArr[i2] & 255;
        int i9 = i2 + 2;
        this.position = i9;
        int i10 = ((bArr[i7] & 255) << 8) | i8;
        int i11 = i2 + 3;
        this.position = i11;
        int i12 = i10 | ((bArr[i9] & 255) << 16);
        this.position = i2 + 4;
        return ((bArr[i11] & 255) << 24) | i12;
    }

    public int readLittleEndianInt24() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(3);
        byte[] bArr = this.data;
        int i2 = this.position;
        int i7 = i2 + 1;
        this.position = i7;
        int i8 = bArr[i2] & 255;
        int i9 = i2 + 2;
        this.position = i9;
        int i10 = ((bArr[i7] & 255) << 8) | i8;
        this.position = i2 + 3;
        return ((bArr[i9] & 255) << 16) | i10;
    }

    public long readLittleEndianLong() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(8);
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        this.position = i2 + 2;
        long j7 = (bArr[i2] & 255) | ((bArr[r3] & 255) << 8);
        this.position = i2 + 3;
        long j8 = j7 | ((bArr[r8] & 255) << 16);
        this.position = i2 + 4;
        long j9 = j8 | ((bArr[r3] & 255) << 24);
        this.position = i2 + 5;
        long j10 = j9 | ((bArr[r8] & 255) << 32);
        this.position = i2 + 6;
        long j11 = j10 | ((bArr[r3] & 255) << 40);
        this.position = i2 + 7;
        long j12 = j11 | ((bArr[r8] & 255) << 48);
        this.position = i2 + 8;
        return ((bArr[r3] & 255) << 56) | j12;
    }

    public short readLittleEndianShort() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(2);
        byte[] bArr = this.data;
        int i2 = this.position;
        int i7 = i2 + 1;
        this.position = i7;
        int i8 = bArr[i2] & 255;
        this.position = i2 + 2;
        return (short) (((bArr[i7] & 255) << 8) | i8);
    }

    public long readLittleEndianUnsignedInt() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(4);
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        this.position = i2 + 2;
        long j7 = (bArr[i2] & 255) | ((bArr[r3] & 255) << 8);
        this.position = i2 + 3;
        long j8 = j7 | ((bArr[r8] & 255) << 16);
        this.position = i2 + 4;
        return ((bArr[r3] & 255) << 24) | j8;
    }

    public int readLittleEndianUnsignedInt24() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(3);
        byte[] bArr = this.data;
        int i2 = this.position;
        int i7 = i2 + 1;
        this.position = i7;
        int i8 = bArr[i2] & 255;
        int i9 = i2 + 2;
        this.position = i9;
        int i10 = ((bArr[i7] & 255) << 8) | i8;
        this.position = i2 + 3;
        return ((bArr[i9] & 255) << 16) | i10;
    }

    public int readLittleEndianUnsignedIntToInt() {
        int readLittleEndianInt = readLittleEndianInt();
        if (readLittleEndianInt >= 0) {
            return readLittleEndianInt;
        }
        throw new IllegalStateException(A.i.f(readLittleEndianInt, "Top bit not zero: "));
    }

    public int readLittleEndianUnsignedShort() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(2);
        byte[] bArr = this.data;
        int i2 = this.position;
        int i7 = i2 + 1;
        this.position = i7;
        int i8 = bArr[i2] & 255;
        this.position = i2 + 2;
        return ((bArr[i7] & 255) << 8) | i8;
    }

    public long readLong() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(8);
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        this.position = i2 + 2;
        long j7 = ((bArr[i2] & 255) << 56) | ((bArr[r3] & 255) << 48);
        this.position = i2 + 3;
        long j8 = j7 | ((bArr[r8] & 255) << 40);
        this.position = i2 + 4;
        long j9 = j8 | ((bArr[r3] & 255) << 32);
        this.position = i2 + 5;
        long j10 = j9 | ((bArr[r8] & 255) << 24);
        this.position = i2 + 6;
        long j11 = j10 | ((bArr[r3] & 255) << 16);
        this.position = i2 + 7;
        long j12 = j11 | ((bArr[r8] & 255) << 8);
        this.position = i2 + 8;
        return (bArr[r3] & 255) | j12;
    }

    public String readNullTerminatedString(int i2) {
        maybeAssertAtLeastBytesLeftForLegacyMethod(i2);
        if (i2 == 0) {
            return "";
        }
        int i7 = this.position;
        int i8 = (i7 + i2) - 1;
        String fromUtf8Bytes = Util.fromUtf8Bytes(this.data, i7, (i8 >= this.limit || this.data[i8] != 0) ? i2 : i2 - 1);
        this.position += i2;
        return fromUtf8Bytes;
    }

    public short readShort() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(2);
        byte[] bArr = this.data;
        int i2 = this.position;
        int i7 = i2 + 1;
        this.position = i7;
        int i8 = (bArr[i2] & 255) << 8;
        this.position = i2 + 2;
        return (short) ((bArr[i7] & 255) | i8);
    }

    public String readString(int i2) {
        return readString(i2, StandardCharsets.UTF_8);
    }

    public int readSynchSafeInt() {
        return (readUnsignedByte() << 21) | (readUnsignedByte() << 14) | (readUnsignedByte() << 7) | readUnsignedByte();
    }

    public int readUnsignedByte() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(1);
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        return bArr[i2] & 255;
    }

    public int readUnsignedFixedPoint1616() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(4);
        byte[] bArr = this.data;
        int i2 = this.position;
        int i7 = i2 + 1;
        this.position = i7;
        int i8 = (bArr[i2] & 255) << 8;
        this.position = i2 + 2;
        int i9 = (bArr[i7] & 255) | i8;
        this.position = i2 + 4;
        return i9;
    }

    public long readUnsignedInt() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(4);
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        this.position = i2 + 2;
        long j7 = ((bArr[i2] & 255) << 24) | ((bArr[r3] & 255) << 16);
        this.position = i2 + 3;
        long j8 = j7 | ((bArr[r8] & 255) << 8);
        this.position = i2 + 4;
        return (bArr[r3] & 255) | j8;
    }

    public int readUnsignedInt24() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(3);
        byte[] bArr = this.data;
        int i2 = this.position;
        int i7 = i2 + 1;
        this.position = i7;
        int i8 = (bArr[i2] & 255) << 16;
        int i9 = i2 + 2;
        this.position = i9;
        int i10 = ((bArr[i7] & 255) << 8) | i8;
        this.position = i2 + 3;
        return (bArr[i9] & 255) | i10;
    }

    public int readUnsignedIntToInt() {
        int readInt = readInt();
        if (readInt >= 0) {
            return readInt;
        }
        throw new IllegalStateException(A.i.f(readInt, "Top bit not zero: "));
    }

    public int readUnsignedLeb128ToInt() {
        return com.google.common.primitives.a.checkedCast(readUnsignedLeb128ToLong());
    }

    public long readUnsignedLeb128ToLong() {
        long j7 = 0;
        for (int i2 = 0; i2 < 9; i2++) {
            if (this.position == this.limit) {
                throw new IllegalStateException("Attempting to read a byte over the limit.");
            }
            long readUnsignedByte = readUnsignedByte();
            j7 |= (127 & readUnsignedByte) << (i2 * 7);
            if ((readUnsignedByte & 128) == 0) {
                return j7;
            }
        }
        return j7;
    }

    public long readUnsignedLongToLong() {
        long readLong = readLong();
        if (readLong >= 0) {
            return readLong;
        }
        throw new IllegalStateException(A.i.i("Top bit not zero: ", readLong));
    }

    public int readUnsignedShort() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(2);
        byte[] bArr = this.data;
        int i2 = this.position;
        int i7 = i2 + 1;
        this.position = i7;
        int i8 = (bArr[i2] & 255) << 8;
        this.position = i2 + 2;
        return (bArr[i7] & 255) | i8;
    }

    public long readUtf8EncodedLong() {
        int i2;
        maybeAssertAtLeastBytesLeftForLegacyMethod(1);
        long j7 = this.data[this.position];
        int i7 = 7;
        while (true) {
            if (i7 < 0) {
                break;
            }
            if (((1 << i7) & j7) != 0) {
                i7--;
            } else if (i7 < 6) {
                j7 &= r6 - 1;
                i2 = 7 - i7;
            } else if (i7 == 7) {
                i2 = 1;
            }
        }
        i2 = 0;
        if (i2 == 0) {
            throw new NumberFormatException(A.i.i("Invalid UTF-8 sequence first byte: ", j7));
        }
        maybeAssertAtLeastBytesLeftForLegacyMethod(i2);
        for (int i8 = 1; i8 < i2; i8++) {
            if ((this.data[this.position + i8] & 192) != 128) {
                throw new NumberFormatException(A.i.i("Invalid UTF-8 sequence continuation byte: ", j7));
            }
            j7 = (j7 << 6) | (r4 & 63);
        }
        this.position += i2;
        return j7;
    }

    public Charset readUtfCharsetFromBom() {
        if (bytesLeft() >= 3) {
            byte[] bArr = this.data;
            int i2 = this.position;
            if (bArr[i2] == -17 && bArr[i2 + 1] == -69 && bArr[i2 + 2] == -65) {
                this.position = i2 + 3;
                return StandardCharsets.UTF_8;
            }
        }
        if (bytesLeft() < 2) {
            return null;
        }
        byte[] bArr2 = this.data;
        int i7 = this.position;
        byte b7 = bArr2[i7];
        if (b7 == -2 && bArr2[i7 + 1] == -1) {
            this.position = i7 + 2;
            return StandardCharsets.UTF_16BE;
        }
        if (b7 != -1 || bArr2[i7 + 1] != -2) {
            return null;
        }
        this.position = i7 + 2;
        return StandardCharsets.UTF_16LE;
    }

    public void reset(int i2) {
        reset(capacity() < i2 ? new byte[i2] : this.data, i2);
    }

    public void setLimit(int i2) {
        v.checkArgument(i2 >= 0 && i2 <= this.data.length);
        this.limit = i2;
    }

    public void setPosition(int i2) {
        v.checkArgument(i2 >= 0 && i2 <= this.limit);
        this.position = i2;
    }

    public void skipBytes(int i2) {
        setPosition(this.position + i2);
    }

    public void skipLeb128() {
        while ((readUnsignedByte() & 128) != 0) {
        }
    }

    @Deprecated
    public char peekChar(Charset charset) {
        int peekUnsignedByte;
        v.checkArgument(SUPPORTED_CHARSETS_FOR_READLINE.contains(charset), "Unsupported charset: %s", charset);
        if (bytesLeft() == 0) {
            return (char) 0;
        }
        if (charset.equals(StandardCharsets.US_ASCII)) {
            peekUnsignedByte = peekUnsignedByte();
        } else {
            if (!charset.equals(StandardCharsets.UTF_8)) {
                if (bytesLeft() < 2) {
                    return (char) 0;
                }
                return peekChar(charset.equals(StandardCharsets.UTF_16LE) ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN, 0);
            }
            if ((this.data[this.position] & 128) != 0) {
                return (char) 0;
            }
            peekUnsignedByte = peekUnsignedByte();
        }
        return (char) peekUnsignedByte;
    }

    public String readLine(Charset charset) {
        v.checkArgument(SUPPORTED_CHARSETS_FOR_READLINE.contains(charset), "Unsupported charset: %s", charset);
        if (bytesLeft() == 0) {
            return null;
        }
        if (!charset.equals(StandardCharsets.US_ASCII)) {
            readUtfCharsetFromBom();
        }
        String readString = readString(findNextLineTerminator(charset) - this.position, charset);
        if (this.position == this.limit) {
            return readString;
        }
        skipLineTerminator(charset);
        return readString;
    }

    public String readString(int i2, Charset charset) {
        maybeAssertAtLeastBytesLeftForLegacyMethod(i2);
        String str = new String(this.data, this.position, i2, charset);
        this.position += i2;
        return str;
    }

    public void reset(byte[] bArr) {
        reset(bArr, bArr.length);
    }

    public ParsableByteArray(int i2) {
        this.data = new byte[i2];
        this.limit = i2;
    }

    public void readBytes(byte[] bArr, int i2, int i7) {
        maybeAssertAtLeastBytesLeftForLegacyMethod(i7);
        System.arraycopy(this.data, this.position, bArr, i2, i7);
        this.position += i7;
    }

    public void reset(byte[] bArr, int i2) {
        this.data = bArr;
        this.limit = i2;
        this.position = 0;
    }

    public ParsableByteArray(byte[] bArr) {
        this.data = bArr;
        this.limit = bArr.length;
    }

    public void readBytes(ByteBuffer byteBuffer, int i2) {
        maybeAssertAtLeastBytesLeftForLegacyMethod(i2);
        byteBuffer.put(this.data, this.position, i2);
        this.position += i2;
    }

    public String readNullTerminatedString() {
        return readDelimiterTerminatedString((char) 0);
    }

    public ParsableByteArray(byte[] bArr, int i2) {
        this.data = bArr;
        this.limit = i2;
    }

    private char peekChar(ByteOrder byteOrder, int i2) {
        maybeAssertAtLeastBytesLeftForLegacyMethod(2);
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            byte[] bArr = this.data;
            int i7 = this.position;
            return U3.c.fromBytes(bArr[i7 + i2], bArr[i7 + i2 + 1]);
        }
        byte[] bArr2 = this.data;
        int i8 = this.position;
        return U3.c.fromBytes(bArr2[i8 + i2 + 1], bArr2[i8 + i2]);
    }
}
