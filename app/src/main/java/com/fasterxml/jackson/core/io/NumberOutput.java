package com.fasterxml.jackson.core.io;

import com.uwetrottmann.trakt5.TraktV2;

/* loaded from: classes.dex */
public final class NumberOutput {
    private static int BILLION = 1000000000;
    private static long BILLION_L = 1000000000;
    private static long MAX_INT_AS_LONG = 2147483647L;
    private static int MILLION = 1000000;
    private static long MIN_INT_AS_LONG = -2147483648L;
    static final String SMALLEST_INT = String.valueOf(Integer.MIN_VALUE);
    static final String SMALLEST_LONG = String.valueOf(Long.MIN_VALUE);
    private static final int[] TRIPLET_TO_CHARS = new int[1000];
    private static final String[] sSmallIntStrs;
    private static final String[] sSmallIntStrs2;

    static {
        int i2 = 0;
        for (int i7 = 0; i7 < 10; i7++) {
            for (int i8 = 0; i8 < 10; i8++) {
                int i9 = 0;
                while (i9 < 10) {
                    TRIPLET_TO_CHARS[i2] = ((i7 + 48) << 16) | ((i8 + 48) << 8) | (i9 + 48);
                    i9++;
                    i2++;
                }
            }
        }
        sSmallIntStrs = new String[]{"0", "1", TraktV2.API_VERSION, "3", "4", "5", "6", "7", "8", "9", "10"};
        sSmallIntStrs2 = new String[]{"-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10"};
    }

    private static int _full3(int i2, char[] cArr, int i7) {
        int i8 = TRIPLET_TO_CHARS[i2];
        cArr[i7] = (char) (i8 >> 16);
        int i9 = i7 + 2;
        cArr[i7 + 1] = (char) ((i8 >> 8) & 127);
        int i10 = i7 + 3;
        cArr[i9] = (char) (i8 & 127);
        return i10;
    }

    private static int _leading3(int i2, char[] cArr, int i7) {
        int i8 = TRIPLET_TO_CHARS[i2];
        if (i2 > 9) {
            if (i2 > 99) {
                cArr[i7] = (char) (i8 >> 16);
                i7++;
            }
            cArr[i7] = (char) ((i8 >> 8) & 127);
            i7++;
        }
        int i9 = i7 + 1;
        cArr[i7] = (char) (i8 & 127);
        return i9;
    }

    private static int _outputFullBillion(int i2, char[] cArr, int i7) {
        int i8 = i2 / 1000;
        int i9 = i2 - (i8 * 1000);
        int i10 = i8 / 1000;
        int[] iArr = TRIPLET_TO_CHARS;
        int i11 = iArr[i10];
        cArr[i7] = (char) (i11 >> 16);
        cArr[i7 + 1] = (char) ((i11 >> 8) & 127);
        cArr[i7 + 2] = (char) (i11 & 127);
        int i12 = iArr[i8 - (i10 * 1000)];
        cArr[i7 + 3] = (char) (i12 >> 16);
        cArr[i7 + 4] = (char) ((i12 >> 8) & 127);
        cArr[i7 + 5] = (char) (i12 & 127);
        int i13 = iArr[i9];
        cArr[i7 + 6] = (char) (i13 >> 16);
        int i14 = i7 + 8;
        cArr[i7 + 7] = (char) ((i13 >> 8) & 127);
        int i15 = i7 + 9;
        cArr[i14] = (char) (i13 & 127);
        return i15;
    }

    private static int _outputSmallestI(char[] cArr, int i2) {
        String str = SMALLEST_INT;
        int length = str.length();
        str.getChars(0, length, cArr, i2);
        return length + i2;
    }

    private static int _outputSmallestL(char[] cArr, int i2) {
        String str = SMALLEST_LONG;
        int length = str.length();
        str.getChars(0, length, cArr, i2);
        return length + i2;
    }

