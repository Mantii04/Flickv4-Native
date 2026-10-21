package org.apache.commons.lang3;

import A.i;
import java.util.Random;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes2.dex */
public class RandomStringUtils {
    private static final Random RANDOM = new Random();

    public static String random(int i2) {
        return random(i2, false, false);
    }

    public static String randomAlphabetic(int i2) {
        return random(i2, true, false);
    }

    public static String randomAlphanumeric(int i2) {
        return random(i2, true, true);
    }

    public static String randomAscii(int i2) {
        return random(i2, 32, 127, false, false);
    }

    public static String randomGraph(int i2) {
        return random(i2, 33, WebSocketProtocol.PAYLOAD_SHORT, false, false);
    }

    public static String randomNumeric(int i2) {
        return random(i2, false, true);
    }

    public static String randomPrint(int i2) {
        return random(i2, 32, WebSocketProtocol.PAYLOAD_SHORT, false, false);
    }

    public static String random(int i2, boolean z6, boolean z7) {
        return random(i2, 0, 0, z6, z7);
    }

    public static String randomAlphabetic(int i2, int i7) {
        return randomAlphabetic(RandomUtils.nextInt(i2, i7));
    }

    public static String randomAlphanumeric(int i2, int i7) {
        return randomAlphanumeric(RandomUtils.nextInt(i2, i7));
    }

    public static String randomAscii(int i2, int i7) {
        return randomAscii(RandomUtils.nextInt(i2, i7));
    }

    public static String randomGraph(int i2, int i7) {
        return randomGraph(RandomUtils.nextInt(i2, i7));
    }

    public static String randomNumeric(int i2, int i7) {
        return randomNumeric(RandomUtils.nextInt(i2, i7));
    }

    public static String randomPrint(int i2, int i7) {
        return randomPrint(RandomUtils.nextInt(i2, i7));
    }

    public static String random(int i2, int i7, int i8, boolean z6, boolean z7) {
        return random(i2, i7, i8, z6, z7, null, RANDOM);
    }

    public static String random(int i2, int i7, int i8, boolean z6, boolean z7, char... cArr) {
        return random(i2, i7, i8, z6, z7, cArr, RANDOM);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String random(int i2, int i7, int i8, boolean z6, boolean z7, char[] cArr, Random random) {
        char c7;
        if (i2 == 0) {
            return "";
        }
        if (i2 >= 0) {
            if (cArr != 0 && cArr.length == 0) {
                throw new IllegalArgumentException("The chars array must not be empty");
            }
            if (i7 == 0 && i8 == 0) {
                if (cArr != 0) {
                    i8 = cArr.length;
                } else if (z6 || z7) {
                    i8 = 123;
                    i7 = 32;
                } else {
                    i8 = 1114111;
                }
            } else if (i8 <= i7) {
                throw new IllegalArgumentException("Parameter end (" + i8 + ") must be greater than start (" + i7 + ")");
            }
            if (cArr == 0 && ((z7 && i8 <= 48) || (z6 && i8 <= 65))) {
                throw new IllegalArgumentException(i.g(i8, "Parameter end (", ") must be greater then (48) for generating digits or greater then (65) for generating letters."));
            }
            StringBuilder sb = new StringBuilder(i2);
            int i9 = i8 - i7;
            while (true) {
                int i10 = i2 - 1;
                if (i2 != 0) {
                    if (cArr == 0) {
                        c7 = random.nextInt(i9) + i7;
                        int type = Character.getType(c7);
                        if (type != 0 && type != 18 && type != 19) {
                        }
                    } else {
                        c7 = cArr[random.nextInt(i9) + i7];
                    }
                    int charCount = Character.charCount(c7);
                    if (i10 != 0 || charCount <= 1) {
                        if ((z6 && Character.isLetter(c7)) || ((z7 && Character.isDigit(c7)) || (!z6 && !z7))) {
                            sb.appendCodePoint(c7);
                            i2 = charCount == 2 ? i2 - 2 : i10;
                        }
                    }
                } else {
                    return sb.toString();
                }
            }
        } else {
            throw new IllegalArgumentException(i.g(i2, "Requested random string length ", " is less than 0."));
        }
    }

    public static String random(int i2, String str) {
        if (str == null) {
            return random(i2, 0, 0, false, false, null, RANDOM);
        }
        return random(i2, str.toCharArray());
    }

    public static String random(int i2, char... cArr) {
        if (cArr == null) {
            return random(i2, 0, 0, false, false, null, RANDOM);
        }
        return random(i2, 0, cArr.length, false, false, cArr, RANDOM);
    }
}
