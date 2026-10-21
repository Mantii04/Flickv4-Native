package flix.com.vision.extractors;

import android.util.Base64;
import android.util.Log;
import androidx.media3.common.MimeTypes;
import cz.msebera.android.httpclient.HttpHeaders;
import cz.msebera.android.httpclient.HttpHost;
import flix.com.vision.App;
import flix.com.vision.models.Video;
import h5.C0997k;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.OkHttpClient;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Url;

/* loaded from: classes2.dex */
public class CloseloadExtractor {
    public String name = "Closeload";
    public String mainUrl = "https://closeload.top/";
    public String ridoURL = "https://ridomovies.tv/";

    @FunctionalInterface
    public interface ByteTransform {
        byte[] transform(byte[] bArr);
    }

    public static class Factory {
        public static Service build(String str) {
            return (Service) new Retrofit.Builder().baseUrl(str).addConverterFactory(new StringResponseConverterFactory()).client(new OkHttpClient.Builder().build()).build().create(Service.class);
        }
    }

    public interface Service {
        @GET
        String get(@Url String str, @Header("referer") String str2);
    }

    public static class StringResponseConverter implements Converter<ResponseBody, String> {
        @Override // retrofit2.Converter
        public String convert(ResponseBody responseBody) throws IOException {
            return responseBody.string();
        }
    }

