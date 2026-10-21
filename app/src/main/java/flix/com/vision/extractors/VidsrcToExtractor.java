package flix.com.vision.extractors;

import android.annotation.SuppressLint;
import android.os.AsyncTask;
import android.util.Base64;
import android.util.Log;
import com.google.firebase.sessions.settings.RemoteSettings;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.models.Movie;
import flix.com.vision.models.VideoSource;
import h5.C0994h;
import h5.C0999m;
import j6.h;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.OkHttpClient;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.http.GET;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.Url;

/* loaded from: classes2.dex */
public class VidsrcToExtractor {
    Movie movie;
    private final String name = "Vidsrc.to";
    private final String mainUrl = "https://vidsrc.to";
    private final String keyUrl = "https://raw.githubusercontent.com/Ciarands/vidsrc-keys/main/keys.json";

    public static class EmbedSource {
        public Result result;
        public int status;

        public static class Result {
            public String url;
        }
    }

    public static class EpisodeSources {
        public List<Result> result;
        public int status;

        public static class Result {
            public String id;
            public String title;
        }
    }

    public static class Keys {
        public List<String> decrypt;
        public List<String> encrypt;
    }

    public interface Service {

        public static class Factory {
            static final OkHttpClient client = new OkHttpClient.Builder().dns(C0994h.getInstance()).build();

            public static Service build(String str) {
                return (Service) new Retrofit.Builder().baseUrl(str).client(client).addConverterFactory(C0999m.create()).addConverterFactory(GsonConverterFactory.create()).build().create(Service.class);
            }
        }

        @GET
        Call<h> get(@Url String str);

        @GET("ajax/embed/source/{sourceId}")
        Call<EmbedSource> getEmbedSource(@Path("sourceId") String str, @Query("token") String str2);

        @GET
        Call<Keys> getKeys(@Url String str);

        @GET("ajax/embed/episode/{mediaId}/sources")
        Call<EpisodeSources> getSources(@Path("mediaId") String str, @Query("token") String str2);

        @GET("ajax/embed/episode/{mediaId}/subtitles")
        Call<List<Subtitles>> getSubtitles(@Path("mediaId") String str);
    }

    public static class Subtitles {
        public String file;
        public String label;
    }

    public VidsrcToExtractor(Movie movie) {
        this.movie = movie;
    }

    private byte[] decodeData(String str, String str2) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        byte[] bArr = new byte[256];
        for (int i2 = 0; i2 < 256; i2++) {
            bArr[i2] = (byte) i2;
        }
        int i7 = 0;
        for (int i8 = 0; i8 < 256; i8++) {
            byte b7 = bArr[i8];
            i7 = (i7 + (b7 & 255) + (bytes[i8 % bytes.length] & 255)) & 255;
            bArr[i8] = bArr[i7];
            bArr[i7] = b7;
        }
        byte[] bArr2 = new byte[str2.length()];
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < str2.length(); i11++) {
            i9 = (i9 + 1) & 255;
            byte b8 = bArr[i9];
            i10 = (i10 + (b8 & 255)) & 255;
            bArr[i9] = bArr[i10];
            bArr[i10] = b8;
            bArr2[i11] = (byte) ((bArr[((bArr[i9] & 255) + (b8 & 255)) & 255] & 255) ^ str2.charAt(i11));
        }
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String decryptUrl(String str, String str2) throws Exception {
        Charset charset = StandardCharsets.UTF_8;
        byte[] decode = Base64.decode(str2.getBytes(charset), 8);
        SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(charset), "RC4");
        Cipher cipher = Cipher.getInstance("RC4");
        cipher.init(2, secretKeySpec);
        return URLDecoder.decode(new String(cipher.doFinal(decode), charset), "utf-8");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String encode(String str, String str2) {
        return Base64.encodeToString(decodeData(str, str2), 2).replace(RemoteSettings.FORWARD_SLASH_STRING, "_").replace("+", "-");
    }

    @SuppressLint({"StaticFieldLeak"})
    public String extract() throws Exception {
        new AsyncTask<Void, Void, VideoSource>() { // from class: flix.com.vision.extractors.VidsrcToExtractor.1
            @Override // android.os.AsyncTask
            public void onPostExecute(VideoSource videoSource) {
            }

            @Override // android.os.AsyncTask
            @SuppressLint({"StaticFieldLeak"})
            public VideoSource doInBackground(Void... voidArr) {
                List<EpisodeSources.Result> list;
                EmbedSource body;
                try {
                    String str = "https://vidsrc.to/embed/movie/" + VidsrcToExtractor.this.movie.getMovieId();
                    Service build = Service.Factory.build("https://vidsrc.to/");
                    h body2 = build.get(str).execute().body();
                    if (body2 == null) {
                        throw new Exception("Failed to load document");
                    }
                    org.jsoup.nodes.b selectFirst = body2.selectFirst("ul.episodes li a");
                    if (selectFirst == null || !selectFirst.hasAttr("data-id")) {
                        throw new Exception("Can't retrieve media ID");
                    }
                    String attr = selectFirst.attr("data-id");
                    Keys body3 = build.getKeys("https://raw.githubusercontent.com/Ciarands/vidsrc-keys/main/keys.json").execute().body();
                    if (body3 == null || body3.encrypt.isEmpty() || body3.decrypt.isEmpty()) {
                        throw new Exception("Can't retrieve keys");
                    }
                    EpisodeSources body4 = build.getSources(attr, VidsrcToExtractor.this.encode(body3.encrypt.get(0), attr)).execute().body();
                    if (body4 == null || (list = body4.result) == null) {
                        throw new Exception("Can't retrieve sources");
                    }
                    for (int i2 = 1; i2 <= list.size(); i2++) {
                        try {
                            EpisodeSources.Result result = list.get(i2 - 1);
                            body = build.getEmbedSource(result.id, VidsrcToExtractor.this.encode(body3.encrypt.get(0), result.id)).execute().body();
                        } catch (Exception unused) {
                        }
                        if (body == null || body.result == null) {
                            throw new Exception("Can't retrieve embed source");
                        }
                        if (VidsrcToExtractor.this.decryptUrl(body3.decrypt.get(0), body.result.url).equals(body.result.url)) {
                            throw new Exception("finalUrl == embedUrl");
                        }
                    }
                    return null;
                } catch (Exception e3) {
                    int i7 = MainActivity.f14747T;
                    Log.e("App", "Extraction failed", e3);
                    return null;
                }
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        return null;
    }
}
