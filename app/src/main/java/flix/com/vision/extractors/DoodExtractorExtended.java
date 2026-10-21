package flix.com.vision.extractors;

import U4.f;
import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import com.google.firebase.sessions.settings.RemoteSettings;
import cz.msebera.android.httpclient.HttpHeaders;
import flix.com.vision.models.VideoSource;
import java.util.HashMap;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes2.dex */
public class DoodExtractorExtended {
    private static final String TAG = "DoodExtractorExtended";
    private final f callBack;

    public DoodExtractorExtended(f fVar) {
        this.callBack = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getRandomString(int i2) {
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        for (int i7 = 0; i7 < i2; i7++) {
            sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".charAt(random.nextInt(62)));
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String matchRegex(String str, String str2) {
        try {
            Matcher matcher = Pattern.compile(str2, 34).matcher(str);
            if (matcher.find()) {
                return matcher.group(1);
            }
            return null;
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public void extract(String str) {
        new AsyncTask<String, Void, VideoSource>() { // from class: flix.com.vision.extractors.DoodExtractorExtended.1
            @Override // android.os.AsyncTask
            @SuppressLint({"StaticFieldLeak"})
            public VideoSource doInBackground(String... strArr) {
                String str2 = strArr[0];
                if (str2.contains("/d/")) {
                    str2 = str2.replace("/d/", "/e/");
                }
                OkHttpClient build = new OkHttpClient.Builder().followRedirects(true).followSslRedirects(true).build();
                try {
                    Response execute = build.newCall(new Request.Builder().url(str2).header("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36").get().build()).execute();
                    if (execute.isSuccessful() && execute.body() != null) {
                        String string = execute.body().string();
                        String httpUrl = execute.request().url().toString();
                        String host = Uri.parse(httpUrl).getHost();
                        String matchRegex = DoodExtractorExtended.this.matchRegex(string, "dsplayer\\.hotkeys[^']+'([^']+).+?function");
                        if (matchRegex == null) {
                            return null;
                        }
                        String matchRegex2 = DoodExtractorExtended.this.matchRegex(string, "(\\?token=[^\"]+)");
                        if (matchRegex2 == null) {
                            Log.e(DoodExtractorExtended.TAG, "Failed to extract token");
                            return null;
                        }
                        Response execute2 = build.newCall(new Request.Builder().url("https://" + host + matchRegex).header(HttpHeaders.REFERER, httpUrl).header("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36").get().build()).execute();
                        if (execute2.isSuccessful() && execute2.body() != null) {
                            String string2 = execute2.body().string();
                            if (string2.isEmpty()) {
                                return null;
                            }
                            String str3 = string2 + DoodExtractorExtended.this.getRandomString(10) + matchRegex2 + (System.currentTimeMillis() / 1000);
                            VideoSource videoSource = new VideoSource();
                            videoSource.streamUrl = str3;
                            videoSource.label = "1080p · [FVSTREAM 5] · [DIRECT] · English";
                            videoSource.streamable = true;
                            videoSource.quality = 720;
                            videoSource.referer = "https://" + host + RemoteSettings.FORWARD_SLASH_STRING;
                            HashMap hashMap = new HashMap();
                            videoSource.headers = hashMap;
                            hashMap.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36");
                            return videoSource;
                        }
                    }
                    return null;
                } catch (Exception e3) {
                    Log.e(DoodExtractorExtended.TAG, "Doodstream extraction failed", e3);
                    return null;
                }
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(VideoSource videoSource) {
                if (videoSource != null) {
                    DoodExtractorExtended.this.callBack.OnSuccess(videoSource);
                } else {
                    DoodExtractorExtended.this.callBack.OnError();
                }
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str);
    }
}
