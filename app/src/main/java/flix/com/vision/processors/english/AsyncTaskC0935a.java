package flix.com.vision.processors.english;

import android.os.AsyncTask;
import androidx.media3.exoplayer.upstream.CmcdData;
import flix.com.vision.extractors.GogoExtractor;
import flix.com.vision.models.VideoSource;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: flix.com.vision.processors.english.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class AsyncTaskC0935a extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f16072a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0936b f16073b;

    public AsyncTaskC0935a(C0936b c0936b, String str) {
        this.f16073b = c0936b;
        this.f16072a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        C0936b c0936b;
        String str = this.f16072a;
        try {
            Iterator<org.jsoup.nodes.b> it = ((h6.h) g6.e.connect(str)).get().getElementsByClass("anime_muti_link").first().getElementsByTag("li").iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                c0936b = this.f16073b;
                if (!hasNext) {
                    break;
                }
                org.jsoup.nodes.b next = it.next();
                org.jsoup.nodes.b first = next.getElementsByTag(CmcdData.OBJECT_TYPE_AUDIO_ONLY).first();
                if (first != null) {
                    String attr = first.attr("data-video");
                    if (!attr.contains(".php?id=") && !next.attr("class").equals("vidcdn")) {
                        if (!attr.contains("vev.")) {
                            VideoSource videoSource = new VideoSource();
                            videoSource.streamUrl = attr;
                            videoSource.label = c0936b.checkLinkLabel(attr);
                            videoSource.external_link = true;
                            c0936b.f16075b.add(videoSource);
                        }
                    }
                    new GogoExtractor(c0936b.f16074a, str, c0936b.callBack).process(attr);
                }
            }
            if (c0936b.f16075b.size() <= 0) {
                return null;
            }
            new ArrayList();
            Iterator it2 = c0936b.f16075b.iterator();
            while (it2.hasNext()) {
                c0936b.addLink((VideoSource) it2.next());
            }
            return null;
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((AsyncTaskC0935a) str);
    }
}
