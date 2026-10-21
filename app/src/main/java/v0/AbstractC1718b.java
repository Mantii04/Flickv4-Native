package v0;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;

/* renamed from: v0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1718b {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f20431a = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f20432b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static int a(ParsableBitArray parsableBitArray) {
        int readBits = parsableBitArray.readBits(4);
        if (readBits == 15) {
            if (parsableBitArray.bitsLeft() >= 24) {
                return parsableBitArray.readBits(24);
            }
            throw ParserException.createForMalformedContainer("AAC header insufficient data", null);
        }
        if (readBits < 13) {
            return f20431a[readBits];
        }
        throw ParserException.createForMalformedContainer("AAC header wrong Sampling Frequency Index", null);
    }

    public static byte[] buildAacLcAudioSpecificConfig(int i2, int i7) {
        int i8 = -1;
        for (int i9 = 0; i9 < 13; i9++) {
            if (i2 == f20431a[i9]) {
                i8 = i9;
            }
        }
        int i10 = -1;
        for (int i11 = 0; i11 < 16; i11++) {
            if (i7 == f20432b[i11]) {
                i10 = i11;
            }
        }
        if (i2 == -1 || i10 == -1) {
            throw new IllegalArgumentException(A.i.e(i2, i7, "Invalid sample rate or number of channels: ", ", "));
        }
        return buildAudioSpecificConfig(2, i8, i10);
    }

    public static byte[] buildAudioSpecificConfig(int i2, int i7, int i8) {
        return new byte[]{(byte) (((i2 << 3) & 248) | ((i7 >> 1) & 7)), (byte) (((i7 << 7) & 128) | ((i8 << 3) & 120))};
    }

    public static C1717a parseAudioSpecificConfig(byte[] bArr) throws ParserException {
        return parseAudioSpecificConfig(new ParsableBitArray(bArr), false);
    }

    public static C1717a parseAudioSpecificConfig(ParsableBitArray parsableBitArray, boolean z6) throws ParserException {
        int readBits = parsableBitArray.readBits(5);
        if (readBits == 31) {
            readBits = parsableBitArray.readBits(6) + 32;
        }
        int a7 = a(parsableBitArray);
        int readBits2 = parsableBitArray.readBits(4);
        String f3 = A.i.f(readBits, "mp4a.40.");
        if (readBits == 5 || readBits == 29) {
            a7 = a(parsableBitArray);
            int readBits3 = parsableBitArray.readBits(5);
            if (readBits3 == 31) {
                readBits3 = parsableBitArray.readBits(6) + 32;
            }
            readBits = readBits3;
            if (readBits == 22) {
                readBits2 = parsableBitArray.readBits(4);
            }
        }
        if (z6) {
            if (readBits != 1 && readBits != 2 && readBits != 3 && readBits != 4 && readBits != 6 && readBits != 7 && readBits != 17) {
                switch (readBits) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw ParserException.createForUnsupportedContainerFeature("Unsupported audio object type: " + readBits);
                }
            }
            if (parsableBitArray.readBit()) {
                Log.w("AacUtil", "Unexpected frameLengthFlag = 1");
            }
            if (parsableBitArray.readBit()) {
                parsableBitArray.skipBits(14);
            }
            boolean readBit = parsableBitArray.readBit();
            if (readBits2 == 0) {
                throw new UnsupportedOperationException();
            }
            if (readBits == 6 || readBits == 20) {
                parsableBitArray.skipBits(3);
            }
            if (readBit) {
                if (readBits == 22) {
                    parsableBitArray.skipBits(16);
                }
                if (readBits == 17 || readBits == 19 || readBits == 20 || readBits == 23) {
                    parsableBitArray.skipBits(3);
                }
                parsableBitArray.skipBits(1);
            }
            switch (readBits) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int readBits4 = parsableBitArray.readBits(2);
                    if (readBits4 == 2 || readBits4 == 3) {
                        throw ParserException.createForUnsupportedContainerFeature("Unsupported epConfig: " + readBits4);
                    }
            }
        }
        int i2 = f20432b[readBits2];
        if (i2 != -1) {
            return new C1717a(a7, i2, f3);
        }
        throw ParserException.createForMalformedContainer(null, null);
    }
}
