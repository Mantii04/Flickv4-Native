package e5;

import android.os.AsyncTask;
import com.google.firebase.sessions.settings.RemoteSettings;
import cz.msebera.android.httpclient.HttpHost;
import flix.com.vision.models.VideoSource;
import java.io.IOException;
import java.util.Iterator;

/* renamed from: e5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class AsyncTaskC0857a extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f13961a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0858b f13962b;

    public AsyncTaskC0857a(C0858b c0858b, String str) {
        this.f13962b = c0858b;
        this.f13961a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        String attr;
        C0858b c0858b = this.f13962b;
        try {
            Iterator<org.jsoup.nodes.b> it = ((h6.h) g6.e.connect(this.f13961a)).get().getElementsByClass("ml-item").iterator();
            while (it.hasNext()) {
                org.jsoup.nodes.b first = it.next().getElementsByTag("A").first();
                if (first != null) {
                    String removeSpecialChars = c0858b.removeSpecialChars(first.attr("oldtitle"));
                    String str = c0858b.removeSpecialChars(c0858b.f13963a.getTitle()) + c0858b.f13963a.year;
                    if (removeSpecialChars != null && removeSpecialChars.toLowerCase().contains(str.toLowerCase())) {
                        String attr2 = first.attr("href");
                        if (attr2 != null && !attr2.startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
                            if (attr2.startsWith(RemoteSettings.FORWARD_SLASH_STRING)) {
                                attr2 = c0858b.domain + attr2;
                            } else {
                                attr2 = c0858b.domain + RemoteSettings.FORWARD_SLASH_STRING + attr2;
                            }
                        }
                        Iterator<org.jsoup.nodes.b> it2 = ((h6.h) g6.e.connect(attr2)).get().getElementsByClass("movieplay").iterator();
                        while (it2.hasNext()) {
                            org.jsoup.nodes.b first2 = it2.next().getElementsByTag("IFRAME").first();
                            if (first2 != null && (attr = first2.attr("src")) != null && !attr.isEmpty()) {
                                if (attr.startsWith("//")) {
                                    attr = "http:" + attr;
                                }
                                VideoSource videoSource = new VideoSource();
                                videoSource.streamUrl = attr;
                                videoSource.external_link = true;
                                videoSource.isHindi = true;
                                videoSource.label = c0858b.checkLinkLabel(attr);
                                c0858b.addLink(videoSource);
                            }
                        }
                        return null;
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
        super.onPostExecute((AsyncTaskC0857a) str);
    }
}
