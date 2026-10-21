package v0;

import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackException;
import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class G {
    public static void checkContainerInput(boolean z6, String str) throws ParserException {
        if (!z6) {
            throw ParserException.createForMalformedContainer(str, null);
        }
    }

    public static int getMaximumEncodedRateBytesPerSecond(int i2) {
        if (i2 == 20) {
            return 63750;
        }
        if (i2 == 30) {
            return 2250000;
        }
        switch (i2) {
            case 5:
                return 80000;
            case 6:
                return 768000;
            case 7:
                return 192000;
            case 8:
                return 2250000;
            case 9:
                return 40000;
            case 10:
                return 100000;
            case 11:
                return 16000;
            case 12:
                return PlaybackException.ERROR_CODE_VIDEO_FRAME_PROCESSOR_INIT_FAILED;
            default:
                switch (i2) {
                    case 14:
                        return 3062500;
                    case 15:
                        return 8000;
                    case 16:
                        return 256000;
                    case 17:
                        return 336000;
                    case 18:
                        return 768000;
                    default:
                        return androidx.media3.common.C.RATE_UNSET_INT;
                }
        }
    }

    public static boolean peekFullyQuietly(D d7, byte[] bArr, int i2, int i7, boolean z6) throws IOException {
        try {
            return d7.peekFully(bArr, i2, i7, z6);
        } catch (EOFException e3) {
            if (z6) {
                return false;
            }
            throw e3;
        }
    }

    public static int peekToLength(D d7, byte[] bArr, int i2, int i7) throws IOException {
        int i8 = 0;
        while (i8 < i7) {
            int peek = d7.peek(bArr, i2 + i8, i7 - i8);
            if (peek == -1) {
                break;
            }
            i8 += peek;
        }
        return i8;
    }

    public static boolean readFullyQuietly(D d7, byte[] bArr, int i2, int i7) throws IOException {
        try {
            d7.readFully(bArr, i2, i7);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean skipFullyQuietly(D d7, int i2) throws IOException {
        try {
            d7.skipFully(i2);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
