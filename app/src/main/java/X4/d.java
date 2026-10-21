package X4;

import android.os.AsyncTask;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.firebase.analytics.FirebaseAnalytics;
import flix.com.vision.models.adult.AdultVideo;
import h6.h;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class d extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4243a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f4244b;

    public d(e eVar, String str) {
        this.f4244b = eVar;
        this.f4243a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        try {
            org.jsoup.nodes.b elementById = ((h) g6.e.connect(this.f4243a)).get().getElementById(FirebaseAnalytics.Param.CONTENT);
            e eVar = this.f4244b;
            if (elementById != null) {
                Iterator<org.jsoup.nodes.b> it = elementById.getElementsByTag("DIV").iterator();
                while (it.hasNext()) {
                    org.jsoup.nodes.b next = it.next();
                    try {
                        String attr = next.attr("data-id");
                        if (attr != null && attr.length() >= 4) {
                            String str = "https://xvideos.com" + next.select(CmcdData.OBJECT_TYPE_AUDIO_ONLY).first().attr("href");
                            String attr2 = next.select("img").first().attr("data-src");
                            String text = next.select("div[class^=thumb-under]").first().select(CmcdData.OBJECT_TYPE_AUDIO_ONLY).first().text();
                            AdultVideo adultVideo = new AdultVideo();
                            org.jsoup.nodes.b first = next.select("span[class^=video-sd-mark]").first();
                            if (first == null) {
                                first = next.select("span[class^=video-hd-mark]").first();
                            }
                            if (first != null) {
                                adultVideo.resolution = first.text();
                            }
                            org.jsoup.nodes.b first2 = next.select("span[class^=duration]").first();
                            adultVideo.title = text;
                            adultVideo.img_url = attr2;
                            if (first2 != null) {
                                adultVideo.duration = first2.text();
                            }
                            adultVideo.url = str;
                            String str2 = adultVideo.duration;
                            if (str2 != null && str2.length() > 0) {
                                adultVideo.title = adultVideo.title.replace(adultVideo.duration, "");
                            }
                            eVar.f4245a.add(adultVideo);
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
            }
            if (eVar.f4245a.size() <= 0) {
                return null;
            }
            eVar.f4246b.OnVideoListSuccess(eVar.f4245a);
            return null;
        } catch (Exception e7) {
            e7.printStackTrace();
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((d) str);
    }
}