    public static class StringResponseConverterFactory extends Converter.Factory {
        @Override // retrofit2.Converter.Factory
        public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
            if (String.class.equals(type)) {
                return new StringResponseConverter();
            }
            return null;
        }
    }

    @FunctionalInterface
    public interface StringTransform {
        String transform(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$smartBruteForce$0(String str) {
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$smartBruteForce$1(String str) {
        return new StringBuilder(str).reverse().toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$smartBruteForce$2(String str) {
        return rot13(new StringBuilder(str).reverse().toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$smartBruteForce$3(String str) {
        return new StringBuilder(rot13(str)).reverse().toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] lambda$smartBruteForce$4(byte[] bArr) {
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ byte[] lambda$smartBruteForce$5(byte[] bArr) {
        return rot13Bytes(reverseBytes(bArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ byte[] lambda$smartBruteForce$6(byte[] bArr) {
        return reverseBytes(rot13Bytes(bArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] reverseBytes(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr2[i2] = bArr[(bArr.length - 1) - i2];
        }
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String rot13(String str) {
        StringBuilder sb = new StringBuilder();
        for (char c7 : str.toCharArray()) {
            if (c7 >= 'A' && c7 <= 'Z') {
                sb.append((char) (((c7 - '4') % 26) + 65));
            } else if (c7 < 'a' || c7 > 'z') {
                sb.append(c7);
            } else {
                sb.append((char) (((c7 - 'T') % 26) + 97));
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] rot13Bytes(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i7 = bArr[i2] & 255;
            if (i7 >= 65 && i7 <= 90) {
                bArr2[i2] = (byte) (((i7 - 52) % 26) + 65);
            } else if (i7 < 97 || i7 > 122) {
                bArr2[i2] = (byte) i7;
            } else {
                bArr2[i2] = (byte) (((i7 - 84) % 26) + 97);
            }
        }
        return bArr2;
    }

    private byte[] safeBase64Decode(String str) {
        try {
            return Base64.decode(str, 0);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    private String smartBruteForce(String str, long j7, int i2) {
        byte[] safeBase64Decode;
        final CloseloadExtractor closeloadExtractor = this;
        ArrayList arrayList = new ArrayList();
        final int i7 = 0;
        arrayList.add(new StringTransform() { // from class: flix.com.vision.extractors.a
            @Override // flix.com.vision.extractors.CloseloadExtractor.StringTransform
            public final String transform(String str2) {
                String lambda$smartBruteForce$0;
                String lambda$smartBruteForce$1;
                switch (i7) {
                    case 0:
                        lambda$smartBruteForce$0 = CloseloadExtractor.lambda$smartBruteForce$0(str2);
                        return lambda$smartBruteForce$0;
                    default:
                        lambda$smartBruteForce$1 = CloseloadExtractor.lambda$smartBruteForce$1(str2);
                        return lambda$smartBruteForce$1;
                }
            }
        });
        final int i8 = 1;
        arrayList.add(new StringTransform() { // from class: flix.com.vision.extractors.a
            @Override // flix.com.vision.extractors.CloseloadExtractor.StringTransform
            public final String transform(String str2) {
                String lambda$smartBruteForce$0;
                String lambda$smartBruteForce$1;
                switch (i8) {
                    case 0:
                        lambda$smartBruteForce$0 = CloseloadExtractor.lambda$smartBruteForce$0(str2);
                        return lambda$smartBruteForce$0;
                    default:
                        lambda$smartBruteForce$1 = CloseloadExtractor.lambda$smartBruteForce$1(str2);
                        return lambda$smartBruteForce$1;
                }
            }
        });
        final int i9 = 0;
        arrayList.add(new StringTransform(closeloadExtractor) { // from class: flix.com.vision.extractors.b

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CloseloadExtractor f15998b;

            {
                this.f15998b = closeloadExtractor;
            }

            @Override // flix.com.vision.extractors.CloseloadExtractor.StringTransform
            public final String transform(String str2) {
                String rot13;
                String lambda$smartBruteForce$2;
                String lambda$smartBruteForce$3;
                switch (i9) {
                    case 0:
                        rot13 = this.f15998b.rot13(str2);
                        return rot13;
                    case 1:
                        lambda$smartBruteForce$2 = this.f15998b.lambda$smartBruteForce$2(str2);
                        return lambda$smartBruteForce$2;
                    default:
                        lambda$smartBruteForce$3 = this.f15998b.lambda$smartBruteForce$3(str2);
                        return lambda$smartBruteForce$3;
                }
            }
        });
        final int i10 = 1;
        arrayList.add(new StringTransform(closeloadExtractor) { // from class: flix.com.vision.extractors.b

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CloseloadExtractor f15998b;

            {
                this.f15998b = closeloadExtractor;
            }

            @Override // flix.com.vision.extractors.CloseloadExtractor.StringTransform
            public final String transform(String str2) {
                String rot13;
                String lambda$smartBruteForce$2;
                String lambda$smartBruteForce$3;
                switch (i10) {
                    case 0:
                        rot13 = this.f15998b.rot13(str2);
                        return rot13;
                    case 1:
                        lambda$smartBruteForce$2 = this.f15998b.lambda$smartBruteForce$2(str2);
                        return lambda$smartBruteForce$2;
                    default:
                        lambda$smartBruteForce$3 = this.f15998b.lambda$smartBruteForce$3(str2);
                        return lambda$smartBruteForce$3;
                }
            }
        });
        final int i11 = 2;
        arrayList.add(new StringTransform(closeloadExtractor) { // from class: flix.com.vision.extractors.b

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CloseloadExtractor f15998b;

            {
                this.f15998b = closeloadExtractor;
            }

            @Override // flix.com.vision.extractors.CloseloadExtractor.StringTransform
            public final String transform(String str2) {
                String rot13;
                String lambda$smartBruteForce$2;
                String lambda$smartBruteForce$3;
                switch (i11) {
                    case 0:
                        rot13 = this.f15998b.rot13(str2);
                        return rot13;
                    case 1:
                        lambda$smartBruteForce$2 = this.f15998b.lambda$smartBruteForce$2(str2);
                        return lambda$smartBruteForce$2;
                    default:
                        lambda$smartBruteForce$3 = this.f15998b.lambda$smartBruteForce$3(str2);
                        return lambda$smartBruteForce$3;
                }
            }
        });
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new c());
        final int i12 = 0;
        arrayList2.add(new ByteTransform(closeloadExtractor) { // from class: flix.com.vision.extractors.d

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CloseloadExtractor f16000b;

            {
                this.f16000b = closeloadExtractor;
            }

            @Override // flix.com.vision.extractors.CloseloadExtractor.ByteTransform
            public final byte[] transform(byte[] bArr) {
                byte[] reverseBytes;
                byte[] rot13Bytes;
                byte[] lambda$smartBruteForce$5;
                byte[] lambda$smartBruteForce$6;
                switch (i12) {
                    case 0:
                        reverseBytes = this.f16000b.reverseBytes(bArr);
                        return reverseBytes;
                    case 1:
                        rot13Bytes = this.f16000b.rot13Bytes(bArr);
                        return rot13Bytes;
                    case 2:
                        lambda$smartBruteForce$5 = this.f16000b.lambda$smartBruteForce$5(bArr);
                        return lambda$smartBruteForce$5;
                    default:
                        lambda$smartBruteForce$6 = this.f16000b.lambda$smartBruteForce$6(bArr);
                        return lambda$smartBruteForce$6;
                }
            }
        });
        final int i13 = 1;
        arrayList2.add(new ByteTransform(closeloadExtractor) { // from class: flix.com.vision.extractors.d

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CloseloadExtractor f16000b;

            {
                this.f16000b = closeloadExtractor;
            }

            @Override // flix.com.vision.extractors.CloseloadExtractor.ByteTransform
            public final byte[] transform(byte[] bArr) {
                byte[] reverseBytes;
                byte[] rot13Bytes;
                byte[] lambda$smartBruteForce$5;
                byte[] lambda$smartBruteForce$6;
                switch (i13) {
                    case 0:
                        reverseBytes = this.f16000b.reverseBytes(bArr);
                        return reverseBytes;
                    case 1:
                        rot13Bytes = this.f16000b.rot13Bytes(bArr);
                        return rot13Bytes;
                    case 2:
                        lambda$smartBruteForce$5 = this.f16000b.lambda$smartBruteForce$5(bArr);
                        return lambda$smartBruteForce$5;
                    default:
                        lambda$smartBruteForce$6 = this.f16000b.lambda$smartBruteForce$6(bArr);
                        return lambda$smartBruteForce$6;
                }
            }
        });
        final int i14 = 2;
        arrayList2.add(new ByteTransform(closeloadExtractor) { // from class: flix.com.vision.extractors.d

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CloseloadExtractor f16000b;

            {
                this.f16000b = closeloadExtractor;
            }

            @Override // flix.com.vision.extractors.CloseloadExtractor.ByteTransform
            public final byte[] transform(byte[] bArr) {
                byte[] reverseBytes;
                byte[] rot13Bytes;
                byte[] lambda$smartBruteForce$5;
                byte[] lambda$smartBruteForce$6;
                switch (i14) {
                    case 0:
                        reverseBytes = this.f16000b.reverseBytes(bArr);
                        return reverseBytes;
                    case 1:
                        rot13Bytes = this.f16000b.rot13Bytes(bArr);
                        return rot13Bytes;
                    case 2:
                        lambda$smartBruteForce$5 = this.f16000b.lambda$smartBruteForce$5(bArr);
                        return lambda$smartBruteForce$5;
                    default:
                        lambda$smartBruteForce$6 = this.f16000b.lambda$smartBruteForce$6(bArr);
                        return lambda$smartBruteForce$6;
                }
            }
        });
        final int i15 = 3;
        arrayList2.add(new ByteTransform(closeloadExtractor) { // from class: flix.com.vision.extractors.d

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CloseloadExtractor f16000b;

            {
                this.f16000b = closeloadExtractor;
            }

            @Override // flix.com.vision.extractors.CloseloadExtractor.ByteTransform
            public final byte[] transform(byte[] bArr) {
                byte[] reverseBytes;
                byte[] rot13Bytes;
                byte[] lambda$smartBruteForce$5;
                byte[] lambda$smartBruteForce$6;
                switch (i15) {
                    case 0:
                        reverseBytes = this.f16000b.reverseBytes(bArr);
                        return reverseBytes;
                    case 1:
                        rot13Bytes = this.f16000b.rot13Bytes(bArr);
                        return rot13Bytes;
                    case 2:
                        lambda$smartBruteForce$5 = this.f16000b.lambda$smartBruteForce$5(bArr);
                        return lambda$smartBruteForce$5;
                    default:
                        lambda$smartBruteForce$6 = this.f16000b.lambda$smartBruteForce$6(bArr);
                        return lambda$smartBruteForce$6;
                }
            }
        });
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            StringTransform stringTransform = (StringTransform) it.next();
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                ByteTransform byteTransform = (ByteTransform) it2.next();
                try {
                    safeBase64Decode = closeloadExtractor.safeBase64Decode(stringTransform.transform(str));
                } catch (Exception unused) {
                }
                if (safeBase64Decode != null) {
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.add(safeBase64Decode);
                    try {
                        String str2 = new String(safeBase64Decode, "ISO-8859-1");
                        byte[] safeBase64Decode2 = closeloadExtractor.safeBase64Decode(str2);
                        if (safeBase64Decode2 != null) {
                            arrayList3.add(safeBase64Decode2);
                        }
                        byte[] safeBase64Decode3 = closeloadExtractor.safeBase64Decode(new StringBuilder(str2).reverse().toString());
                        if (safeBase64Decode3 != null) {
                            arrayList3.add(safeBase64Decode3);
                        }
                    } catch (Exception unused2) {
                    }
                    Iterator it3 = arrayList3.iterator();
                    while (it3.hasNext()) {
                        byte[] transform = byteTransform.transform((byte[]) it3.next());
                        try {
                            String trim = new String(closeloadExtractor.unmixLoop(transform, j7, i2), StandardCharsets.UTF_8).trim();
                            if (trim.startsWith(HttpHost.DEFAULT_SCHEME_NAME) && trim.contains(".mp4")) {
                                return trim;
                            }
                        } catch (Exception unused3) {
                        }
                        try {
                            String trim2 = new String(transform, StandardCharsets.UTF_8).trim();
                            if (trim2.startsWith(HttpHost.DEFAULT_SCHEME_NAME) && trim2.contains(".mp4")) {
                                return trim2;
                            }
                        } catch (Exception unused4) {
                        }
                        closeloadExtractor = this;
                    }
                    closeloadExtractor = this;
                }
            }
            closeloadExtractor = this;
        }
        return null;
    }

    private byte[] unmixLoop(byte[] bArr, long j7, int i2) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i7 = 0; i7 < bArr.length; i7++) {
            bArr2[i7] = (byte) ((((bArr[i7] & 255) - ((int) (j7 % (i7 + i2)))) + 256) % 256);
        }
        return bArr2;
    }

    public Video extract(String str) throws IOException {
        long j7;
        int i2;
        String str2;
        String str3;
        String string = App.get(str, this.ridoURL).body().string();
        try {
            C0997k c0997k = new C0997k(string);
            if (c0997k.detect()) {
                String unpack = c0997k.unpack();
                if (unpack != null) {
                    string = unpack;
                }
            }
        } catch (Exception e3) {
            Log.e("Closeload", "Unpacking failed, continuing with raw HTML", e3);
        }
        Matcher matcher = Pattern.compile("(\\d+)\\s*%\\s*\\(\\s*i\\s*\\+\\s*(\\d+)\\s*\\)").matcher(string);
        if (matcher.find()) {
            j7 = Long.parseLong(matcher.group(1));
            i2 = Integer.parseInt(matcher.group(2));
        } else {
            j7 = 399756995;
            i2 = 5;
        }
        ArrayList arrayList = new ArrayList();
        Matcher matcher2 = Pattern.compile("myPlayer\\.src\\(\\{\\s*src:\\s*(\\w+)\\s*,").matcher(string);
        if (matcher2.find()) {
            Matcher matcher3 = Pattern.compile("var\\s+" + matcher2.group(1) + "\\s*=\\s*dc_hello\\(\"([^\"]*)\"\\)").matcher(string);
            if (matcher3.find()) {
                arrayList.add(matcher3.group(1));
            }
        }
        Matcher matcher4 = Pattern.compile("\\[\\s*((?:\"[^\"]+\",?\\s*)*)\\]").matcher(string);
        while (matcher4.find()) {
            Matcher matcher5 = Pattern.compile("\"([^\"]*)\"").matcher(matcher4.group(1));
            ArrayList arrayList2 = new ArrayList();
            while (matcher5.find()) {
                arrayList2.add(matcher5.group(1));
            }
            if (arrayList2.size() > 5) {
                StringBuilder sb = new StringBuilder();
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    sb.append((String) it.next());
                }
                arrayList.add(sb.toString());
            }
        }
        Matcher matcher6 = Pattern.compile("\\(\\s*\"([a-zA-Z0-9+/=]{30,})\"\\s*\\)").matcher(string);
        while (matcher6.find()) {
            arrayList.add(matcher6.group(1));
        }
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                str2 = null;
                break;
            }
            str2 = smartBruteForce((String) it2.next(), j7, i2);
            if (str2 != null) {
                break;
            }
        }
        if (str2 == null) {
            Matcher matcher7 = Pattern.compile("[\"'](aHR0[a-zA-Z0-9+/=]{20,})[\"']").matcher(string);
            while (matcher7.find()) {
                byte[] safeBase64Decode = safeBase64Decode(matcher7.group(1));
                if (safeBase64Decode != null) {
                    String str4 = new String(safeBase64Decode, StandardCharsets.UTF_8);
                    if (str4.startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
                        str3 = str4;
                        break;
                    }
                }
            }
        }
        str3 = str2;
        if (str3 == null) {
            throw new RuntimeException("No video found");
        }
        HashMap hashMap = new HashMap();
        hashMap.put(HttpHeaders.REFERER, this.mainUrl);
        return new Video(str3, Collections.EMPTY_LIST, hashMap, MimeTypes.APPLICATION_M3U8, false, false);
    }
}
