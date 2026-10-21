package v0;

import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import cz.msebera.android.httpclient.HttpStatus;
import java.nio.ByteBuffer;

/* renamed from: v0.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1723g {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f20460a = {PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, HttpStatus.SC_BAD_REQUEST, HttpStatus.SC_BAD_REQUEST, 2048};

    public static void a(ParsableBitArray parsableBitArray, C1721e c1721e) {
        int readBits = parsableBitArray.readBits(5);
        parsableBitArray.skipBits(2);
        if (parsableBitArray.readBit()) {
            parsableBitArray.skipBits(5);
        }
        if (readBits >= 7 && readBits <= 10) {
            parsableBitArray.skipBit();
        }
        if (parsableBitArray.readBit()) {
            int readBits2 = parsableBitArray.readBits(3);
            if (c1721e.f20447b == -1 && readBits >= 0 && readBits <= 15 && (readBits2 == 0 || readBits2 == 1)) {
                c1721e.f20447b = readBits;
            }
            if (parsableBitArray.readBit()) {
                c(parsableBitArray);
            }
        }
    }

    public static void b(ParsableBitArray parsableBitArray, C1721e c1721e) {
        parsableBitArray.skipBits(2);
        boolean readBit = parsableBitArray.readBit();
        int readBits = parsableBitArray.readBits(8);
        for (int i2 = 0; i2 < readBits; i2++) {
            parsableBitArray.skipBits(2);
            if (parsableBitArray.readBit()) {
                parsableBitArray.skipBits(5);
            }
            if (readBit) {
                parsableBitArray.skipBits(24);
            } else {
                if (parsableBitArray.readBit()) {
                    if (!parsableBitArray.readBit()) {
                        parsableBitArray.skipBits(4);
                    }
                    c1721e.f20448c = parsableBitArray.readBits(6) + 1;
                }
                parsableBitArray.skipBits(4);
            }
        }
        if (parsableBitArray.readBit()) {
            parsableBitArray.skipBits(3);
            if (parsableBitArray.readBit()) {
                c(parsableBitArray);
            }
        }
    }

    public static void c(ParsableBitArray parsableBitArray) {
        int readBits = parsableBitArray.readBits(6);
        if (readBits < 2 || readBits > 42) {
            throw ParserException.createForUnsupportedContainerFeature(String.format("Invalid language tag bytes number: %d. Must be between 2 and 42.", Integer.valueOf(readBits)));
        }
        parsableBitArray.skipBits(readBits * 8);
    }

    public static void getAc4SampleHeader(int i2, ParsableByteArray parsableByteArray) {
        parsableByteArray.reset(7);
        byte[] data = parsableByteArray.getData();
        data[0] = -84;
        data[1] = 64;
        data[2] = -1;
        data[3] = -1;
        data[4] = (byte) ((i2 >> 16) & 255);
        data[5] = (byte) ((i2 >> 8) & 255);
        data[6] = (byte) (i2 & 255);
    }

    /* JADX WARN: Code restructure failed: missing block: B:158:0x0139, code lost:
    
        if (r2 == 2) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x03b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media3.common.Format parseAc4AnnexEFormat(androidx.media3.common.util.ParsableByteArray r22, java.lang.String r23, java.lang.String r24, androidx.media3.common.DrmInitData r25) throws androidx.media3.common.ParserException {
        /*
            Method dump skipped, instructions count: 1016
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: v0.AbstractC1723g.parseAc4AnnexEFormat(androidx.media3.common.util.ParsableByteArray, java.lang.String, java.lang.String, androidx.media3.common.DrmInitData):androidx.media3.common.Format");
    }

    public static int parseAc4SyncframeAudioSampleCount(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(position);
        return parseAc4SyncframeInfo(new ParsableBitArray(bArr)).f20457c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0081, code lost:
    
        if (r9 != 11) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0088, code lost:
    
        if (r9 != 11) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x008d, code lost:
    
        if (r9 != 8) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static v0.C1722f parseAc4SyncframeInfo(androidx.media3.common.util.ParsableBitArray r9) {
        /*
            r0 = 16
            int r1 = r9.readBits(r0)
            int r0 = r9.readBits(r0)
            r2 = 65535(0xffff, float:9.1834E-41)
            r3 = 4
            if (r0 != r2) goto L18
            r0 = 24
            int r0 = r9.readBits(r0)
            r2 = 7
            goto L19
        L18:
            r2 = r3
        L19:
            int r0 = r0 + r2
            r2 = 44097(0xac41, float:6.1793E-41)
            if (r1 != r2) goto L21
            int r0 = r0 + 2
        L21:
            r1 = 2
            int r2 = r9.readBits(r1)
            r4 = 3
            if (r2 != r4) goto L32
        L29:
            r9.readBits(r1)
            boolean r2 = r9.readBit()
            if (r2 != 0) goto L29
        L32:
            r2 = 10
            int r2 = r9.readBits(r2)
            boolean r5 = r9.readBit()
            if (r5 == 0) goto L47
            int r5 = r9.readBits(r4)
            if (r5 <= 0) goto L47
            r9.skipBits(r1)
        L47:
            boolean r5 = r9.readBit()
            r6 = 44100(0xac44, float:6.1797E-41)
            r7 = 48000(0xbb80, float:6.7262E-41)
            if (r5 == 0) goto L55
            r5 = r7
            goto L56
        L55:
            r5 = r6
        L56:
            int r9 = r9.readBits(r3)
            int[] r8 = v0.AbstractC1723g.f20460a
            if (r5 != r6) goto L65
            r6 = 13
            if (r9 != r6) goto L65
            r9 = r8[r9]
            goto L93
        L65:
            if (r5 != r7) goto L92
            r6 = 14
            if (r9 >= r6) goto L92
            r6 = r8[r9]
            int r2 = r2 % 5
            r7 = 1
            r8 = 8
            if (r2 == r7) goto L8b
            r7 = 11
            if (r2 == r1) goto L86
            if (r2 == r4) goto L8b
            if (r2 == r3) goto L7d
            goto L90
        L7d:
            if (r9 == r4) goto L83
            if (r9 == r8) goto L83
            if (r9 != r7) goto L90
        L83:
            int r9 = r6 + 1
            goto L93
        L86:
            if (r9 == r8) goto L83
            if (r9 != r7) goto L90
            goto L83
        L8b:
            if (r9 == r4) goto L83
            if (r9 != r8) goto L90
            goto L83
        L90:
            r9 = r6
            goto L93
        L92:
            r9 = 0
        L93:
            v0.f r1 = new v0.f
            r1.<init>(r5, r0, r9)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: v0.AbstractC1723g.parseAc4SyncframeInfo(androidx.media3.common.util.ParsableBitArray):v0.f");
    }

    public static int parseAc4SyncframeSize(byte[] bArr, int i2) {
        int i7 = 7;
        if (bArr.length < 7) {
            return -1;
        }
        int i8 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        if (i8 == 65535) {
            i8 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
        } else {
            i7 = 4;
        }
        if (i2 == 44097) {
            i7 += 2;
        }
        return i8 + i7;
    }
}