    private static int _outputUptoBillion(int i2, char[] cArr, int i7) {
        if (i2 < MILLION) {
            if (i2 < 1000) {
                return _leading3(i2, cArr, i7);
            }
            int i8 = i2 / 1000;
            return _outputUptoMillion(cArr, i7, i8, i2 - (i8 * 1000));
        }
        int i9 = i2 / 1000;
        int i10 = i2 - (i9 * 1000);
        int i11 = i9 / 1000;
        int i12 = i9 - (i11 * 1000);
        int _leading3 = _leading3(i11, cArr, i7);
        int[] iArr = TRIPLET_TO_CHARS;
        int i13 = iArr[i12];
        cArr[_leading3] = (char) (i13 >> 16);
        cArr[_leading3 + 1] = (char) ((i13 >> 8) & 127);
        cArr[_leading3 + 2] = (char) (i13 & 127);
        int i14 = iArr[i10];
        cArr[_leading3 + 3] = (char) (i14 >> 16);
        int i15 = _leading3 + 5;
        cArr[_leading3 + 4] = (char) ((i14 >> 8) & 127);
        int i16 = _leading3 + 6;
        cArr[i15] = (char) (i14 & 127);
        return i16;
    }

    private static int _outputUptoMillion(char[] cArr, int i2, int i7, int i8) {
        int[] iArr = TRIPLET_TO_CHARS;
        int i9 = iArr[i7];
        if (i7 > 9) {
            if (i7 > 99) {
                cArr[i2] = (char) (i9 >> 16);
                i2++;
            }
            cArr[i2] = (char) ((i9 >> 8) & 127);
            i2++;
        }
        cArr[i2] = (char) (i9 & 127);
        int i10 = iArr[i8];
        cArr[i2 + 1] = (char) (i10 >> 16);
        int i11 = i2 + 3;
        cArr[i2 + 2] = (char) ((i10 >> 8) & 127);
        int i12 = i2 + 4;
        cArr[i11] = (char) (i10 & 127);
        return i12;
    }

    public static boolean notFinite(double d7) {
        return Double.isNaN(d7) || Double.isInfinite(d7);
    }

    public static int outputInt(int i2, char[] cArr, int i7) {
        int i8;
        if (i2 < 0) {
            if (i2 == Integer.MIN_VALUE) {
                return _outputSmallestI(cArr, i7);
            }
            cArr[i7] = '-';
            i2 = -i2;
            i7++;
        }
        if (i2 < MILLION) {
            if (i2 >= 1000) {
                int i9 = i2 / 1000;
                return _full3(i2 - (i9 * 1000), cArr, _leading3(i9, cArr, i7));
            }
            if (i2 >= 10) {
                return _leading3(i2, cArr, i7);
            }
            cArr[i7] = (char) (i2 + 48);
            return i7 + 1;
        }
        int i10 = BILLION;
        if (i2 < i10) {
            int i11 = i2 / 1000;
            int i12 = i11 / 1000;
            return _full3(i2 - (i11 * 1000), cArr, _full3(i11 - (i12 * 1000), cArr, _leading3(i12, cArr, i7)));
        }
        int i13 = i2 - i10;
        if (i13 >= i10) {
            i13 -= i10;
            i8 = i7 + 1;
            cArr[i7] = '2';
        } else {
            i8 = i7 + 1;
            cArr[i7] = '1';
        }
        return _outputFullBillion(i13, cArr, i8);
    }

    public static int outputLong(long j7, char[] cArr, int i2) {
        int _outputFullBillion;
        if (j7 < 0) {
            if (j7 > MIN_INT_AS_LONG) {
                return outputInt((int) j7, cArr, i2);
            }
            if (j7 == Long.MIN_VALUE) {
                return _outputSmallestL(cArr, i2);
            }
            cArr[i2] = '-';
            j7 = -j7;
            i2++;
        } else if (j7 <= MAX_INT_AS_LONG) {
            return outputInt((int) j7, cArr, i2);
        }
        long j8 = BILLION_L;
        long j9 = j7 / j8;
        long j10 = j7 - (j9 * j8);
        if (j9 < j8) {
            _outputFullBillion = _outputUptoBillion((int) j9, cArr, i2);
        } else {
            long j11 = j9 / j8;
            int _leading3 = _leading3((int) j11, cArr, i2);
            _outputFullBillion = _outputFullBillion((int) (j9 - (j8 * j11)), cArr, _leading3);
        }
        return _outputFullBillion((int) j10, cArr, _outputFullBillion);
    }

