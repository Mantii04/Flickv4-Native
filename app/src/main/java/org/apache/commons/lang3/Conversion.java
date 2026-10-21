package org.apache.commons.lang3;

import A.i;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import cz.msebera.android.httpclient.HttpStatus;
import java.util.UUID;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes2.dex */
public class Conversion {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final boolean[] TTTT = {true, true, true, true};
    private static final boolean[] FTTT = {false, true, true, true};
    private static final boolean[] TFTT = {true, false, true, true};
    private static final boolean[] FFTT = {false, false, true, true};
    private static final boolean[] TTFT = {true, true, false, true};
    private static final boolean[] FTFT = {false, true, false, true};
    private static final boolean[] TFFT = {true, false, false, true};
    private static final boolean[] FFFT = {false, false, false, true};
    private static final boolean[] TTTF = {true, true, true, false};
    private static final boolean[] FTTF = {false, true, true, false};
    private static final boolean[] TFTF = {true, false, true, false};
    private static final boolean[] FFTF = {false, false, true, false};
    private static final boolean[] TTFF = {true, true, false, false};
    private static final boolean[] FTFF = {false, true, false, false};
    private static final boolean[] TFFF = {true, false, false, false};
    private static final boolean[] FFFF = {false, false, false, false};

    public static char binaryBeMsb0ToHexDigit(boolean[] zArr) {
        return binaryBeMsb0ToHexDigit(zArr, 0);
    }

