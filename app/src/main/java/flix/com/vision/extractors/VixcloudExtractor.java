package flix.com.vision.extractors;

import com.google.gson.annotations.SerializedName;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import h5.C0994h;
import h5.C0999m;
import j6.h;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.OkHttpClient;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.Url;

/* loaded from: classes2.dex */
public class VixcloudExtractor {
    private String preferredLanguage;

    public interface VixcloudExtractorService {

        public static class Builder {
            public static VixcloudExtractorService build(String str) {
                return (VixcloudExtractorService) new Retrofit.Builder().baseUrl(str).addConverterFactory(C0999m.create()).client(new OkHttpClient.Builder().dns(C0994h.getInstance().getDoh()).build()).build().create(VixcloudExtractorService.class);
            }
        }

        public static class WindowParams {

            @SerializedName(ClientCookie.EXPIRES_ATTR)
            String expires;

            @SerializedName("token")
            String token;

            public WindowParams(String str, String str2) {
                this.token = str;
                this.expires = str2;
            }

            public String getExpires() {
                return this.expires;
            }

            public String getToken() {
                return this.token;
            }
        }

        public static class WindowVideo {

            @SerializedName("filename")
            String filename;

            @SerializedName("id")
            int id;

            public WindowVideo(int i2, String str) {
                this.id = i2;
                this.filename = str;
            }

            public String getFilename() {
                return this.filename;
            }

            public int getId() {
                return this.id;
            }
        }

        @Headers({"User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64)"})
        @GET
        Call<h> getSource(@Url String str);
    }

    public VixcloudExtractor() {
        this("eng");
    }

    private String removeTrailingCommaFromJsonObjectString(String str) {
        String trim = str.trim();
        int lastIndexOf = trim.lastIndexOf(125);
        if (lastIndexOf <= 0 || !trim.startsWith("{")) {
            return str;
        }
        int i2 = lastIndexOf - 1;
        while (i2 >= 0 && Character.isWhitespace(trim.charAt(i2))) {
            i2--;
        }
        if (i2 < 0 || trim.charAt(i2) != ',') {
            return str;
        }
        return trim.substring(0, i2) + trim.substring(i2 + 1);
    }

    private String sanitizeJsonKeysAndQuotes(String str) {
        Matcher matcher = Pattern.compile("(\\b(?:id|filename|token|expires|asn)\\b)\\s*:").matcher(str.replace("'", "\""));
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            matcher.appendReplacement(stringBuffer, "\"" + matcher.group(1) + "\":");
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    private String substringAfter(String str, String str2, String str3) {
        int indexOf = str.indexOf(str2);
        return indexOf < 0 ? str3 : str.substring(str2.length() + indexOf);
    }

    private String substringBefore(String str, String str2, String str3) {
        int indexOf = str.indexOf(str2);
        return indexOf < 0 ? str3 : str.substring(0, indexOf);
    }

    /* JADX WARN: Code restructure failed: missing block: B:136:0x039a, code lost:
    
        if (r0.toLowerCase().contains("english") == false) goto L119;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0469 A[Catch: Exception -> 0x0465, TRY_LEAVE, TryCatch #6 {Exception -> 0x0465, blocks: (B:113:0x0469, B:122:0x0461, B:118:0x045c), top: B:117:0x045c, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x045c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public flix.com.vision.models.Video extract(java.lang.String r26) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 1201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: flix.com.vision.extractors.VixcloudExtractor.extract(java.lang.String):flix.com.vision.models.Video");
    }

    public String getMainUrl() {
        return "https://vixcloud.co/";
    }

    public String getName() {
        return "vixcloud";
    }

    public VixcloudExtractor(String str) {
        this.preferredLanguage = str;
    }
}