    public static String toString(int i2) {
        String[] strArr = sSmallIntStrs;
        if (i2 < strArr.length) {
            if (i2 >= 0) {
                return strArr[i2];
            }
            int i7 = (-i2) - 1;
            String[] strArr2 = sSmallIntStrs2;
            if (i7 < strArr2.length) {
                return strArr2[i7];
            }
        }
        return Integer.toString(i2);
    }

    public static boolean notFinite(float f3) {
        return Float.isNaN(f3) || Float.isInfinite(f3);
    }

    private static int _outputSmallestI(byte[] bArr, int i2) {
        int length = SMALLEST_INT.length();
        int i7 = 0;
        while (i7 < length) {
            bArr[i2] = (byte) SMALLEST_INT.charAt(i7);
            i7++;
            i2++;
        }
        return i2;
    }

    private static int _outputSmallestL(byte[] bArr, int i2) {
        int length = SMALLEST_LONG.length();
        int i7 = 0;
        while (i7 < length) {
            bArr[i2] = (byte) SMALLEST_LONG.charAt(i7);
            i7++;
            i2++;
        }
        return i2;
    }

    private static int _full3(int i2, byte[] bArr, int i7) {
        int i8 = TRIPLET_TO_CHARS[i2];
        bArr[i7] = (byte) (i8 >> 16);
        int i9 = i7 + 2;
        bArr[i7 + 1] = (byte) (i8 >> 8);
        int i10 = i7 + 3;
        bArr[i9] = (byte) i8;
        return i10;
    }

    private static int _leading3(int i2, byte[] bArr, int i7) {
        int i8 = TRIPLET_TO_CHARS[i2];
        if (i2 > 9) {
            if (i2 > 99) {
                bArr[i7] = (byte) (i8 >> 16);
                i7++;
            }
            bArr[i7] = (byte) (i8 >> 8);
            i7++;
        }
        int i9 = i7 + 1;
        bArr[i7] = (byte) i8;
        return i9;
    }

    public static String toString(long j7) {
        if (j7 <= 2147483647L && j7 >= -2147483648L) {
            return toString((int) j7);
        }
        return Long.toString(j7);
    }

    public static String toString(double d7) {
        return Double.toString(d7);
    }

    private static int _outputUptoMillion(byte[] bArr, int i2, int i7, int i8) {
        int[] iArr = TRIPLET_TO_CHARS;
        int i9 = iArr[i7];
        if (i7 > 9) {
            if (i7 > 99) {
                bArr[i2] = (byte) (i9 >> 16);
                i2++;
            }
            bArr[i2] = (byte) (i9 >> 8);
            i2++;
        }
        bArr[i2] = (byte) i9;
        int i10 = iArr[i8];
        bArr[i2 + 1] = (byte) (i10 >> 16);
        int i11 = i2 + 3;
        bArr[i2 + 2] = (byte) (i10 >> 8);
        int i12 = i2 + 4;
        bArr[i11] = (byte) i10;
        return i12;
    }

    public static String toString(float f3) {
        return Float.toString(f3);
    }

    public static int outputLong(long j7, byte[] bArr, int i2) {
        int _outputFullBillion;
        if (j7 < 0) {
            if (j7 > MIN_INT_AS_LONG) {
                return outputInt((int) j7, bArr, i2);
            }
            if (j7 == Long.MIN_VALUE) {
                return _outputSmallestL(bArr, i2);
            }
            bArr[i2] = 45;
            j7 = -j7;
            i2++;
        } else if (j7 <= MAX_INT_AS_LONG) {
            return outputInt((int) j7, bArr, i2);
        }
        long j8 = BILLION_L;
        long j9 = j7 / j8;
        long j10 = j7 - (j9 * j8);
        if (j9 < j8) {
            _outputFullBillion = _outputUptoBillion((int) j9, bArr, i2);
        } else {
            long j11 = j9 / j8;
            int _leading3 = _leading3((int) j11, bArr, i2);
            _outputFullBillion = _outputFullBillion((int) (j9 - (j8 * j11)), bArr, _leading3);
        }
        return _outputFullBillion((int) j10, bArr, _outputFullBillion);
    }

