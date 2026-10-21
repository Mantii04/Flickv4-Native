package e5;

import android.os.AsyncTask;
import com.google.firebase.sessions.settings.RemoteSettings;
import cz.msebera.android.httpclient.HttpHost;
import flix.com.vision.models.VideoSource;
import java.io.IOException;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class e extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f13967a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f13968b;

    public e(f fVar, String str) {
        this.f13968b = fVar;
        this.f13967a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        String attr;
        f fVar = this.f13968b;
        try {
            Iterator<org.jsoup.nodes.b> it = ((h6.h) g6.e.connect(this.f13967a)).get().getElementsByClass("cont_display").iterator();
            while (it.hasNext()) {
                org.jsoup.nodes.b first = it.next().getElementsByTag("A").first();
                if (first != null) {
                    String removeSpecialChars = fVar.removeSpecialChars(first.attr("title"));
                    String str = fVar.removeSpecialChars(fVar.f13969a.getTitle()) + fVar.f13969a.year;
                    if (removeSpecialChars != null && removeSpecialChars.toLowerCase().contains(str.toLowerCase())) {
                        String attr2 = first.attr("href");
                        if (attr2 != null && !attr2.startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
                            if (attr2.startsWith(RemoteSettings.FORWARD_SLASH_STRING)) {
                                attr2 = fVar.domain + attr2;
                            } else {
                                attr2 = fVar.domain + RemoteSettings.FORWARD_SLASH_STRING + attr2;
                            }
                        }
                        Iterator<org.jsoup.nodes.b> it2 = ((h6.h) g6.e.connect(attr2)).get().getElementsByTag("A").iterator();
                        while (it2.hasNext()) {
                            org.jsoup.nodes.b next = it2.next();
                            if (fVar.removeSpecialChars(next.text()).contains(str) && (attr = next.attr("href")) != null && !attr.isEmpty()) {
                                if (attr.startsWith("//")) {
                                    attr = "http:" + attr;
                                }
                                VideoSource videoSource = new VideoSource();
                                videoSource.streamUrl = attr;
                                videoSource.external_link = true;
                                videoSource.label = fVar.checkLinkLabel(attr);
                                videoSource.isHindi = true;
                                fVar.addLink(videoSource);
                            }
                        }
                    }
                }
            }
            return null;
        } catch (IOException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((e) str);
    }
}
