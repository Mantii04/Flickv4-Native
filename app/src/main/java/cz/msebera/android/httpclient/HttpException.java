package cz.msebera.android.httpclient;

/* loaded from: classes2.dex */
public class HttpException extends Exception {
    private static final int FIRST_VALID_CHAR = 32;
    private static final long serialVersionUID = -5437299376222011036L;

    public HttpException() {
    }

    public static String clean(String str) {
        char[] charArray = str.toCharArray();
        int i2 = 0;
        while (i2 < charArray.length && charArray[i2] >= ' ') {
            i2++;
        }
        if (i2 == charArray.length) {
            return str;
        }
        StringBuilder sb = new StringBuilder(charArray.length * 2);
        for (int i7 = 0; i7 < charArray.length; i7++) {
            char c7 = charArray[i7];
            if (c7 < ' ') {
                sb.append("[0x");
                String hexString = Integer.toHexString(i7);
                if (hexString.length() == 1) {
                    sb.append("0");
                }
                sb.append(hexString);
                sb.append("]");
            } else {
                sb.append(c7);
            }
        }
        return sb.toString();
    }

    public HttpException(String str) {
        super(clean(str));
    }

    public HttpException(String str, Throwable th) {
        super(clean(str));
        initCause(th);
    }
}
