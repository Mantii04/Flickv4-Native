package flix.com.vision.extractors;

import U4.f;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.AsyncTask;
import androidx.media3.datasource.DataSchemeDataSource;
import com.google.firebase.analytics.FirebaseAnalytics;
import flix.com.vision.App;
import flix.com.vision.models.VideoSource;
import flix.com.vision.processors.english.m;
import flix.com.vision.utils.JsonUtils;
import g6.e;
import h5.AbstractC1000n;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.ResponseBody;

/* loaded from: classes2.dex */
public class GogoExtractor extends m {
    Context context;
    String domain;
    ArrayList<VideoSource> sources;

    public GogoExtractor(Context context, String str, f fVar) {
        this.domain = str;
        this.context = context;
        this.callBack = fVar;
        this.sources = new ArrayList<>();
    }

    @SuppressLint({"StaticFieldLeak"})
    private void doSearch(final String str) {
        new AsyncTask<Void, Void, String>() { // from class: flix.com.vision.extractors.GogoExtractor.1
            @Override // android.os.AsyncTask
            public String doInBackground(Void... voidArr) {
                ResponseBody body;
                try {
                    body = App.getAjax("https://streamcool.pro/encrypt-ajax.php?" + ("id=" + AbstractC1000n.cryptoHandler(str.split("id=")[1].split("&")[0], "9262859232435825", "93422192433952489752342908585752", true))).body();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                if (body == null) {
                    return null;
                }
                String asString = JsonUtils.parse(AbstractC1000n.cryptoHandler(JsonUtils.parse(body.string()).getAsJsonObject().get(DataSchemeDataSource.SCHEME_DATA).getAsString(), "9262859232435825", "93422192433952489752342908585752", false)).getAsJsonObject().get(FirebaseAnalytics.Param.SOURCE).getAsJsonArray().get(0).getAsJsonObject().get("file").getAsString();
                VideoSource videoSource = new VideoSource();
                videoSource.streamUrl = asString;
                videoSource.streamable = true;
                videoSource.external_link = false;
                videoSource.label = "1080p - [GOGOSTREAM] - [DIRECT] - English";
                GogoExtractor gogoExtractor = GogoExtractor.this;
                videoSource.referer = gogoExtractor.domain;
                videoSource.quality = 1080;
                gogoExtractor.callBack.OnSuccess(videoSource);
                GogoExtractor gogoExtractor2 = GogoExtractor.this;
                Y4.c cVar = new Y4.c(gogoExtractor2.context, gogoExtractor2.callBack);
                cVar.f4392a = true;
                cVar.process(videoSource, videoSource.referer);
                try {
                    String str2 = str;
                    Iterator<org.jsoup.nodes.b> it = e.parse(App.get(str2, str2).body().string()).select(".list-server-items > .linkserver").iterator();
                    while (it.hasNext()) {
                        org.jsoup.nodes.b next = it.next();
                        try {
                            String attr = next.attr("data-status");
                            if (attr != null && attr.trim().equals("1")) {
                                String attr2 = next.attr("data-video");
                                VideoSource videoSource2 = new VideoSource();
                                videoSource2.streamUrl = attr2;
                                videoSource2.external_link = true;
                                videoSource2.label = GogoExtractor.this.checkLinkLabel(attr2);
                                GogoExtractor.this.addLink(videoSource2);
                            }
                        } catch (Exception unused) {
                        }
                    }
                } catch (Exception unused2) {
                }
                return null;
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(String str2) {
                super.onPostExecute((AnonymousClass1) str2);
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public void process(String str) {
        doSearch(str);
    }
}
