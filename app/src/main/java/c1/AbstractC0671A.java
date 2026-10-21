package c1;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;

/* renamed from: c1.A, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0671A {
    public static int a(ParsableBitArray parsableBitArray, int i2, int i7, int i8) {
        P3.v.checkArgument(Math.max(Math.max(i2, i7), i8) <= 31);
        int i9 = (1 << i2) - 1;
        int i10 = (1 << i7) - 1;
        S3.e.checkedAdd(S3.e.checkedAdd(i9, i10), 1 << i8);
        if (parsableBitArray.bitsLeft() < i2) {
            return -1;
        }
        int readBits = parsableBitArray.readBits(i2);
        if (readBits == i9) {
            if (parsableBitArray.bitsLeft() < i7) {
                return -1;
            }
            int readBits2 = parsableBitArray.readBits(i7);
            readBits += readBits2;
            if (readBits2 == i10) {
                if (parsableBitArray.bitsLeft() < i8) {
                    return -1;
                }
                return parsableBitArray.readBits(i8) + readBits;
            }
        }
        return readBits;
    }

    public static void b(ParsableBitArray parsableBitArray) {
        parsableBitArray.skipBits(3);
        parsableBitArray.skipBits(8);
        boolean readBit = parsableBitArray.readBit();
        boolean readBit2 = parsableBitArray.readBit();
        if (readBit) {
            parsableBitArray.skipBits(5);
        }
        if (readBit2) {
            parsableBitArray.skipBits(6);
        }
    }

    public static void c(ParsableBitArray parsableBitArray) {
        int readBits;
        int readBits2 = parsableBitArray.readBits(2);
        if (readBits2 == 0) {
            parsableBitArray.skipBits(6);
            return;
        }
        int a7 = a(parsableBitArray, 5, 8, 16) + 1;
        if (readBits2 == 1) {
            parsableBitArray.skipBits(a7 * 7);
            return;
        }
        if (readBits2 == 2) {
            boolean readBit = parsableBitArray.readBit();
            int i2 = readBit ? 1 : 5;
            int i7 = readBit ? 7 : 5;
            int i8 = readBit ? 8 : 6;
            int i9 = 0;
            while (i9 < a7) {
                if (parsableBitArray.readBit()) {
                    parsableBitArray.skipBits(7);
                    readBits = 0;
                } else {
                    if (parsableBitArray.readBits(2) == 3 && parsableBitArray.readBits(i7) * i2 != 0) {
                        parsableBitArray.skipBit();
                    }
                    readBits = parsableBitArray.readBits(i8) * i2;
                    if (readBits != 0 && readBits != 180) {
                        parsableBitArray.skipBit();
                    }
                    parsableBitArray.skipBit();
                }
                if (readBits != 0 && readBits != 180 && parsableBitArray.readBit()) {
                    i9++;
                }
                i9++;
            }
        }
    }

    public static boolean isSyncWord(int i2) {
        return (i2 & 16777215) == 12583333;
    }

    public static int parseAudioTruncationInfo(ParsableBitArray parsableBitArray) {
        if (!parsableBitArray.readBit()) {
            return 0;
        }
        parsableBitArray.skipBits(2);
        return parsableBitArray.readBits(13);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0072 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean parseMhasPacketHeader(androidx.media3.common.util.ParsableBitArray r18, c1.C0720y r19) throws androidx.media3.common.ParserException {
        /*
            r0 = r18
            r1 = r19
            r0.getBytePosition()
            r2 = 3
            r3 = 8
            int r2 = a(r0, r2, r3, r3)
            r1.f8949a = r2
            r4 = 0
            r5 = -1
            if (r2 != r5) goto L15
            return r4
        L15:
            r2 = 2
            int r6 = java.lang.Math.max(r2, r3)
            r7 = 32
            int r6 = java.lang.Math.max(r6, r7)
            r8 = 63
            r9 = 1
            if (r6 > r8) goto L27
            r6 = r9
            goto L28
        L27:
            r6 = r4
        L28:
            P3.v.checkArgument(r6)
            r10 = 3
            r12 = 255(0xff, double:1.26E-321)
            long r14 = S3.g.checkedAdd(r10, r12)
            r16 = r10
            r10 = 4294967296(0x100000000, double:2.121995791E-314)
            S3.g.checkedAdd(r14, r10)
            int r6 = r0.bitsLeft()
            r10 = -1
            if (r6 >= r2) goto L47
        L45:
            r14 = r10
            goto L6c
        L47:
            long r14 = r0.readBitsToLong(r2)
            int r6 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r6 != 0) goto L6c
            int r6 = r0.bitsLeft()
            if (r6 >= r3) goto L56
            goto L45
        L56:
            long r16 = r0.readBitsToLong(r3)
            long r14 = r14 + r16
            int r3 = (r16 > r12 ? 1 : (r16 == r12 ? 0 : -1))
            if (r3 != 0) goto L6c
            int r3 = r0.bitsLeft()
            if (r3 >= r7) goto L67
            goto L45
        L67:
            long r6 = r0.readBitsToLong(r7)
            long r14 = r14 + r6
        L6c:
            r1.f8950b = r14
            int r3 = (r14 > r10 ? 1 : (r14 == r10 ? 0 : -1))
            if (r3 != 0) goto L73
            return r4
        L73:
            r6 = 16
            int r3 = (r14 > r6 ? 1 : (r14 == r6 ? 0 : -1))
            if (r3 > 0) goto Lae
            r6 = 0
            int r3 = (r14 > r6 ? 1 : (r14 == r6 ? 0 : -1))
            if (r3 != 0) goto La0
            int r3 = r1.f8949a
            r6 = 0
            if (r3 == r9) goto L99
            if (r3 == r2) goto L92
            r2 = 17
            if (r3 == r2) goto L8b
            goto La0
        L8b:
            java.lang.String r0 = "AudioTruncation packet with invalid packet label 0"
            androidx.media3.common.ParserException r0 = androidx.media3.common.ParserException.createForMalformedContainer(r0, r6)
            throw r0
        L92:
            java.lang.String r0 = "Mpegh3daFrame packet with invalid packet label 0"
            androidx.media3.common.ParserException r0 = androidx.media3.common.ParserException.createForMalformedContainer(r0, r6)
            throw r0
        L99:
            java.lang.String r0 = "Mpegh3daConfig packet with invalid packet label 0"
            androidx.media3.common.ParserException r0 = androidx.media3.common.ParserException.createForMalformedContainer(r0, r6)
            throw r0
        La0:
            r2 = 11
            r3 = 24
            int r0 = a(r0, r2, r3, r3)
            r1.f8951c = r0
            if (r0 == r5) goto Lad
            return r9
        Lad:
            return r4
        Lae:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "Contains sub-stream with an invalid packet label "
            r0.<init>(r2)
            long r1 = r1.f8950b
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            androidx.media3.common.ParserException r0 = androidx.media3.common.ParserException.createForUnsupportedContainerFeature(r0)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c1.AbstractC0671A.parseMhasPacketHeader(androidx.media3.common.util.ParsableBitArray, c1.y):boolean");
    }

    public static C0721z parseMpegh3daConfig(ParsableBitArray parsableBitArray) throws ParserException {
        int i2;
        int i7;
        char c7;
        int i8;
        int i9;
        int i10;
        int readBits = parsableBitArray.readBits(8);
        int readBits2 = parsableBitArray.readBits(5);
        if (readBits2 != 31) {
            switch (readBits2) {
                case 0:
                    i2 = 96000;
                    break;
                case 1:
                    i2 = 88200;
                    break;
                case 2:
                    i2 = 64000;
                    break;
                case 3:
                    i2 = 48000;
                    break;
                case 4:
                    i2 = 44100;
                    break;
                case 5:
                    i2 = 32000;
                    break;
                case 6:
                    i2 = 24000;
                    break;
                case 7:
                    i2 = 22050;
                    break;
                case 8:
                    i2 = 16000;
                    break;
                case 9:
                    i2 = 12000;
                    break;
                case 10:
                    i2 = 11025;
                    break;
                case 11:
                    i2 = 8000;
                    break;
                case 12:
                    i2 = 7350;
                    break;
                case 13:
                case 14:
                default:
                    throw ParserException.createForUnsupportedContainerFeature("Unsupported sampling rate index " + readBits2);
                case 15:
                    i2 = 57600;
                    break;
                case 16:
                    i2 = 51200;
                    break;
                case 17:
                    i2 = 40000;
                    break;
                case 18:
                    i2 = 38400;
                    break;
                case 19:
                    i2 = 34150;
                    break;
                case 20:
                    i2 = 28800;
                    break;
                case 21:
                    i2 = 25600;
                    break;
                case 22:
                    i2 = 20000;
                    break;
                case 23:
                    i2 = 19200;
                    break;
                case 24:
                    i2 = 17075;
                    break;
                case 25:
                    i2 = 14400;
                    break;
                case 26:
                    i2 = 12800;
                    break;
                case 27:
                    i2 = 9600;
                    break;
            }
        } else {
            i2 = parsableBitArray.readBits(24);
        }
        int readBits3 = parsableBitArray.readBits(3);
        int i11 = 1;
        if (readBits3 == 0) {
            i7 = 768;
        } else if (readBits3 == 1) {
            i7 = 1024;
        } else if (readBits3 == 2 || readBits3 == 3) {
            i7 = 2048;
        } else {
            if (readBits3 != 4) {
                throw ParserException.createForUnsupportedContainerFeature("Unsupported coreSbrFrameLengthIndex " + readBits3);
            }
            i7 = 4096;
        }
        if (readBits3 == 0 || readBits3 == 1) {
            c7 = 0;
        } else if (readBits3 == 2) {
            c7 = 2;
        } else if (readBits3 == 3) {
            c7 = 3;
        } else {
            if (readBits3 != 4) {
                throw ParserException.createForUnsupportedContainerFeature("Unsupported coreSbrFrameLengthIndex " + readBits3);
            }
            c7 = 1;
        }
        parsableBitArray.skipBits(2);
        c(parsableBitArray);
        int readBits4 = parsableBitArray.readBits(5);
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = 16;
            if (i12 < readBits4 + 1) {
                int readBits5 = parsableBitArray.readBits(3);
                i13 += a(parsableBitArray, 5, 8, 16) + 1;
                if ((readBits5 == 0 || readBits5 == 2) && parsableBitArray.readBit()) {
                    c(parsableBitArray);
                }
                i12++;
            } else {
                int a7 = a(parsableBitArray, 4, 8, 16) + 1;
                parsableBitArray.skipBit();
                int i15 = 0;
                while (true) {
                    double d7 = 2.0d;
                    if (i15 >= a7) {
                        byte[] bArr = null;
                        if (parsableBitArray.readBit()) {
                            int a8 = a(parsableBitArray, 2, 4, 8) + 1;
                            for (int i16 = 0; i16 < a8; i16++) {
                                int a9 = a(parsableBitArray, 4, 8, 16);
                                int a10 = a(parsableBitArray, 4, 8, 16);
                                if (a9 == 7) {
                                    int readBits6 = parsableBitArray.readBits(4) + 1;
                                    parsableBitArray.skipBits(4);
                                    byte[] bArr2 = new byte[readBits6];
                                    for (int i17 = 0; i17 < readBits6; i17++) {
                                        bArr2[i17] = (byte) parsableBitArray.readBits(8);
                                    }
                                    bArr = bArr2;
                                } else {
                                    parsableBitArray.skipBits(a10 * 8);
                                }
                            }
                        }
                        switch (i2) {
                            case 14700:
                            case 16000:
                                d7 = 3.0d;
                                break;
                            case 22050:
                            case 24000:
                                break;
                            case 29400:
                            case 32000:
                            case 58800:
                            case 64000:
                                d7 = 1.5d;
                                break;
                            case 44100:
                            case 48000:
                            case 88200:
                            case 96000:
                                d7 = 1.0d;
                                break;
                            default:
                                throw ParserException.createForUnsupportedContainerFeature("Unsupported sampling rate " + i2);
                        }
                        return new C0721z(readBits, (int) (i2 * d7), bArr, (int) (i7 * d7));
                    }
                    int readBits7 = parsableBitArray.readBits(2);
                    if (readBits7 == 0) {
                        i8 = i11;
                        i9 = i15;
                        parsableBitArray.skipBits(3);
                        if (parsableBitArray.readBit()) {
                            parsableBitArray.skipBits(13);
                        }
                        if (c7 > 0) {
                            b(parsableBitArray);
                        }
                    } else if (readBits7 != i11) {
                        if (readBits7 == 3) {
                            a(parsableBitArray, 4, 8, i14);
                            int a11 = a(parsableBitArray, 4, 8, i14);
                            if (parsableBitArray.readBit()) {
                                a(parsableBitArray, 8, i14, 0);
                            }
                            parsableBitArray.skipBit();
                            if (a11 > 0) {
                                parsableBitArray.skipBits(a11 * 8);
                            }
                        }
                        i8 = i11;
                        i9 = i15;
                    } else {
                        parsableBitArray.skipBits(3);
                        boolean readBit = parsableBitArray.readBit();
                        if (readBit) {
                            parsableBitArray.skipBits(13);
                        }
                        if (readBit) {
                            parsableBitArray.skipBit();
                        }
                        if (c7 > 0) {
                            b(parsableBitArray);
                            i10 = parsableBitArray.readBits(2);
                        } else {
                            i10 = 0;
                        }
                        i8 = i11;
                        if (i10 > 0) {
                            parsableBitArray.skipBits(6);
                            int readBits8 = parsableBitArray.readBits(2);
                            parsableBitArray.skipBits(4);
                            if (parsableBitArray.readBit()) {
                                parsableBitArray.skipBits(5);
                            }
                            if (i10 == 2 || i10 == 3) {
                                parsableBitArray.skipBits(6);
                            }
                            if (readBits8 == 2) {
                                parsableBitArray.skipBit();
                            }
                        }
                        i9 = i15;
                        int floor = ((int) Math.floor(Math.log(i13 - 1) / Math.log(2.0d))) + 1;
                        int readBits9 = parsableBitArray.readBits(2);
                        if (readBits9 > 0 && parsableBitArray.readBit()) {
                            parsableBitArray.skipBits(floor);
                        }
                        if (parsableBitArray.readBit()) {
                            parsableBitArray.skipBits(floor);
                        }
                        if (c7 == 0 && readBits9 == 0) {
                            parsableBitArray.skipBit();
                        }
                    }
                    i15 = i9 + 1;
                    i11 = i8;
                    i14 = 16;
                }
            }
        }
    }
}
