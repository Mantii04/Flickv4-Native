package flix.com.vision.extractors;

import U4.f;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import com.google.firebase.sessions.settings.RemoteSettings;
import flix.com.vision.App;
import flix.com.vision.models.VideoSource;
import flix.com.vision.subtitles.OpenSubtitles;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;

/* loaded from: classes2.dex */
public class VidsrcExtractor extends BaseExtractor {
    private f callBack;
    private Context context;
    private final String TAG = "VidsrcExtractor";
    private final String baseHelperUrl = "https://9anime.eltik.net";
    private final String vidsrcUrl = "https://vsembed.ru";

    public VidsrcExtractor(Context context, f fVar) {
        this.context = context;
        this.callBack = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String matchRegex(String str, String str2) {
        try {
            Matcher matcher = Pattern.compile(str2).matcher(str);
            if (matcher.find()) {
                return matcher.group(1);
            }
            return null;
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    @SuppressLint({"StaticFieldLeak"})
    public void fetchLinks(String str, final boolean z6) {
        new AsyncTask<Void, Void, VideoSource>() { // from class: flix.com.vision.extractors.VidsrcExtractor.1
            @Override // android.os.AsyncTask
            public VideoSource doInBackground(Void... voidArr) {
                String concat;
                String matchRegex;
                try {
                    concat = ("https://vsembed.ru/embed/" + (z6 ? "tv" : "movie") + "/124364").concat("/1-1");
                    matchRegex = VidsrcExtractor.this.matchRegex(App.get(concat, "https://vsembed.ru").body().string(), "data-i=\"([^\"]*)\"");
                } catch (Exception e3) {
                    Log.e("VidsrcExtractor", "Extraction failed", e3);
                }
                if (matchRegex == null) {
                    return null;
                }
                String str2 = "https://vsembed.ru/ajax/embed/episode/" + matchRegex + "/sources";
                if (VidsrcExtractor.this.matchRegex(App.get(str2, concat).body().string(), "\"id\":\"([^\"]*)\".*\"Vidplay") == null) {
                    return null;
                }
                String matchRegex2 = VidsrcExtractor.this.matchRegex(App.get("https://vsembed.ru/ajax/embed/source/".concat(str2), str2).body().string(), "\"url\":\"([^\"]*)\"");
                if (matchRegex2 == null) {
                    return null;
                }
                String matchRegex3 = VidsrcExtractor.this.matchRegex(App.get("https://9anime.eltik.net/fmovies-decrypt?query=" + matchRegex2 + "&apikey=jerry", "https://vsembed.ru").body().string(), "\"url\":\"([^\"]*)\"");
                if (matchRegex3 == null) {
                    return null;
                }
                Matcher matcher = Pattern.compile(".*/e/([^?]*)\\?(.*)").matcher(matchRegex3);
                if (!matcher.find()) {
                    return null;
                }
                String group = matcher.group(1);
                String group2 = matcher.group(2);
                String string = App.get("https://vidstream.pro/futoken", matchRegex3).body().string();
                String matchRegex4 = VidsrcExtractor.this.matchRegex(new OkHttpClient().newCall(new Request.Builder().url("https://9anime.eltik.net/rawvizcloud?query=" + group + "&apikey=jerry").post(new FormBody.Builder().add(OpenSubtitles.Params.Key.QUERY, group).add("futoken", string).build()).build()).execute().body().string(), "\"rawURL\":\"([^\"]*)\"");
                if (matchRegex4 == null) {
                    return null;
                }
                String matchRegex5 = VidsrcExtractor.this.matchRegex(App.get(matchRegex4 + "?" + group2, matchRegex3).body().string().replace("\\/", RemoteSettings.FORWARD_SLASH_STRING), "\"file\":\"([^\"]*)\"");
                if (matchRegex5 != null) {
                    VideoSource videoSource = new VideoSource();
                    videoSource.streamUrl = matchRegex5;
                    videoSource.label = "1080p - [VIDSRC] - [DIRECT]";
                    videoSource.streamable = true;
                    videoSource.referer = matchRegex3;
                    return videoSource;
                }
                return null;
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(VideoSource videoSource) {
                if (videoSource != null) {
                    VidsrcExtractor.this.callBack.OnSuccess(videoSource);
                } else {
                    VidsrcExtractor.this.callBack.OnError();
                }
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
