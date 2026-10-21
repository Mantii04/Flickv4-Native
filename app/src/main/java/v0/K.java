package v0;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class K {
    public static boolean a(ParsableByteArray parsableByteArray, P p6, boolean z6, J j7) {
        try {
            long readUtf8EncodedLong = parsableByteArray.readUtf8EncodedLong();
            if (!z6) {
                readUtf8EncodedLong *= p6.f20380b;
            }
            long j8 = p6.f20388j;
            if (j8 != 0 && readUtf8EncodedLong > j8) {
                return false;
            }
            j7.f20373a = readUtf8EncodedLong;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x009b, code lost:
    
        if (r10 == r21.f20384f) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a8, code lost:
    
        if ((r20.readUnsignedByte() * 1000) == r1) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b7, code lost:
    
        if (r5 == r1) goto L61;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean checkAndReadFrameHeader(androidx.media3.common.util.ParsableByteArray r20, v0.P r21, int r22, v0.J r23) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: v0.K.checkAndReadFrameHeader(androidx.media3.common.util.ParsableByteArray, v0.P, int, v0.J):boolean");
    }

    public static boolean checkFrameHeaderFromPeek(D d7, P p6, int i2, J j7) throws IOException {
        long peekPosition = d7.getPeekPosition();
        ParsableByteArray parsableByteArray = new ParsableByteArray(17);
        d7.peekFully(parsableByteArray.getData(), 0, 2);
        if (parsableByteArray.peekChar() != i2) {
            d7.resetPeekPosition();
            d7.advancePeekPosition((int) (peekPosition - d7.getPosition()));
            return false;
        }
        parsableByteArray.setLimit(G.peekToLength(d7, parsableByteArray.getData(), 2, 15) + 2);
        d7.resetPeekPosition();
        d7.advancePeekPosition((int) (peekPosition - d7.getPosition()));
        return checkAndReadFrameHeader(parsableByteArray, p6, i2, j7);
    }

    public static long getFirstSampleNumber(D d7, P p6) throws IOException {
        d7.resetPeekPosition();
        d7.advancePeekPosition(1);
        byte[] bArr = new byte[1];
        d7.peekFully(bArr, 0, 1);
        boolean z6 = (bArr[0] & 1) == 1;
        d7.advancePeekPosition(2);
        int i2 = z6 ? 7 : 6;
        ParsableByteArray parsableByteArray = new ParsableByteArray(i2);
        parsableByteArray.setLimit(G.peekToLength(d7, parsableByteArray.getData(), 0, i2));
        d7.resetPeekPosition();
        J j7 = new J();
        if (a(parsableByteArray, p6, z6, j7)) {
            return j7.f20373a;
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    public static int readFrameBlockSizeSamplesFromKey(ParsableByteArray parsableByteArray, int i2) {
        switch (i2) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i2 - 2);
            case 6:
                return parsableByteArray.readUnsignedByte() + 1;
            case 7:
                return parsableByteArray.readUnsignedShort() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i2 - 8);
            default:
                return -1;
        }
    }
}
