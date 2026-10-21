package flix.com.vision.extractors;

import U4.f;
import android.content.Context;
import android.util.Log;
import com.google.firebase.sessions.settings.RemoteSettings;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import cz.msebera.android.httpclient.HttpHeaders;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import flix.com.vision.models.Movie;
import flix.com.vision.models.VideoSource;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class VixSrcExtractor extends BaseExtractor {
    private static final String BASE_DOMAIN = "https://vixsrc.to";
    private static final String TAG = "VixSearchTest";
    private f callBack;
    private final OkHttpClient client;
    private Context context;
    Movie movie;

    public VixSrcExtractor(Context context, f fVar, Movie movie) {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.client = builder.connectTimeout(15L, timeUnit).readTimeout(15L, timeUnit).followRedirects(true).build();
        this.context = context;
        this.callBack = fVar;
        this.movie = movie;
    }

    private String extractValue(String str) {
        int i2;
        Matcher matcher = Pattern.compile("window\\.masterPlaylist\\s*=\\s*\\{").matcher(str);
        if (!matcher.find()) {
            return null;
        }
        int end = matcher.end() - 1;
        int i7 = 0;
        int i8 = end;
        while (true) {
            if (i8 >= str.length()) {
                i2 = -1;
                break;
            }
            char charAt = str.charAt(i8);
            if (charAt == '{') {
                i7++;
            } else if (charAt == '}') {
                i7--;
            }
            if (i7 == 0) {
                i2 = i8 + 1;
                break;
            }
            i8++;
        }
        if (i2 != -1) {
            return str.substring(end, i2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$extract$0(String str) {
        try {
            Request.Builder url = new Request.Builder().url(str);
            String str2 = T4.f.f3706t;
            Response execute = this.client.newCall(url.header("User-Agent", str2).header(HttpHeaders.REFERER, "https://vixsrc.to/").build()).execute();
            try {
                if (execute.isSuccessful() && execute.body() != null) {
                    String optString = new JSONObject(execute.body().string()).optString("src");
                    if (optString.isEmpty()) {
                        Log.e(TAG, "Key 'src' not found in response");
                    } else {
                        String concat = BASE_DOMAIN.concat(optString);
                        Log.d(TAG, "Firing second request immediately to: " + concat);
                        Response execute2 = this.client.newCall(new Request.Builder().url(concat).header("User-Agent", str2).header(HttpHeaders.REFERER, "https://vixsrc.to/").build()).execute();
                        try {
                            if (!execute2.isSuccessful() || execute2.body() == null) {
                                Log.e(TAG, "Request 2 Failed: Code " + execute2.code());
                            } else {
                                JsonObject asJsonObject = JsonParser.parseString(cleanJsToJson(extractValue(execute2.body().string()))).getAsJsonObject();
                                String asString = asJsonObject.get("url").getAsString();
                                JsonObject asJsonObject2 = asJsonObject.getAsJsonObject("params");
                                String str3 = asString + "?token=" + asJsonObject2.get("token").getAsString() + "&expires=" + asJsonObject2.get(ClientCookie.EXPIRES_ATTR).getAsString() + "&asn=" + asJsonObject2.get("asn").getAsString() + "&h=1&lang=en";
                                VideoSource videoSource = new VideoSource();
                                videoSource.streamUrl = str3;
                                videoSource.label = "1080p - [FVSTREAM 3] - [DIRECT] -  ENGLISH";
                                videoSource.streamable = true;
                                videoSource.referer = concat;
                                videoSource.quality = 1080;
                                this.callBack.OnSuccess(videoSource);
                                Log.d(TAG, "Final URL: " + str3);
                            }
                            execute2.close();
                        } finally {
                        }
                    }
                    execute.close();
                }
                Log.e(TAG, "Request 1 Failed: " + execute.code());
                execute.close();
            } finally {
            }
        } catch (Exception e3) {
            Log.e(TAG, "Chain Error: " + e3.getMessage());
            e3.printStackTrace();
        }
    }

    public String cleanJsToJson(String str) {
        return str.replaceAll("(?m)^\\s*([a-zA-Z0-9_$]+)\\s*:", "\"$1\":").replace('\'', '\"').replaceAll(",\\s*([}\\]])", "$1");
    }

    public void extract() {
        extract("https://vixsrc.to/api/movie/" + this.movie.getImdbID());
    }

    public void extractEpisode(int i2, int i7) {
        extract("https://vixsrc.to/api/tv/" + this.movie.getImdbID() + RemoteSettings.FORWARD_SLASH_STRING + i2 + RemoteSettings.FORWARD_SLASH_STRING + i7);
    }

    public void extract(String str) {
        new Thread(new flix.com.vision.activities.leanback.fragment.a(3, this, str)).start();
    }
}
