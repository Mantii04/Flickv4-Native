package flix.com.vision.models;

import A.i;
import android.util.Base64;
import androidx.annotation.Keep;
import androidx.media3.datasource.DataSchemeDataSource;
import com.google.gson.annotations.SerializedName;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

@Keep
/* loaded from: classes2.dex */
public class Json {

    @SerializedName(DataSchemeDataSource.SCHEME_DATA)
    private final String data;

    @SerializedName("hash")
    private final String hash;

    public Json() {
        String str = "" + getData();
        this.data = str;
        this.hash = hash(i.k("屁股混蛋亲吻我的鸡巴他妈的", str));
    }

    private int getData() {
        return new Random().nextInt(900);
    }

    private String hash(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b7 : digest) {
                sb.append(String.format("%02x", Byte.valueOf(b7)));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public static String toBase64(String str) {
        return new String(Base64.encode(str.getBytes(), 0));
    }
}