    public static byte binaryToByte(boolean[] zArr, int i2, byte b7, int i7, int i8) {
        if ((zArr.length == 0 && i2 == 0) || i8 == 0) {
            return b7;
        }
        if ((i8 - 1) + i7 >= 8) {
            throw new IllegalArgumentException("nBools-1+dstPos is greater or equal to than 8");
        }
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = i9 + i7;
            b7 = (byte) ((b7 & (~(1 << i10))) | ((zArr[i9 + i2] ? 1 : 0) << i10));
        }
        return b7;
    }

    public static char binaryToHexDigit(boolean[] zArr) {
        return binaryToHexDigit(zArr, 0);
    }

    public static char binaryToHexDigitMsb0_4bits(boolean[] zArr) {
        return binaryToHexDigitMsb0_4bits(zArr, 0);
    }

    public static int binaryToInt(boolean[] zArr, int i2, int i7, int i8, int i9) {
        if ((zArr.length == 0 && i2 == 0) || i9 == 0) {
            return i7;
        }
        if ((i9 - 1) + i8 >= 32) {
            throw new IllegalArgumentException("nBools-1+dstPos is greater or equal to than 32");
        }
        for (int i10 = 0; i10 < i9; i10++) {
            int i11 = i10 + i8;
            i7 = (i7 & (~(1 << i11))) | ((zArr[i10 + i2] ? 1 : 0) << i11);
        }
        return i7;
    }

    public static long binaryToLong(boolean[] zArr, int i2, long j7, int i7, int i8) {
        if ((zArr.length == 0 && i2 == 0) || i8 == 0) {
            return j7;
        }
        if ((i8 - 1) + i7 >= 64) {
            throw new IllegalArgumentException("nBools-1+dstPos is greater or equal to than 64");
        }
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = i9 + i7;
            j7 = (j7 & (~(1 << i10))) | ((zArr[i9 + i2] ? 1L : 0L) << i10);
        }
        return j7;
    }

    public static short binaryToShort(boolean[] zArr, int i2, short s6, int i7, int i8) {
        if ((zArr.length == 0 && i2 == 0) || i8 == 0) {
            return s6;
        }
        if ((i8 - 1) + i7 >= 16) {
            throw new IllegalArgumentException("nBools-1+dstPos is greater or equal to than 16");
        }
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = i9 + i7;
            s6 = (short) ((s6 & (~(1 << i10))) | ((zArr[i9 + i2] ? 1 : 0) << i10));
        }
        return s6;
    }

    public static int byteArrayToInt(byte[] bArr, int i2, int i7, int i8, int i9) {
        if ((bArr.length == 0 && i2 == 0) || i9 == 0) {
            return i7;
        }
        if (i.a(i9, 1, 8, i8) >= 32) {
            throw new IllegalArgumentException("(nBytes-1)*8+dstPos is greater or equal to than 32");
        }
        for (int i10 = 0; i10 < i9; i10++) {
            int i11 = (i10 * 8) + i8;
            i7 = (i7 & (~(255 << i11))) | ((bArr[i10 + i2] & 255) << i11);
        }
        return i7;
    }

    public static long byteArrayToLong(byte[] bArr, int i2, long j7, int i7, int i8) {
        if ((bArr.length == 0 && i2 == 0) || i8 == 0) {
            return j7;
        }
        if (i.a(i8, 1, 8, i7) >= 64) {
            throw new IllegalArgumentException("(nBytes-1)*8+dstPos is greater or equal to than 64");
        }
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = (i9 * 8) + i7;
            j7 = (j7 & (~(255 << i10))) | ((bArr[i9 + i2] & 255) << i10);
        }
        return j7;
    }

    public static short byteArrayToShort(byte[] bArr, int i2, short s6, int i7, int i8) {
        if ((bArr.length == 0 && i2 == 0) || i8 == 0) {
            return s6;
        }
        if (i.a(i8, 1, 8, i7) >= 16) {
            throw new IllegalArgumentException("(nBytes-1)*8+dstPos is greater or equal to than 16");
        }
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = (i9 * 8) + i7;
            s6 = (short) ((s6 & (~(255 << i10))) | ((bArr[i9 + i2] & 255) << i10));
        }
        return s6;
    }

    public static UUID byteArrayToUuid(byte[] bArr, int i2) {
        if (bArr.length - i2 >= 16) {
            return new UUID(byteArrayToLong(bArr, i2, 0L, 0, 8), byteArrayToLong(bArr, i2 + 8, 0L, 0, 8));
        }
        throw new IllegalArgumentException("Need at least 16 bytes for UUID");
    }

    public static boolean[] byteToBinary(byte b7, int i2, boolean[] zArr, int i7, int i8) {
        if (i8 != 0) {
            if ((i8 - 1) + i2 >= 8) {
                throw new IllegalArgumentException("nBools-1+srcPos is greater or equal to than 8");
            }
            for (int i9 = 0; i9 < i8; i9++) {
                int i10 = i7 + i9;
                boolean z6 = true;
                if (((b7 >> (i9 + i2)) & 1) == 0) {
                    z6 = false;
                }
                zArr[i10] = z6;
            }
        }
        return zArr;
    }

    public static String byteToHex(byte b7, int i2, String str, int i7, int i8) {
        if (i8 == 0) {
            return str;
        }
        if (i.a(i8, 1, 4, i2) >= 8) {
            throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greater or equal to than 8");
        }
        StringBuilder sb = new StringBuilder(str);
        int length = sb.length();
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = (b7 >> ((i9 * 4) + i2)) & 15;
            int i11 = i7 + i9;
            if (i11 == length) {
                length++;
                sb.append(intToHexDigit(i10));
            } else {
                sb.setCharAt(i11, intToHexDigit(i10));
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean[] hexDigitMsb0ToBinary(char r3) {
        /*
            switch(r3) {
                case 48: goto La9;
                case 49: goto La0;
                case 50: goto L97;
                case 51: goto L8e;
                case 52: goto L85;
                case 53: goto L7c;
                case 54: goto L73;
                case 55: goto L6a;
                case 56: goto L61;
                case 57: goto L58;
                default: goto L3;
            }
        L3:
            switch(r3) {
                case 65: goto L4f;
                case 66: goto L46;
                case 67: goto L3d;
                case 68: goto L34;
                case 69: goto L2b;
                case 70: goto L22;
                default: goto L6;
            }
        L6:
            switch(r3) {
                case 97: goto L4f;
                case 98: goto L46;
                case 99: goto L3d;
                case 100: goto L34;
                case 101: goto L2b;
                case 102: goto L22;
                default: goto L9;
            }
        L9:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Cannot interpret '"
            r1.<init>(r2)
            r1.append(r3)
            java.lang.String r3 = "' as a hexadecimal digit"
            r1.append(r3)
            java.lang.String r3 = r1.toString()
            r0.<init>(r3)
            throw r0
        L22:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TTTT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L2b:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TTTF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L34:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TTFT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L3d:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TTFF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L46:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TFTT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L4f:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TFTF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L58:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TFFT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L61:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TFFF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L6a:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FTTT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L73:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FTTF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L7c:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FTFT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L85:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FTFF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L8e:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FFTT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L97:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FFTF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        La0:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FFFT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        La9:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FFFF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.Conversion.hexDigitMsb0ToBinary(char):boolean[]");
    }

    public static int hexDigitMsb0ToInt(char c7) {
        switch (c7) {
            case '0':
                return 0;
            case '1':
                return 8;
            case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                return 4;
            case '3':
                return 12;
            case '4':
                return 2;
            case '5':
                return 10;
            case '6':
                return 6;
            case '7':
                return 14;
            case '8':
                return 1;
            case '9':
                return 9;
            default:
                switch (c7) {
                    case 'A':
                        return 5;
                    case 'B':
                        return 13;
                    case 'C':
                        return 3;
                    case 'D':
                        return 11;
                    case 'E':
                        return 7;
                    case 'F':
                        return 15;
                    default:
                        switch (c7) {
                            case 'a':
                                return 5;
                            case 'b':
                                return 13;
                            case 'c':
                                return 3;
                            case 'd':
                                return 11;
                            case 'e':
                                return 7;
                            case HttpStatus.SC_PROCESSING /* 102 */:
                                return 15;
                            default:
                                throw new IllegalArgumentException("Cannot interpret '" + c7 + "' as a hexadecimal digit");
                        }
                }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean[] hexDigitToBinary(char r3) {
        /*
            switch(r3) {
                case 48: goto La9;
                case 49: goto La0;
                case 50: goto L97;
                case 51: goto L8e;
                case 52: goto L85;
                case 53: goto L7c;
                case 54: goto L73;
                case 55: goto L6a;
                case 56: goto L61;
                case 57: goto L58;
                default: goto L3;
            }
        L3:
            switch(r3) {
                case 65: goto L4f;
                case 66: goto L46;
                case 67: goto L3d;
                case 68: goto L34;
                case 69: goto L2b;
                case 70: goto L22;
                default: goto L6;
            }
        L6:
            switch(r3) {
                case 97: goto L4f;
                case 98: goto L46;
                case 99: goto L3d;
                case 100: goto L34;
                case 101: goto L2b;
                case 102: goto L22;
                default: goto L9;
            }
        L9:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Cannot interpret '"
            r1.<init>(r2)
            r1.append(r3)
            java.lang.String r3 = "' as a hexadecimal digit"
            r1.append(r3)
            java.lang.String r3 = r1.toString()
            r0.<init>(r3)
            throw r0
        L22:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TTTT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L2b:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FTTT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L34:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TFTT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L3d:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FFTT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L46:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TTFT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L4f:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FTFT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L58:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TFFT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L61:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FFFT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L6a:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TTTF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L73:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FTTF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L7c:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TFTF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L85:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FFTF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L8e:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TTFF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L97:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FTFF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        La0:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TFFF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        La9:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FFFF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.Conversion.hexDigitToBinary(char):boolean[]");
    }

    public static int hexDigitToInt(char c7) {
        int digit = Character.digit(c7, 16);
        if (digit >= 0) {
            return digit;
        }
        throw new IllegalArgumentException("Cannot interpret '" + c7 + "' as a hexadecimal digit");
    }

    public static byte hexToByte(String str, int i2, byte b7, int i7, int i8) {
        if (i8 == 0) {
            return b7;
        }
        if (i.a(i8, 1, 4, i7) >= 8) {
            throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greater or equal to than 8");
        }
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = (i9 * 4) + i7;
            b7 = (byte) ((b7 & (~(15 << i10))) | ((hexDigitToInt(str.charAt(i9 + i2)) & 15) << i10));
        }
        return b7;
    }

    public static int hexToInt(String str, int i2, int i7, int i8, int i9) {
        if (i9 == 0) {
            return i7;
        }
        if (i.a(i9, 1, 4, i8) >= 32) {
            throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greater or equal to than 32");
        }
        for (int i10 = 0; i10 < i9; i10++) {
            int i11 = (i10 * 4) + i8;
            i7 = (i7 & (~(15 << i11))) | ((hexDigitToInt(str.charAt(i10 + i2)) & 15) << i11);
        }
        return i7;
    }

    public static long hexToLong(String str, int i2, long j7, int i7, int i8) {
        if (i8 == 0) {
            return j7;
        }
        if (i.a(i8, 1, 4, i7) >= 64) {
            throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greater or equal to than 64");
        }
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = (i9 * 4) + i7;
            j7 = (j7 & (~(15 << i10))) | ((hexDigitToInt(str.charAt(i9 + i2)) & 15) << i10);
        }
        return j7;
    }

    public static short hexToShort(String str, int i2, short s6, int i7, int i8) {
        if (i8 == 0) {
            return s6;
        }
        if (i.a(i8, 1, 4, i7) >= 16) {
            throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greater or equal to than 16");
        }
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = (i9 * 4) + i7;
            s6 = (short) ((s6 & (~(15 << i10))) | ((hexDigitToInt(str.charAt(i9 + i2)) & 15) << i10));
        }
        return s6;
    }

    public static long intArrayToLong(int[] iArr, int i2, long j7, int i7, int i8) {
        if ((iArr.length == 0 && i2 == 0) || i8 == 0) {
            return j7;
        }
        if (i.a(i8, 1, 32, i7) >= 64) {
            throw new IllegalArgumentException("(nInts-1)*32+dstPos is greater or equal to than 64");
        }
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = (i9 * 32) + i7;
            j7 = (j7 & (~(4294967295 << i10))) | ((iArr[i9 + i2] & 4294967295L) << i10);
        }
        return j7;
    }

    public static boolean[] intToBinary(int i2, int i7, boolean[] zArr, int i8, int i9) {
        if (i9 != 0) {
            if ((i9 - 1) + i7 >= 32) {
                throw new IllegalArgumentException("nBools-1+srcPos is greater or equal to than 32");
            }
            for (int i10 = 0; i10 < i9; i10++) {
                int i11 = i8 + i10;
                boolean z6 = true;
                if (((i2 >> (i10 + i7)) & 1) == 0) {
                    z6 = false;
                }
                zArr[i11] = z6;
            }
        }
        return zArr;
    }

    public static byte[] intToByteArray(int i2, int i7, byte[] bArr, int i8, int i9) {
        if (i9 != 0) {
            if (i.a(i9, 1, 8, i7) >= 32) {
                throw new IllegalArgumentException("(nBytes-1)*8+srcPos is greater or equal to than 32");
            }
            for (int i10 = 0; i10 < i9; i10++) {
                bArr[i8 + i10] = (byte) ((i2 >> ((i10 * 8) + i7)) & 255);
            }
        }
        return bArr;
    }

    public static String intToHex(int i2, int i7, String str, int i8, int i9) {
        if (i9 == 0) {
            return str;
        }
        if (i.a(i9, 1, 4, i7) >= 32) {
            throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greater or equal to than 32");
        }
        StringBuilder sb = new StringBuilder(str);
        int length = sb.length();
        for (int i10 = 0; i10 < i9; i10++) {
            int i11 = (i2 >> ((i10 * 4) + i7)) & 15;
            int i12 = i8 + i10;
            if (i12 == length) {
                length++;
                sb.append(intToHexDigit(i11));
            } else {
                sb.setCharAt(i12, intToHexDigit(i11));
            }
        }
        return sb.toString();
    }

    public static char intToHexDigit(int i2) {
        char forDigit = Character.forDigit(i2, 16);
        if (forDigit != 0) {
            return forDigit;
        }
        throw new IllegalArgumentException(i.f(i2, "nibble value not between 0 and 15: "));
    }

    public static char intToHexDigitMsb0(int i2) {
        switch (i2) {
            case 0:
                return '0';
            case 1:
                return '8';
            case 2:
                return '4';
            case 3:
                return 'c';
            case 4:
                return '2';
            case 5:
                return 'a';
            case 6:
                return '6';
            case 7:
                return 'e';
            case 8:
                return '1';
            case 9:
                return '9';
            case 10:
                return '5';
            case 11:
                return 'd';
            case 12:
                return '3';
            case 13:
                return 'b';
            case 14:
                return '7';
            case 15:
                return 'f';
            default:
                throw new IllegalArgumentException(i.f(i2, "nibble value not between 0 and 15: "));
        }
    }

    public static short[] intToShortArray(int i2, int i7, short[] sArr, int i8, int i9) {
        if (i9 != 0) {
            if (i.a(i9, 1, 16, i7) >= 32) {
                throw new IllegalArgumentException("(nShorts-1)*16+srcPos is greater or equal to than 32");
            }
            for (int i10 = 0; i10 < i9; i10++) {
                sArr[i8 + i10] = (short) ((i2 >> ((i10 * 16) + i7)) & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            }
        }
        return sArr;
    }

    public static boolean[] longToBinary(long j7, int i2, boolean[] zArr, int i7, int i8) {
        if (i8 != 0) {
            if ((i8 - 1) + i2 >= 64) {
                throw new IllegalArgumentException("nBools-1+srcPos is greater or equal to than 64");
            }
            for (int i9 = 0; i9 < i8; i9++) {
                zArr[i7 + i9] = (1 & (j7 >> (i9 + i2))) != 0;
            }
        }
        return zArr;
    }

    public static byte[] longToByteArray(long j7, int i2, byte[] bArr, int i7, int i8) {
        if (i8 != 0) {
            if (i.a(i8, 1, 8, i2) >= 64) {
                throw new IllegalArgumentException("(nBytes-1)*8+srcPos is greater or equal to than 64");
            }
            for (int i9 = 0; i9 < i8; i9++) {
                bArr[i7 + i9] = (byte) (255 & (j7 >> ((i9 * 8) + i2)));
            }
        }
        return bArr;
    }

    public static String longToHex(long j7, int i2, String str, int i7, int i8) {
        if (i8 == 0) {
            return str;
        }
        if (i.a(i8, 1, 4, i2) >= 64) {
            throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greater or equal to than 64");
        }
        StringBuilder sb = new StringBuilder(str);
        int length = sb.length();
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = (int) (15 & (j7 >> ((i9 * 4) + i2)));
            int i11 = i7 + i9;
            if (i11 == length) {
                length++;
                sb.append(intToHexDigit(i10));
            } else {
                sb.setCharAt(i11, intToHexDigit(i10));
            }
        }
        return sb.toString();
    }

    public static int[] longToIntArray(long j7, int i2, int[] iArr, int i7, int i8) {
        if (i8 != 0) {
            if (i.a(i8, 1, 32, i2) >= 64) {
                throw new IllegalArgumentException("(nInts-1)*32+srcPos is greater or equal to than 64");
            }
            for (int i9 = 0; i9 < i8; i9++) {
                iArr[i7 + i9] = (int) (j7 >> ((i9 * 32) + i2));
            }
        }
        return iArr;
    }

    public static short[] longToShortArray(long j7, int i2, short[] sArr, int i7, int i8) {
        if (i8 != 0) {
            if (i.a(i8, 1, 16, i2) >= 64) {
                throw new IllegalArgumentException("(nShorts-1)*16+srcPos is greater or equal to than 64");
            }
            for (int i9 = 0; i9 < i8; i9++) {
                sArr[i7 + i9] = (short) (WebSocketProtocol.PAYLOAD_SHORT_MAX & (j7 >> ((i9 * 16) + i2)));
            }
        }
        return sArr;
    }

    public static int shortArrayToInt(short[] sArr, int i2, int i7, int i8, int i9) {
        if ((sArr.length == 0 && i2 == 0) || i9 == 0) {
            return i7;
        }
        if (i.a(i9, 1, 16, i8) >= 32) {
            throw new IllegalArgumentException("(nShorts-1)*16+dstPos is greater or equal to than 32");
        }
        for (int i10 = 0; i10 < i9; i10++) {
            int i11 = (i10 * 16) + i8;
            i7 = (i7 & (~(Settings.DEFAULT_INITIAL_WINDOW_SIZE << i11))) | ((sArr[i10 + i2] & 65535) << i11);
        }
        return i7;
    }

    public static long shortArrayToLong(short[] sArr, int i2, long j7, int i7, int i8) {
        if ((sArr.length == 0 && i2 == 0) || i8 == 0) {
            return j7;
        }
        if (i.a(i8, 1, 16, i7) >= 64) {
            throw new IllegalArgumentException("(nShorts-1)*16+dstPos is greater or equal to than 64");
        }
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = (i9 * 16) + i7;
            j7 = (j7 & (~(WebSocketProtocol.PAYLOAD_SHORT_MAX << i10))) | ((sArr[i9 + i2] & WebSocketProtocol.PAYLOAD_SHORT_MAX) << i10);
        }
        return j7;
    }

    public static boolean[] shortToBinary(short s6, int i2, boolean[] zArr, int i7, int i8) {
        if (i8 != 0) {
            if ((i8 - 1) + i2 >= 16) {
                throw new IllegalArgumentException("nBools-1+srcPos is greater or equal to than 16");
            }
            for (int i9 = 0; i9 < i8; i9++) {
                int i10 = i7 + i9;
                boolean z6 = true;
                if (((s6 >> (i9 + i2)) & 1) == 0) {
                    z6 = false;
                }
                zArr[i10] = z6;
            }
        }
        return zArr;
    }

    public static byte[] shortToByteArray(short s6, int i2, byte[] bArr, int i7, int i8) {
        if (i8 != 0) {
            if (i.a(i8, 1, 8, i2) >= 16) {
                throw new IllegalArgumentException("(nBytes-1)*8+srcPos is greater or equal to than 16");
            }
            for (int i9 = 0; i9 < i8; i9++) {
                bArr[i7 + i9] = (byte) ((s6 >> ((i9 * 8) + i2)) & 255);
            }
        }
        return bArr;
    }

    public static String shortToHex(short s6, int i2, String str, int i7, int i8) {
        if (i8 == 0) {
            return str;
        }
        if (i.a(i8, 1, 4, i2) >= 16) {
            throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greater or equal to than 16");
        }
        StringBuilder sb = new StringBuilder(str);
        int length = sb.length();
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = (s6 >> ((i9 * 4) + i2)) & 15;
            int i11 = i7 + i9;
            if (i11 == length) {
                length++;
                sb.append(intToHexDigit(i10));
            } else {
                sb.setCharAt(i11, intToHexDigit(i10));
            }
        }
        return sb.toString();
    }

    public static byte[] uuidToByteArray(UUID uuid, byte[] bArr, int i2, int i7) {
        if (i7 != 0) {
            if (i7 > 16) {
                throw new IllegalArgumentException("nBytes is greater than 16");
            }
            longToByteArray(uuid.getMostSignificantBits(), 0, bArr, i2, i7 > 8 ? 8 : i7);
            if (i7 >= 8) {
                longToByteArray(uuid.getLeastSignificantBits(), 0, bArr, i2 + 8, i7 - 8);
            }
        }
        return bArr;
    }

    public static char binaryBeMsb0ToHexDigit(boolean[] zArr, int i2) {
        if (zArr.length == 0) {
            throw new IllegalArgumentException("Cannot convert an empty array.");
        }
        int length = ((zArr.length - 1) - i2) + 1;
        int min = Math.min(4, length);
        boolean[] zArr2 = new boolean[4];
        System.arraycopy(zArr, length - min, zArr2, 4 - min, min);
        return zArr2[0] ? zArr2[1] ? zArr2[2] ? zArr2[3] ? 'f' : 'e' : zArr2[3] ? 'd' : 'c' : zArr2[2] ? zArr2[3] ? 'b' : 'a' : zArr2[3] ? '9' : '8' : zArr2[1] ? zArr2[2] ? zArr2[3] ? '7' : '6' : zArr2[3] ? '5' : '4' : zArr2[2] ? zArr2[3] ? '3' : '2' : zArr2[3] ? '1' : '0';
    }

    public static char binaryToHexDigit(boolean[] zArr, int i2) {
        if (zArr.length == 0) {
            throw new IllegalArgumentException("Cannot convert an empty array.");
        }
        int i7 = i2 + 3;
        if (zArr.length <= i7 || !zArr[i7]) {
            int i8 = i2 + 2;
            if (zArr.length <= i8 || !zArr[i8]) {
                int i9 = i2 + 1;
                return (zArr.length <= i9 || !zArr[i9]) ? zArr[i2] ? '1' : '0' : zArr[i2] ? '3' : '2';
            }
            int i10 = i2 + 1;
            return (zArr.length <= i10 || !zArr[i10]) ? zArr[i2] ? '5' : '4' : zArr[i2] ? '7' : '6';
        }
        int i11 = i2 + 2;
        if (zArr.length <= i11 || !zArr[i11]) {
            int i12 = i2 + 1;
            return (zArr.length <= i12 || !zArr[i12]) ? zArr[i2] ? '9' : '8' : zArr[i2] ? 'b' : 'a';
        }
        int i13 = i2 + 1;
        return (zArr.length <= i13 || !zArr[i13]) ? zArr[i2] ? 'd' : 'c' : zArr[i2] ? 'f' : 'e';
    }

    public static char binaryToHexDigitMsb0_4bits(boolean[] zArr, int i2) {
        if (zArr.length > 8) {
            throw new IllegalArgumentException("src.length>8: src.length=" + zArr.length);
        }
        if (zArr.length - i2 >= 4) {
            return zArr[i2 + 3] ? zArr[i2 + 2] ? zArr[i2 + 1] ? zArr[i2] ? 'f' : '7' : zArr[i2] ? 'b' : '3' : zArr[i2 + 1] ? zArr[i2] ? 'd' : '5' : zArr[i2] ? '9' : '1' : zArr[i2 + 2] ? zArr[i2 + 1] ? zArr[i2] ? 'e' : '6' : zArr[i2] ? 'a' : '2' : zArr[i2 + 1] ? zArr[i2] ? 'c' : '4' : zArr[i2] ? '8' : '0';
        }
        throw new IllegalArgumentException("src.length-srcPos<4: src.length=" + zArr.length + ", srcPos=" + i2);
    }
}
