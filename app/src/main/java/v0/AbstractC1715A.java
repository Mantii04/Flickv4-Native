package v0;

import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.RendererCapabilities;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.internal.http2.Settings;

/* renamed from: v0.A, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1715A {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f20362a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f20363b = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f20364c = {64, 112, 128, 192, 224, 256, RendererCapabilities.DECODER_SUPPORT_MASK, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f20365d = {8000, 16000, 32000, 64000, 128000, 22050, 44100, 88200, 176400, 352800, 12000, 24000, 48000, 96000, 192000, 384000};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f20366e = {5, 8, 10, 12};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f20367f = {6, 9, 12, 15};

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f20368g = {2, 4, 6, 8};

    /* renamed from: h, reason: collision with root package name */
    public static final int[] f20369h = {9, 11, 13, 16};

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f20370i = {5, 8, 10, 12};

    public static ParsableBitArray a(byte[] bArr) {
        byte b7 = bArr[0];
        if (b7 == Byte.MAX_VALUE || b7 == 100 || b7 == 64 || b7 == 113) {
            return new ParsableBitArray(bArr);
        }
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        byte b8 = copyOf[0];
        if (b8 == -2 || b8 == -1 || b8 == 37 || b8 == -14 || b8 == -24) {
            for (int i2 = 0; i2 < copyOf.length - 1; i2 += 2) {
                byte b9 = copyOf[i2];
                int i7 = i2 + 1;
                copyOf[i2] = copyOf[i7];
                copyOf[i7] = b9;
            }
        }
        ParsableBitArray parsableBitArray = new ParsableBitArray(copyOf);
        if (copyOf[0] == 31) {
            ParsableBitArray parsableBitArray2 = new ParsableBitArray(copyOf);
            while (parsableBitArray2.bitsLeft() >= 16) {
                parsableBitArray2.skipBits(2);
                parsableBitArray.putInt(parsableBitArray2.readBits(14), 14);
            }
        }
        parsableBitArray.reset(copyOf);
        return parsableBitArray;
    }

    public static int b(ParsableBitArray parsableBitArray, int[] iArr) {
        int i2 = 0;
        for (int i7 = 0; i7 < 3 && parsableBitArray.readBit(); i7++) {
            i2++;
        }
        int i8 = 0;
        for (int i9 = 0; i9 < i2; i9++) {
            i8 += 1 << iArr[i9];
        }
        return parsableBitArray.readBits(iArr[i2]) + i8;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getDtsFrameSize(byte[] r7) {
        /*
            r0 = 0
            r1 = r7[r0]
            r2 = -2
            r3 = 7
            r4 = 6
            r5 = 1
            r6 = 4
            if (r1 == r2) goto L4f
            r2 = -1
            if (r1 == r2) goto L3e
            r2 = 31
            if (r1 == r2) goto L26
            r1 = 5
            r1 = r7[r1]
            r1 = r1 & 3
            int r1 = r1 << 12
            r2 = r7[r4]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r1 = r1 | r2
            r7 = r7[r3]
        L20:
            r7 = r7 & 240(0xf0, float:3.36E-43)
            int r7 = r7 >> r6
            r7 = r7 | r1
            int r7 = r7 + r5
            goto L5e
        L26:
            r0 = r7[r4]
            r0 = r0 & 3
            int r0 = r0 << 12
            r1 = r7[r3]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r0 = r0 | r1
            r1 = 8
            r7 = r7[r1]
        L36:
            r7 = r7 & 60
            int r7 = r7 >> 2
            r7 = r7 | r0
            int r7 = r7 + r5
            r0 = r5
            goto L5e
        L3e:
            r0 = r7[r3]
            r0 = r0 & 3
            int r0 = r0 << 12
            r1 = r7[r4]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r0 = r0 | r1
            r1 = 9
            r7 = r7[r1]
            goto L36
        L4f:
            r1 = r7[r6]
            r1 = r1 & 3
            int r1 = r1 << 12
            r2 = r7[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r1 = r1 | r2
            r7 = r7[r4]
            goto L20
        L5e:
            if (r0 == 0) goto L64
            int r7 = r7 * 16
            int r7 = r7 / 14
        L64:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: v0.AbstractC1715A.getDtsFrameSize(byte[]):int");
    }

    public static int getFrameType(int i2) {
        if (i2 == 2147385345 || i2 == -25230976 || i2 == 536864768 || i2 == -14745368) {
            return 1;
        }
        if (i2 == 1683496997 || i2 == 622876772) {
            return 2;
        }
        if (i2 == 1078008818 || i2 == -233094848) {
            return 3;
        }
        return (i2 == 1908687592 || i2 == -398277519) ? 4 : 0;
    }

    public static boolean isSampleDtsHd(D d7, int i2) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(i2);
        if (!d7.peekFully(parsableByteArray.getData(), 0, i2, true)) {
            return false;
        }
        d7.resetPeekPosition();
        if (getFrameType(parsableByteArray.peekInt()) != 1 || parsableByteArray.bytesLeft() < 10) {
            return false;
        }
        byte[] bArr = new byte[10];
        parsableByteArray.readBytes(bArr, 0, 10);
        parsableByteArray.setPosition(0);
        int dtsFrameSize = getDtsFrameSize(bArr);
        if (dtsFrameSize > 0 && parsableByteArray.bytesLeft() >= dtsFrameSize + 4) {
            parsableByteArray.skipBytes(dtsFrameSize);
            if (getFrameType(parsableByteArray.readInt()) == 2) {
                return true;
            }
        }
        return false;
    }

    public static int parseDtsAudioSampleCount(byte[] bArr) {
        int i2;
        byte b7;
        int i7;
        byte b8;
        byte b9 = bArr[0];
        if (b9 != -2) {
            if (b9 == -1) {
                i2 = (bArr[4] & 7) << 4;
                b8 = bArr[7];
            } else if (b9 != 31) {
                i2 = (bArr[4] & 1) << 6;
                b7 = bArr[5];
            } else {
                i2 = (bArr[5] & 7) << 4;
                b8 = bArr[6];
            }
            i7 = b8 & 60;
            return (((i7 >> 2) | i2) + 1) * 32;
        }
        i2 = (bArr[5] & 1) << 6;
        b7 = bArr[4];
        i7 = b7 & 252;
        return (((i7 >> 2) | i2) + 1) * 32;
    }

    public static Format parseDtsFormat(byte[] bArr, String str, String str2, int i2, String str3, DrmInitData drmInitData) {
        ParsableBitArray a7 = a(bArr);
        a7.skipBits(60);
        int i7 = f20362a[a7.readBits(6)];
        int i8 = f20363b[a7.readBits(4)];
        int readBits = a7.readBits(5);
        int i9 = readBits >= 29 ? -1 : (f20364c[readBits] * 1000) / 2;
        a7.skipBits(10);
        return new Format.Builder().setId(str).setContainerMimeType(str3).setSampleMimeType(MimeTypes.AUDIO_DTS).setAverageBitrate(i9).setChannelCount(i7 + (a7.readBits(2) > 0 ? 1 : 0)).setSampleRate(i8).setDrmInitData(drmInitData).setLanguage(str2).setRoleFlags(i2).build();
    }

    public static C1741z parseDtsHdHeader(byte[] bArr) throws ParserException {
        int i2;
        int i7;
        int i8;
        int i9;
        long j7;
        int i10;
        ParsableBitArray a7 = a(bArr);
        a7.skipBits(40);
        int readBits = a7.readBits(2);
        if (a7.readBit()) {
            i2 = 20;
            i7 = 12;
        } else {
            i2 = 16;
            i7 = 8;
        }
        a7.skipBits(i7);
        int readBits2 = a7.readBits(i2) + 1;
        boolean readBit = a7.readBit();
        int i11 = -1;
        int i12 = 0;
        if (readBit) {
            i8 = a7.readBits(2);
            int readBits3 = (a7.readBits(3) + 1) * 512;
            if (a7.readBit()) {
                a7.skipBits(36);
            }
            int readBits4 = a7.readBits(3) + 1;
            int readBits5 = a7.readBits(3) + 1;
            if (readBits4 != 1 || readBits5 != 1) {
                throw ParserException.createForUnsupportedContainerFeature("Multiple audio presentations or assets not supported");
            }
            int i13 = readBits + 1;
            int readBits6 = a7.readBits(i13);
            for (int i14 = 0; i14 < i13; i14++) {
                if (((readBits6 >> i14) & 1) == 1) {
                    a7.skipBits(8);
                }
            }
            if (a7.readBit()) {
                a7.skipBits(2);
                int readBits7 = (a7.readBits(2) + 1) << 2;
                int readBits8 = a7.readBits(2) + 1;
                while (i12 < readBits8) {
                    a7.skipBits(readBits7);
                    i12++;
                }
            }
            i12 = readBits3;
        } else {
            i8 = -1;
        }
        a7.skipBits(i2);
        a7.skipBits(12);
        if (readBit) {
            if (a7.readBit()) {
                a7.skipBits(4);
            }
            if (a7.readBit()) {
                a7.skipBits(24);
            }
            if (a7.readBit()) {
                a7.skipBytes(a7.readBits(10) + 1);
            }
            a7.skipBits(5);
            i9 = f20365d[a7.readBits(4)];
            i11 = a7.readBits(8) + 1;
        } else {
            i9 = androidx.media3.common.C.RATE_UNSET_INT;
        }
        int i15 = i9;
        if (readBit) {
            if (i8 == 0) {
                i10 = 32000;
            } else if (i8 == 1) {
                i10 = 44100;
            } else {
                if (i8 != 2) {
                    throw ParserException.createForMalformedContainer("Unsupported reference clock code in DTS HD header: " + i8, null);
                }
                i10 = 48000;
            }
            j7 = Util.scaleLargeTimestamp(i12, 1000000L, i10);
        } else {
            j7 = androidx.media3.common.C.TIME_UNSET;
        }
        return new C1741z(i11, j7, MimeTypes.AUDIO_DTS_EXPRESS, i15, readBits2);
    }

    public static int parseDtsHdHeaderSize(byte[] bArr) {
        ParsableBitArray a7 = a(bArr);
        a7.skipBits(42);
        return a7.readBits(a7.readBit() ? 12 : 8) + 1;
    }

    public static C1741z parseDtsUhdHeader(byte[] bArr, AtomicInteger atomicInteger) throws ParserException {
        int i2;
        long j7;
        AtomicInteger atomicInteger2;
        int i7;
        int i8;
        ParsableBitArray a7 = a(bArr);
        int i9 = a7.readBits(32) == 1078008818 ? 1 : 0;
        int b7 = b(a7, f20366e);
        int i10 = b7 + 1;
        if (i9 == 0) {
            i2 = androidx.media3.common.C.RATE_UNSET_INT;
            j7 = androidx.media3.common.C.TIME_UNSET;
        } else {
            if (!a7.readBit()) {
                throw ParserException.createForUnsupportedContainerFeature("Only supports full channel mask-based audio presentation");
            }
            int i11 = b7 - 1;
            if (((bArr[b7] & 255) | ((bArr[i11] << 8) & Settings.DEFAULT_INITIAL_WINDOW_SIZE)) != Util.crc16(bArr, 0, i11, Settings.DEFAULT_INITIAL_WINDOW_SIZE)) {
                throw ParserException.createForMalformedContainer("CRC check failed", null);
            }
            int readBits = a7.readBits(2);
            if (readBits == 0) {
                i7 = 512;
            } else if (readBits == 1) {
                i7 = 480;
            } else {
                if (readBits != 2) {
                    throw ParserException.createForMalformedContainer("Unsupported base duration index in DTS UHD header: " + readBits, null);
                }
                i7 = RendererCapabilities.DECODER_SUPPORT_MASK;
            }
            int readBits2 = (a7.readBits(3) + 1) * i7;
            int readBits3 = a7.readBits(2);
            if (readBits3 == 0) {
                i8 = 32000;
            } else if (readBits3 == 1) {
                i8 = 44100;
            } else {
                if (readBits3 != 2) {
                    throw ParserException.createForMalformedContainer("Unsupported clock rate index in DTS UHD header: " + readBits3, null);
                }
                i8 = 48000;
            }
            if (a7.readBit()) {
                a7.skipBits(36);
            }
            i2 = (1 << a7.readBits(2)) * i8;
            j7 = Util.scaleLargeTimestamp(readBits2, 1000000L, i8);
        }
        int i12 = i2;
        long j8 = j7;
        int i13 = 0;
        for (int i14 = 0; i14 < i9; i14++) {
            i13 += b(a7, f20367f);
        }
        if (i9 != 0) {
            atomicInteger2 = atomicInteger;
            atomicInteger2.set(b(a7, f20368g));
        } else {
            atomicInteger2 = atomicInteger;
        }
        return new C1741z(2, j8, MimeTypes.AUDIO_DTS_X, i12, i13 + (atomicInteger2.get() != 0 ? b(a7, f20369h) : 0) + i10);
    }

    public static int parseDtsUhdHeaderSize(byte[] bArr) {
        ParsableBitArray a7 = a(bArr);
        a7.skipBits(32);
        return b(a7, f20370i) + 1;
    }

    public static int parseDtsAudioSampleCount(ByteBuffer byteBuffer) {
        int i2;
        byte b7;
        int i7;
        byte b8;
        if (byteBuffer.getInt(0) == -233094848 || byteBuffer.getInt(0) == -398277519) {
            return 1024;
        }
        if (byteBuffer.getInt(0) == 622876772) {
            return 4096;
        }
        int position = byteBuffer.position();
        byte b9 = byteBuffer.get(position);
        if (b9 != -2) {
            if (b9 == -1) {
                i2 = (byteBuffer.get(position + 4) & 7) << 4;
                b8 = byteBuffer.get(position + 7);
            } else if (b9 != 31) {
                i2 = (byteBuffer.get(position + 4) & 1) << 6;
                b7 = byteBuffer.get(position + 5);
            } else {
                i2 = (byteBuffer.get(position + 5) & 7) << 4;
                b8 = byteBuffer.get(position + 6);
            }
            i7 = b8 & 60;
            return (((i7 >> 2) | i2) + 1) * 32;
        }
        i2 = (byteBuffer.get(position + 5) & 1) << 6;
        b7 = byteBuffer.get(position + 4);
        i7 = b7 & 252;
        return (((i7 >> 2) | i2) + 1) * 32;
    }
}
