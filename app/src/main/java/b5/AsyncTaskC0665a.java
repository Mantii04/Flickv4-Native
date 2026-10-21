package b5;

import android.os.AsyncTask;
import androidx.media3.datasource.DataSchemeDataSource;
import com.google.firebase.analytics.FirebaseAnalytics;
import flix.com.vision.App;
import flix.com.vision.models.VideoSource;
import flix.com.vision.utils.JsonUtils;
import g6.e;
import h5.AbstractC1000n;
import j6.h;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.ResponseBody;

/* renamed from: b5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class AsyncTaskC0665a extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f8517a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f8518b;

    public AsyncTaskC0665a(b bVar, String str) {
        this.f8518b = bVar;
        this.f8517a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        b bVar = this.f8518b;
        try {
            b.e();
            new ArrayList();
            String str = this.f8517a;
            String str2 = "https:" + e.parse(App.get(str, str).body().string()).getElementsByTag("IFRAME").first().attr("src");
            h parse = e.parse(App.get(str2, bVar.domain).body().string());
            String str3 = str2.split("id=")[1].split("&")[0];
            ResponseBody body = App.getAjax(("https://" + new URI(str2).getHost()) + "/encrypt-ajax.php?" + ("id=" + AbstractC1000n.cryptoHandler(str3, "9262859232435825", "93422192433952489752342908585752", true))).body();
            if (body != null) {
                String asString = JsonUtils.parse(AbstractC1000n.cryptoHandler(JsonUtils.parse(body.string()).getAsJsonObject().get(DataSchemeDataSource.SCHEME_DATA).getAsString(), "9262859232435825", "93422192433952489752342908585752", false)).getAsJsonObject().get(FirebaseAnalytics.Param.SOURCE).getAsJsonArray().get(0).getAsJsonObject().get("file").getAsString();
                VideoSource videoSource = new VideoSource();
                videoSource.streamUrl = asString;
                videoSource.streamable = true;
                videoSource.external_link = false;
                videoSource.label = "1080p - [GOGOSTREAM] - [DIRECT]";
                videoSource.referer = str2;
                videoSource.quality = 1080;
                bVar.callBack.OnSuccess(videoSource);
                Y4.c cVar = new Y4.c(bVar.f8519a, bVar.callBack);
                cVar.f4392a = true;
                cVar.process(videoSource, null);
                Iterator<org.jsoup.nodes.b> it = parse.select(".list-server-items > .linkserver").iterator();
                while (it.hasNext()) {
                    org.jsoup.nodes.b next = it.next();
                    try {
                        String attr = next.attr("data-status");
                        if (attr != null && attr.trim().equals("1")) {
                            String attr2 = next.attr("data-video");
                            VideoSource videoSource2 = new VideoSource();
                            videoSource2.streamUrl = attr2;
                            videoSource2.external_link = true;
                            videoSource2.label = bVar.checkLinkLabel(attr2);
                            bVar.addLink(videoSource2);
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((AsyncTaskC0665a) str);
    }
}
