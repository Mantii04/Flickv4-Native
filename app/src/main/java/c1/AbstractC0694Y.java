package c1;

import androidx.media3.common.util.ParsableByteArray;

/* renamed from: c1.Y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0694Y {
    public static int findSyncBytePosition(byte[] bArr, int i2, int i7) {
        while (i2 < i7 && bArr[i2] != 71) {
            i2++;
        }
        return i2;
    }

    public static boolean isStartOfTsPacket(byte[] bArr, int i2, int i7, int i8) {
        int i9 = 0;
        for (int i10 = -4; i10 <= 4; i10++) {
            int i11 = (i10 * 188) + i8;
            if (i11 < i2 || i11 >= i7 || bArr[i11] != 71) {
                i9 = 0;
            } else {
                i9++;
                if (i9 == 5) {
                    return true;
                }
            }
        }
        return false;
    }

    public static long readPcrFromPacket(ParsableByteArray parsableByteArray, int i2, int i7) {
        parsableByteArray.setPosition(i2);
        if (parsableByteArray.bytesLeft() < 5) {
            return androidx.media3.common.C.TIME_UNSET;
        }
        int readInt = parsableByteArray.readInt();
        if ((8388608 & readInt) != 0 || ((2096896 & readInt) >> 8) != i7 || (readInt & 32) == 0 || parsableByteArray.readUnsignedByte() < 7 || parsableByteArray.bytesLeft() < 7 || (parsableByteArray.readUnsignedByte() & 16) != 16) {
            return androidx.media3.common.C.TIME_UNSET;
        }
        parsableByteArray.readBytes(new byte[6], 0, 6);
        return ((r0[0] & 255) << 25) | ((r0[1] & 255) << 17) | ((r0[2] & 255) << 9) | ((r0[3] & 255) << 1) | ((255 & r0[4]) >> 7);
    }
}
