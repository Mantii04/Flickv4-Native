package f5;

import android.content.Context;
import flix.com.vision.App;
import flix.com.vision.models.StreamUrl;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public abstract class m {
    public static void GetCategoriesChannels(String str, String str2, boolean z6) {
        App.getInstance().getRequestQueue().add(new C0932f(str, new C0930d(z6), new C0931e(), str2));
    }

    public static void GetStreamLink(StreamUrl streamUrl, String str) {
        App.getInstance().getRequestQueue().add(new i(1, str, new C0933g(streamUrl), new C0934h()));
    }

    public static void GetStreamLink3(StreamUrl streamUrl, String str) {
        App.getInstance().getRequestQueue().add(new l(1, str, new j(streamUrl), new k()));
    }

    public static String loadJSONFromAsset(Context context) {
        try {
            InputStream open = context.getAssets().open("adult.json");
            byte[] bArr = new byte[open.available()];
            open.read(bArr);
            open.close();
            return new String(bArr, "UTF-8");
        } catch (IOException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public static String m33722a(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest((str + "e31Vga4MXIYss1I0jhtdKlkxxwv5N0CYSnCpQcRijIdSJYg").getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder(digest.length * 2);
            for (byte b7 : digest) {
                int i2 = b7 & 255;
                if (i2 < 16) {
                    sb.append('0');
                }
                sb.append(Integer.toHexString(i2));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e3) {
            throw new RuntimeException("Huh, MD5 should be supported?", e3);
        }
    }
}
