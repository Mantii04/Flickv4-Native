package d1;

import P3.v;
import android.util.Pair;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.io.IOException;
import java.util.Arrays;
import v0.D;

/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f13525a = {0, 0, 0, 0, 16, 0, Byte.MIN_VALUE, 0, 0, -86, 0, 56, -101, 113};

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f13526b = {0, 0, 33, 7, -45, 17, -122, 68, -56, -63, -54, 0, 0, 0};

    public static f a(int i2, D d7, ParsableByteArray parsableByteArray) {
        f peek = f.peek(d7, parsableByteArray);
        while (peek.f13523a != i2) {
            StringBuilder sb = new StringBuilder("Ignoring unknown WAV chunk: ");
            int i7 = peek.f13523a;
            sb.append(i7);
            Log.w("WavHeaderReader", sb.toString());
            long j7 = peek.f13524b;
            long j8 = 8 + j7;
            if (j7 % 2 != 0) {
                j8 = 9 + j7;
            }
            if (j8 > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Chunk is too large (~2GB+) to skip; id: " + i7);
            }
            d7.skipFully((int) j8);
            peek = f.peek(d7, parsableByteArray);
        }
        return peek;
    }

    public static boolean checkFileType(D d7) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        int i2 = f.peek(d7, parsableByteArray).f13523a;
        if (i2 != 1380533830 && i2 != 1380333108) {
            return false;
        }
        d7.peekFully(parsableByteArray.getData(), 0, 4);
        parsableByteArray.setPosition(0);
        int readInt = parsableByteArray.readInt();
        if (readInt == 1463899717) {
            return true;
        }
        Log.e("WavHeaderReader", "Unsupported form type: " + readInt);
        return false;
    }

    public static e readFormat(D d7) throws IOException {
        byte[] bArr;
        ParsableByteArray parsableByteArray = new ParsableByteArray(16);
        long j7 = a(1718449184, d7, parsableByteArray).f13524b;
        v.checkState(j7 >= 16);
        d7.peekFully(parsableByteArray.getData(), 0, 16);
        parsableByteArray.setPosition(0);
        int readLittleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
        int readLittleEndianUnsignedShort2 = parsableByteArray.readLittleEndianUnsignedShort();
        int readLittleEndianUnsignedIntToInt = parsableByteArray.readLittleEndianUnsignedIntToInt();
        int readLittleEndianUnsignedIntToInt2 = parsableByteArray.readLittleEndianUnsignedIntToInt();
        int readLittleEndianUnsignedShort3 = parsableByteArray.readLittleEndianUnsignedShort();
        int readLittleEndianUnsignedShort4 = parsableByteArray.readLittleEndianUnsignedShort();
        int i2 = ((int) j7) - 16;
        if (i2 > 0) {
            bArr = new byte[i2];
            d7.peekFully(bArr, 0, i2);
            if (readLittleEndianUnsignedShort == 65534 && i2 == 24) {
                ParsableByteArray parsableByteArray2 = new ParsableByteArray(bArr);
                parsableByteArray2.readLittleEndianUnsignedShort();
                int readLittleEndianUnsignedShort5 = parsableByteArray2.readLittleEndianUnsignedShort();
                if (readLittleEndianUnsignedShort5 != 0 && readLittleEndianUnsignedShort5 != readLittleEndianUnsignedShort4) {
                    throw ParserException.createForUnsupportedContainerFeature("validBits ( " + readLittleEndianUnsignedShort5 + ")  != bitsPerSample( " + readLittleEndianUnsignedShort4 + ") are not supported");
                }
                int readLittleEndianUnsignedIntToInt3 = parsableByteArray2.readLittleEndianUnsignedIntToInt();
                if ((readLittleEndianUnsignedIntToInt3 >> 18) != 0) {
                    throw ParserException.createForUnsupportedContainerFeature("invalid channel mask " + readLittleEndianUnsignedIntToInt3);
                }
                if (readLittleEndianUnsignedIntToInt3 != 0 && Integer.bitCount(readLittleEndianUnsignedIntToInt3) != readLittleEndianUnsignedShort2) {
                    throw ParserException.createForUnsupportedContainerFeature("invalid number of channels (" + Integer.bitCount(readLittleEndianUnsignedIntToInt3) + ") in channel mask " + readLittleEndianUnsignedIntToInt3);
                }
                readLittleEndianUnsignedShort = parsableByteArray2.readLittleEndianUnsignedShort();
                byte[] bArr2 = new byte[14];
                parsableByteArray2.readBytes(bArr2, 0, 14);
                if (!Arrays.equals(bArr2, f13525a) && !Arrays.equals(bArr2, f13526b)) {
                    throw ParserException.createForUnsupportedContainerFeature("invalid wav format extension guid");
                }
            }
        } else {
            bArr = Util.EMPTY_BYTE_ARRAY;
        }
        byte[] bArr3 = bArr;
        int i7 = readLittleEndianUnsignedShort;
        d7.skipFully((int) (d7.getPeekPosition() - d7.getPosition()));
        return new e(i7, readLittleEndianUnsignedShort2, readLittleEndianUnsignedIntToInt, readLittleEndianUnsignedIntToInt2, readLittleEndianUnsignedShort3, readLittleEndianUnsignedShort4, bArr3);
    }

    public static long readRf64SampleDataSize(D d7) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        f peek = f.peek(d7, parsableByteArray);
        if (peek.f13523a != 1685272116) {
            d7.resetPeekPosition();
            return -1L;
        }
        d7.advancePeekPosition(8);
        parsableByteArray.setPosition(0);
        d7.peekFully(parsableByteArray.getData(), 0, 8);
        long readLittleEndianLong = parsableByteArray.readLittleEndianLong();
        d7.skipFully(((int) peek.f13524b) + 8);
        return readLittleEndianLong;
    }

    public static Pair<Long, Long> skipToSampleData(D d7) throws IOException {
        d7.resetPeekPosition();
        f a7 = a(1684108385, d7, new ParsableByteArray(8));
        d7.skipFully(8);
        return Pair.create(Long.valueOf(d7.getPosition()), Long.valueOf(a7.f13524b));
    }
}
