package flix.com.vision.processors.english;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.WebView;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import flix.com.vision.extractors.VixcloudExtractor;
import flix.com.vision.models.Video;
import flix.com.vision.models.VideoSource;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final /* synthetic */ class z implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16132b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ B f16133e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f16134f;

    public /* synthetic */ z(B b7, String str, int i2) {
        this.f16132b = i2;
        this.f16133e = b7;
        this.f16134f = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Video extract;
        switch (this.f16132b) {
            case 0:
                B b7 = this.f16133e;
                WebView webView = new WebView(b7.f16062c);
                b7.f16060a = webView;
                webView.getSettings().setJavaScriptEnabled(true);
                b7.f16060a.getSettings().setDomStorageEnabled(true);
                b7.f16060a.setWebViewClient(new A(b7));
                b7.f16060a.loadUrl(this.f16134f);
                break;
            default:
                String str = this.f16134f;
                B b8 = this.f16133e;
                try {
                    org.jsoup.nodes.b selectFirst = ((h6.h) ((h6.h) g6.e.connect(str)).timeout(10000)).get().selectFirst("#app");
                    if (selectFirst == null) {
                        Log.e("StreamingCommunity", "Required #app element missing from season page");
                    } else {
                        String unescapeEntities = k6.e.unescapeEntities(selectFirst.attr("data-page"), false);
                        if (!b8.f16065f) {
                            b8.f16065f = true;
                            JsonElement jsonElement = (JsonElement) new Gson().fromJson(unescapeEntities, JsonElement.class);
                            j6.h hVar = ((h6.h) ((h6.h) g6.e.connect(b8.domain + "en/iframe/" + B.getSeasonIdByNumber(jsonElement, b8.f16064e) + "?episode_id=" + B.getEpisodeIdByNumber(jsonElement, b8.f16063d))).timeout(10000)).get();
                            if (hVar.getElementsByTag("IFRAME").first() == null) {
                                Log.e("StreamingCommunity", "Iframe not found on resolver page");
                            } else {
                                ArrayList arrayList = new ArrayList();
                                String attr = hVar.getElementsByTag("IFRAME").first().attr("src");
                                if (!attr.isEmpty() && (extract = new VixcloudExtractor().extract(attr)) != null) {
                                    VideoSource videoSource = new VideoSource();
                                    videoSource.streamUrl = extract.getSource();
                                    videoSource.label = "1080p · [FVSTREAM 2] · [DIRECT] · English";
                                    videoSource.streamable = true;
                                    videoSource.is_embed = false;
                                    videoSource.quality = 1100;
                                    videoSource.referer = "https://vixcloud.co/";
                                    arrayList.add(videoSource);
                                    new Handler(Looper.getMainLooper()).post(new flix.com.vision.activities.leanback.fragment.a(11, b8, videoSource));
                                }
                            }
                        }
                    }
                    break;
                } catch (IOException | Exception unused) {
                    return;
                }
        }
    }
}
