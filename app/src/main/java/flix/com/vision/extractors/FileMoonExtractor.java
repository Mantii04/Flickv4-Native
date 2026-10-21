package flix.com.vision.extractors;

import P5.i;
import U4.f;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.AsyncTask;
import com.google.gson.JsonArray;
import flix.com.vision.App;
import flix.com.vision.models.VideoSource;
import flix.com.vision.processors.english.m;
import flix.com.vision.utils.JsonUtils;
import g6.e;
import h5.C0997k;
import java.util.ArrayList;
import kotlin.text.Regex;

/* loaded from: classes2.dex */
public class FileMoonExtractor extends m {
    Context context;
    ArrayList<VideoSource> sources;

    public FileMoonExtractor(Context context, f fVar) {
        this.context = context;
        this.callBack = fVar;
        this.sources = new ArrayList<>();
        this.domain = "https://azm.to";
    }

    @SuppressLint({"StaticFieldLeak"})
    public void fetchLinks(final VideoSource videoSource) {
        new AsyncTask<Void, Void, String>() { // from class: flix.com.vision.extractors.FileMoonExtractor.1
            @Override // android.os.AsyncTask
            public String doInBackground(Void... voidArr) {
                try {
                    JsonArray asJsonArray = JsonUtils.parse(FileMoonExtractor.this.getlink(new C0997k(e.parse(App.get(videoSource.streamUrl, FileMoonExtractor.this.domain).body().string()).select("script:containsData(function(p,a,c,k,e,d))").last().data()).unpack()).replace(".setup(", "").replace(");", "")).getAsJsonObject().get("sources").getAsJsonArray();
                    for (int i2 = 0; i2 < asJsonArray.size(); i2++) {
                        String asString = asJsonArray.get(i2).getAsJsonObject().get("file").getAsString();
                        VideoSource videoSource2 = new VideoSource();
                        videoSource2.streamUrl = asString;
                        videoSource2.streamable = true;
                        videoSource2.external_link = false;
                        videoSource2.requireVLC = true;
                        videoSource2.label = "1080p - [FILEMOON] - [DIRECT] - English";
                        FileMoonExtractor fileMoonExtractor = FileMoonExtractor.this;
                        videoSource2.referer = fileMoonExtractor.domain;
                        fileMoonExtractor.callBack.OnSuccess(videoSource2);
                    }
                    return null;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return null;
                }
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(String str) {
                super.onPostExecute((AnonymousClass1) str);
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public String getlink(String str) {
        try {
            return ((i) new Regex(".setup(.*?);").find(str, 0)).getValue();
        } catch (Exception unused) {
            return null;
        }
    }
}
