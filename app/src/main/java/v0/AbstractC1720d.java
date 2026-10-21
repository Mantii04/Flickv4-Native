package v0;

import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.RendererCapabilities;
import cz.msebera.android.httpclient.HttpStatus;
import java.nio.ByteBuffer;

/* renamed from: v0.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1720d {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f20440a = {1, 2, 3, 6};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f20441b = {48000, 44100, 32000};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f20442c = {24000, 22050, 16000};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f20443d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f20444e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, RendererCapabilities.DECODER_SUPPORT_MASK, 448, 512, 576, 640};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f20445f = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, HttpStatus.SC_EXPECTATION_FAILED, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static int a(int i2, int i7) {
        int i8 = i7 / 2;
        if (i2 < 0 || i2 >= 3 || i7 < 0 || i8 >= 19) {
            return -1;
        }
        int i9 = f20441b[i2];
        if (i9 == 44100) {
            return ((i7 % 2) + f20445f[i8]) * 2;
        }
        int i10 = f20444e[i8];
        return i9 == 32000 ? i10 * 6 : i10 * 4;
    }

    public static int findTrueHdSyncframeOffset(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit() - 10;
        for (int i2 = position; i2 <= limit; i2++) {
            if ((Util.getBigEndianInt(byteBuffer, i2 + 4) & (-2)) == -126718022) {
                return i2 - position;
            }
        }
        return -1;
    }

    public static Format parseAc3AnnexFFormat(ParsableByteArray parsableByteArray, String str, String str2, DrmInitData drmInitData) {
        ParsableBitArray parsableBitArray = new ParsableBitArray();
        parsableBitArray.reset(parsableByteArray);
        int i2 = f20441b[parsableBitArray.readBits(2)];
        parsableBitArray.skipBits(8);
        int i7 = f20443d[parsableBitArray.readBits(3)];
        if (parsableBitArray.readBits(1) != 0) {
            i7++;
        }
        int i8 = f20444e[parsableBitArray.readBits(5)] * 1000;
        parsableBitArray.byteAlign();
        parsableByteArray.setPosition(parsableBitArray.getBytePosition());
        return new Format.Builder().setId(str).setSampleMimeType(MimeTypes.AUDIO_AC3).setChannelCount(i7).setSampleRate(i2).setDrmInitData(drmInitData).setLanguage(str2).setAverageBitrate(i8).setPeakBitrate(i8).build();
    }

    public static int parseAc3SyncframeAudioSampleCount(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return f20440a[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    public static C1719c parseAc3SyncframeInfo(ParsableBitArray parsableBitArray) {
        int a7;
        int i2;
        int i7;
        int i8;
        String str;
        int i9;
        int i10;
        int readBits;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int position = parsableBitArray.getPosition();
        parsableBitArray.skipBits(40);
        boolean z6 = parsableBitArray.readBits(5) > 10;
        parsableBitArray.setPosition(position);
        int[] iArr = f20443d;
        int[] iArr2 = f20441b;
        if (z6) {
            parsableBitArray.skipBits(16);
            int readBits2 = parsableBitArray.readBits(2);
            if (readBits2 == 0) {
                r9 = 0;
            } else if (readBits2 == 1) {
                r9 = 1;
            } else if (readBits2 == 2) {
                r9 = 2;
            }
            parsableBitArray.skipBits(3);
            a7 = (parsableBitArray.readBits(11) + 1) * 2;
            int readBits3 = parsableBitArray.readBits(2);
            if (readBits3 == 3) {
                i11 = f20442c[parsableBitArray.readBits(2)];
                readBits = 3;
                i12 = 6;
            } else {
                readBits = parsableBitArray.readBits(2);
                int i17 = f20440a[readBits];
                i11 = iArr2[readBits3];
                i12 = i17;
            }
            i8 = i12 * 256;
            int i18 = (a7 * i11) / (i12 * 32);
            int readBits4 = parsableBitArray.readBits(3);
            boolean readBit = parsableBitArray.readBit();
            i7 = iArr[readBits4] + (readBit ? 1 : 0);
            parsableBitArray.skipBits(10);
            if (parsableBitArray.readBit()) {
                parsableBitArray.skipBits(8);
            }
            if (readBits4 == 0) {
                parsableBitArray.skipBits(5);
                if (parsableBitArray.readBit()) {
                    parsableBitArray.skipBits(8);
                }
            }
            if (r9 == 1 && parsableBitArray.readBit()) {
                parsableBitArray.skipBits(16);
            }
            if (parsableBitArray.readBit()) {
                if (readBits4 > 2) {
                    parsableBitArray.skipBits(2);
                }
                if ((readBits4 & 1) == 0 || readBits4 <= 2) {
                    i14 = 6;
                } else {
                    i14 = 6;
                    parsableBitArray.skipBits(6);
                }
                if ((readBits4 & 4) != 0) {
                    parsableBitArray.skipBits(i14);
                }
                if (readBit && parsableBitArray.readBit()) {
                    parsableBitArray.skipBits(5);
                }
                if (r9 == 0) {
                    if (parsableBitArray.readBit()) {
                        i15 = 6;
                        parsableBitArray.skipBits(6);
                    } else {
                        i15 = 6;
                    }
                    if (readBits4 == 0 && parsableBitArray.readBit()) {
                        parsableBitArray.skipBits(i15);
                    }
                    if (parsableBitArray.readBit()) {
                        parsableBitArray.skipBits(i15);
                    }
                    int readBits5 = parsableBitArray.readBits(2);
                    if (readBits5 == 1) {
                        parsableBitArray.skipBits(5);
                        i16 = 2;
                    } else {
                        if (readBits5 == 2) {
                            parsableBitArray.skipBits(12);
                        } else if (readBits5 == 3) {
                            int readBits6 = parsableBitArray.readBits(5);
                            if (parsableBitArray.readBit()) {
                                parsableBitArray.skipBits(5);
                                if (parsableBitArray.readBit()) {
                                    parsableBitArray.skipBits(4);
                                }
                                if (parsableBitArray.readBit()) {
                                    parsableBitArray.skipBits(4);
                                }
                                if (parsableBitArray.readBit()) {
                                    parsableBitArray.skipBits(4);
                                }
                                if (parsableBitArray.readBit()) {
                                    parsableBitArray.skipBits(4);
                                }
                                if (parsableBitArray.readBit()) {
                                    parsableBitArray.skipBits(4);
                                }
                                if (parsableBitArray.readBit()) {
                                    parsableBitArray.skipBits(4);
                                }
                                if (parsableBitArray.readBit()) {
                                    parsableBitArray.skipBits(4);
                                }
                                if (parsableBitArray.readBit()) {
                                    if (parsableBitArray.readBit()) {
                                        parsableBitArray.skipBits(4);
                                    }
                                    if (parsableBitArray.readBit()) {
                                        parsableBitArray.skipBits(4);
                                    }
                                }
                            }
                            if (parsableBitArray.readBit()) {
                                parsableBitArray.skipBits(5);
                                if (parsableBitArray.readBit()) {
                                    parsableBitArray.skipBits(7);
                                    if (parsableBitArray.readBit()) {
                                        parsableBitArray.skipBits(8);
                                        i16 = 2;
                                        parsableBitArray.skipBits((readBits6 + i16) * 8);
                                        parsableBitArray.byteAlign();
                                    }
                                }
                            }
                            i16 = 2;
                            parsableBitArray.skipBits((readBits6 + i16) * 8);
                            parsableBitArray.byteAlign();
                        }
                        i16 = 2;
                    }
                    if (readBits4 < i16) {
                        if (parsableBitArray.readBit()) {
                            parsableBitArray.skipBits(14);
                        }
                        if (readBits4 == 0 && parsableBitArray.readBit()) {
                            parsableBitArray.skipBits(14);
                        }
                    }
                    if (parsableBitArray.readBit()) {
                        if (readBits == 0) {
                            parsableBitArray.skipBits(5);
                        } else {
                            for (int i19 = 0; i19 < i12; i19++) {
                                if (parsableBitArray.readBit()) {
                                    parsableBitArray.skipBits(5);
                                }
                            }
                        }
                    }
                }
            }
            if (parsableBitArray.readBit()) {
                parsableBitArray.skipBits(5);
                if (readBits4 == 2) {
                    parsableBitArray.skipBits(4);
                }
                if (readBits4 >= 6) {
                    parsableBitArray.skipBits(2);
                }
                if (parsableBitArray.readBit()) {
                    parsableBitArray.skipBits(8);
                }
                if (readBits4 == 0 && parsableBitArray.readBit()) {
                    parsableBitArray.skipBits(8);
                }
                if (readBits3 < 3) {
                    parsableBitArray.skipBit();
                }
            }
            if (r9 == 0 && readBits != 3) {
                parsableBitArray.skipBit();
            }
            if (r9 == 2 && (readBits == 3 || parsableBitArray.readBit())) {
                i13 = 6;
                parsableBitArray.skipBits(6);
            } else {
                i13 = 6;
            }
            str = (parsableBitArray.readBit() && parsableBitArray.readBits(i13) == 1 && parsableBitArray.readBits(8) == 1) ? MimeTypes.AUDIO_E_AC3_JOC : MimeTypes.AUDIO_E_AC3;
            i10 = i11;
            i9 = i18;
        } else {
            parsableBitArray.skipBits(32);
            int readBits7 = parsableBitArray.readBits(2);
            String str2 = readBits7 == 3 ? null : MimeTypes.AUDIO_AC3;
            int readBits8 = parsableBitArray.readBits(6);
            int i20 = f20444e[readBits8 / 2] * 1000;
            a7 = a(readBits7, readBits8);
            parsableBitArray.skipBits(8);
            int readBits9 = parsableBitArray.readBits(3);
            if ((readBits9 & 1) == 0 || readBits9 == 1) {
                i2 = 2;
            } else {
                i2 = 2;
                parsableBitArray.skipBits(2);
            }
            if ((readBits9 & 4) != 0) {
                parsableBitArray.skipBits(i2);
            }
            if (readBits9 == i2) {
                parsableBitArray.skipBits(i2);
            }
            r9 = readBits7 < 3 ? iArr2[readBits7] : -1;
            i7 = iArr[readBits9] + (parsableBitArray.readBit() ? 1 : 0);
            i8 = 1536;
            str = str2;
            i9 = i20;
            i10 = r9;
        }
        return new C1719c(str, i7, i10, a7, i8, i9);
    }

    public static int parseAc3SyncframeSize(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        byte b7 = bArr[4];
        return a((b7 & 192) >> 6, b7 & 63);
    }

    public static Format parseEAc3AnnexFFormat(ParsableByteArray parsableByteArray, String str, String str2, DrmInitData drmInitData) {
        String str3;
        ParsableBitArray parsableBitArray = new ParsableBitArray();
        parsableBitArray.reset(parsableByteArray);
        int readBits = parsableBitArray.readBits(13) * 1000;
        parsableBitArray.skipBits(3);
        int i2 = f20441b[parsableBitArray.readBits(2)];
        parsableBitArray.skipBits(10);
        int i7 = f20443d[parsableBitArray.readBits(3)];
        if (parsableBitArray.readBits(1) != 0) {
            i7++;
        }
        parsableBitArray.skipBits(3);
        int readBits2 = parsableBitArray.readBits(4);
        parsableBitArray.skipBits(1);
        if (readBits2 > 0) {
            parsableBitArray.skipBits(6);
            if (parsableBitArray.readBits(1) != 0) {
                i7 += 2;
            }
            parsableBitArray.skipBits(1);
        }
        if (parsableBitArray.bitsLeft() > 7) {
            parsableBitArray.skipBits(7);
            if (parsableBitArray.readBits(1) != 0) {
                str3 = MimeTypes.AUDIO_E_AC3_JOC;
                parsableBitArray.byteAlign();
                parsableByteArray.setPosition(parsableBitArray.getBytePosition());
                return new Format.Builder().setId(str).setSampleMimeType(str3).setChannelCount(i7).setSampleRate(i2).setDrmInitData(drmInitData).setLanguage(str2).setPeakBitrate(readBits).build();
            }
        }
        str3 = MimeTypes.AUDIO_E_AC3;
        parsableBitArray.byteAlign();
        parsableByteArray.setPosition(parsableBitArray.getBytePosition());
        return new Format.Builder().setId(str).setSampleMimeType(str3).setChannelCount(i7).setSampleRate(i2).setDrmInitData(drmInitData).setLanguage(str2).setPeakBitrate(readBits).build();
    }

    public static int parseTrueHdSyncframeAudioSampleCount(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b7 = bArr[7];
            if ((b7 & 254) == 186) {
                return 40 << ((bArr[(b7 & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
            }
        }
        return 0;
    }

    public static int parseTrueHdSyncframeAudioSampleCount(ByteBuffer byteBuffer, int i2) {
        return 40 << ((byteBuffer.get((byteBuffer.position() + i2) + ((byteBuffer.get((byteBuffer.position() + i2) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7);
    }
}
