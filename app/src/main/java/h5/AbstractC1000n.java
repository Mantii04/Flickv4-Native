package h5;

import android.util.Base64;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: h5.n, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1000n {
    public static String cryptoHandler(String str, String str2, String str3, boolean z6) {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(str2.getBytes());
            SecretKeySpec secretKeySpec = new SecretKeySpec(str3.getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            if (z6) {
                cipher.init(1, secretKeySpec, ivParameterSpec);
                new String(cipher.doFinal(str.getBytes()));
                return encodeBase64Bytes(cipher.doFinal(str.getBytes()));
            }
            cipher.init(2, secretKeySpec, ivParameterSpec);
            byte[] decodeBase64Array = decodeBase64Array(str);
            if (decodeBase64Array == null) {
                return null;
            }
            return new String(cipher.doFinal(decodeBase64Array));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] decodeBase64Array(String str) {
        try {
            return Base64.decode(str, 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String encodeBase64(String str) {
        try {
            return Base64.encodeToString(str.getBytes("UTF-8"), 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String encodeBase64Bytes(byte[] bArr) {
        try {
            return Base64.encodeToString(bArr, 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String formatSeasonnumber(int i2) {
        return i2 < 10 ? A.i.f(i2, "0") : String.valueOf(i2);
    }

    public static String getBaseUrl(String str) {
        try {
            URL url = new URL(str);
            return url.getProtocol() + "://" + url.getHost();
        } catch (MalformedURLException unused) {
            return null;
        }
    }

    public static String getDurationString(long j7) {
        long j8 = j7 / 3600;
        long j9 = (j7 % 3600) / 60;
        long j10 = j7 % 60;
        StringBuilder sb = new StringBuilder();
        if (j8 > 0) {
            sb.append(j8);
            sb.append(" hour ");
        }
        if (j9 > 0) {
            sb.append(j9);
            sb.append(" minutes ");
        }
        if (j10 > 0) {
            sb.append(j10);
            sb.append(" s");
        } else if (j8 == 0 && j9 == 0) {
            sb.append(" 0s");
        }
        return sb.toString().trim();
    }

    public static String getHashFromMagnet(String str) {
        try {
            return str.split("&")[0].split(":")[r1.length - 1];
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean isEmpty(String str) {
        return str.isEmpty();
    }

    public static boolean notNull(String str) {
        return (str == null || str.trim().isEmpty()) ? false : true;
    }

    public static String removeSpecialChars(String str) {
        return str.replaceAll("[^a-zA-Z0-9]", "");
    }

    public static String removeSpecialCharsKeepSpace(String str) {
        return str.replaceAll("[^a-zA-Z0-9\\s]", "");
    }

    public static String removeTrailingColon(String str) {
        if (str == null) {
            return "";
        }
        String trim = str.trim();
        return (trim == null || !trim.endsWith(",")) ? trim : A.i.d(1, 0, trim);
    }

    public static Date stringToDate(String str, String str2) {
        if (str == null) {
            return null;
        }
        return new SimpleDateFormat(str2).parse(str, new ParsePosition(0));
    }
}