    private static int _outputFullBillion(int i2, byte[] bArr, int i7) {
        int i8 = i2 / 1000;
        int i9 = i2 - (i8 * 1000);
        int i10 = i8 / 1000;
        int i11 = i8 - (i10 * 1000);
        int[] iArr = TRIPLET_TO_CHARS;
        int i12 = iArr[i10];
        bArr[i7] = (byte) (i12 >> 16);
        bArr[i7 + 1] = (byte) (i12 >> 8);
        bArr[i7 + 2] = (byte) i12;
        int i13 = iArr[i11];
        bArr[i7 + 3] = (byte) (i13 >> 16);
        bArr[i7 + 4] = (byte) (i13 >> 8);
        bArr[i7 + 5] = (byte) i13;
        int i14 = iArr[i9];
        bArr[i7 + 6] = (byte) (i14 >> 16);
        int i15 = i7 + 8;
        bArr[i7 + 7] = (byte) (i14 >> 8);
        int i16 = i7 + 9;
        bArr[i15] = (byte) i14;
        return i16;
    }

    private static int _outputUptoBillion(int i2, byte[] bArr, int i7) {
        if (i2 < MILLION) {
            if (i2 < 1000) {
                return _leading3(i2, bArr, i7);
            }
            int i8 = i2 / 1000;
            return _outputUptoMillion(bArr, i7, i8, i2 - (i8 * 1000));
        }
        int i9 = i2 / 1000;
        int i10 = i2 - (i9 * 1000);
        int i11 = i9 / 1000;
        int i12 = i9 - (i11 * 1000);
        int _leading3 = _leading3(i11, bArr, i7);
        int[] iArr = TRIPLET_TO_CHARS;
        int i13 = iArr[i12];
        bArr[_leading3] = (byte) (i13 >> 16);
        bArr[_leading3 + 1] = (byte) (i13 >> 8);
        bArr[_leading3 + 2] = (byte) i13;
        int i14 = iArr[i10];
        bArr[_leading3 + 3] = (byte) (i14 >> 16);
        int i15 = _leading3 + 5;
        bArr[_leading3 + 4] = (byte) (i14 >> 8);
        int i16 = _leading3 + 6;
        bArr[i15] = (byte) i14;
        return i16;
    }

    public static int outputInt(int i2, byte[] bArr, int i7) {
        int i8;
        if (i2 < 0) {
            if (i2 == Integer.MIN_VALUE) {
                return _outputSmallestI(bArr, i7);
            }
            bArr[i7] = 45;
            i2 = -i2;
            i7++;
        }
        if (i2 < MILLION) {
            if (i2 >= 1000) {
                int i9 = i2 / 1000;
                return _full3(i2 - (i9 * 1000), bArr, _leading3(i9, bArr, i7));
            }
            if (i2 < 10) {
                int i10 = i7 + 1;
                bArr[i7] = (byte) (i2 + 48);
                return i10;
            }
            return _leading3(i2, bArr, i7);
        }
        int i11 = BILLION;
        if (i2 >= i11) {
            int i12 = i2 - i11;
            if (i12 >= i11) {
                i12 -= i11;
                i8 = i7 + 1;
                bArr[i7] = 50;
            } else {
                i8 = i7 + 1;
                bArr[i7] = 49;
            }
            return _outputFullBillion(i12, bArr, i8);
        }
        int i13 = i2 / 1000;
        int i14 = i13 / 1000;
        return _full3(i2 - (i13 * 1000), bArr, _full3(i13 - (i14 * 1000), bArr, _leading3(i14, bArr, i7)));
    }
}
