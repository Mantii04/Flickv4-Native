package flix.com.vision.extractors;

import android.util.Base64;
import android.util.Log;
import androidx.media3.common.MimeTypes;
import cz.msebera.android.httpclient.HttpHeaders;
import cz.msebera.android.httpclient.HttpHost;
import flix.com.vision.App;
import flix.com.vision.models.Video;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.Response;

/* loaded from: classes2.dex */
public class CloseloadExtractorExtended {
    public String name = "Closeload";
    public String mainUrl = "https://closeload.top/";
    public String ridoURL = "https://ridomovies.tv/";

    private String executeDecryptionFunction(String str, long j7, int i2) {
        byte[] decode;
        byte[] decode2 = Base64.decode(new StringBuilder(str).reverse().toString(), 0);
        if (decode2 == null) {
            return null;
        }
        try {
            decode = Base64.decode(new String(decode2, StandardCharsets.ISO_8859_1), 0);
        } catch (Exception e3) {
            Log.e("Closeload", "Decryption algorithm failed", e3);
        }
        if (decode == null) {
            return null;
        }
        byte[] bArr = new byte[decode.length];
        for (int i7 = 0; i7 < decode.length; i7++) {
            bArr[i7] = (byte) ((((decode[i7] & 255) - ((int) (j7 % (i7 + i2)))) + 256) % 256);
        }
        String trim = new String(bArr, StandardCharsets.UTF_8).trim();
        if (trim.startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
            if (!trim.contains(".m3u8")) {
                if (trim.contains(".mp4")) {
                }
            }
            return trim;
        }
        return null;
    }

    private int unbase(String str, int i2) {
        int i7;
        try {
        } catch (Exception e3) {
            Log.e("Closeload", "Unbase error", e3);
        }
        if (i2 <= 36) {
            return Integer.parseInt(str, i2);
        }
        if (i2 == 62) {
            int i8 = 0;
            for (int i9 = 0; i9 < str.length(); i9++) {
                char charAt = str.charAt(i9);
                if (charAt >= '0' && charAt <= '9') {
                    i7 = charAt - '0';
                } else if (charAt >= 'a' && charAt <= 'z') {
                    i7 = charAt - 'W';
                } else {
                    if (charAt < 'A' || charAt > 'Z') {
                        return -1;
                    }
                    i7 = charAt - 29;
                }
                i8 = (i8 * 62) + i7;
            }
            return i8;
        }
        return -1;
    }

    private String unpack(String str) {
        for (int i2 = 5; i2 > 0; i2--) {
            Matcher matcher = Pattern.compile("eval\\(function\\(p,a,c,k,e,[r|d]\\).*?\\}\\('(.*?)',\\s*(\\d+)\\s*,\\s*(\\d+)\\s*,\\s*'(.*?)'\\.split\\('\\|'\\)").matcher(str);
            if (!matcher.find()) {
                break;
            }
            String group = matcher.group(1);
            int parseInt = Integer.parseInt(matcher.group(2));
            Integer.parseInt(matcher.group(3));
            String[] split = matcher.group(4).split("\\|", -1);
            String replace = group.replace("\\'", "'").replace("\\\\", "\\");
            StringBuffer stringBuffer = new StringBuffer();
            Matcher matcher2 = Pattern.compile("\\b[a-zA-Z0-9]+\\b").matcher(replace);
            while (matcher2.find()) {
                String group2 = matcher2.group();
                int unbase = unbase(group2, parseInt);
                if (unbase >= 0 && unbase < split.length && !split[unbase].isEmpty()) {
                    group2 = split[unbase];
                }
                matcher2.appendReplacement(stringBuffer, Matcher.quoteReplacement(group2));
            }
            matcher2.appendTail(stringBuffer);
            str = str.replace(matcher.group(0), stringBuffer.toString());
        }
        return str;
    }

    public Video extract(String str) throws IOException {
        Response response = App.get(str, this.ridoURL);
        if (response == null || !response.isSuccessful() || response.body() == null) {
            throw new RuntimeException("Failed to fetch Closeload HTML");
        }
        String string = response.body().string();
        try {
            string = unpack(string);
        } catch (Exception e3) {
            Log.e("Closeload", "Unpacking failed, continuing with raw HTML", e3);
        }
        Matcher matcher = Pattern.compile("(\\d+)\\s*%\\s*\\(\\s*[a-zA-Z_]+\\s*\\+\\s*(\\d+)\\s*\\)").matcher(string);
        long j7 = 399756995;
        int i2 = 5;
        if (matcher.find()) {
            try {
                j7 = Long.parseLong(matcher.group(1));
                i2 = Integer.parseInt(matcher.group(2));
            } catch (Exception unused) {
            }
        }
        ArrayList arrayList = new ArrayList();
        Matcher matcher2 = Pattern.compile("dc_[a-zA-Z0-9_]+\\s*\\(\\s*\\[([^\\]]+)\\]\\s*\\)").matcher(string);
        while (matcher2.find()) {
            String replaceAll = matcher2.group(1).replaceAll("[\"\\s,']", "");
            if (replaceAll.length() > 30) {
                arrayList.add(replaceAll);
            }
        }
        Iterator it = arrayList.iterator();
        String str2 = null;
        while (it.hasNext() && (str2 = executeDecryptionFunction((String) it.next(), j7, i2)) == null) {
        }
        String str3 = str2;
        if (str3 == null) {
            throw new RuntimeException("No video found in Closeload/Ridorapid");
        }
        HashMap hashMap = new HashMap();
        hashMap.put(HttpHeaders.REFERER, this.mainUrl);
        hashMap.put("Origin", this.mainUrl);
        hashMap.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36");
        return new Video(str3, Collections.EMPTY_LIST, hashMap, MimeTypes.APPLICATION_M3U8, false, false);
    }
}
