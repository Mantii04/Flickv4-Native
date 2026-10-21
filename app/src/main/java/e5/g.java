package e5;

import android.os.AsyncTask;
import com.google.firebase.sessions.settings.RemoteSettings;
import cz.msebera.android.httpclient.HttpHost;
import flix.com.vision.models.VideoSource;
import java.io.IOException;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class g extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f13970a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f13971b;

    public g(h hVar, String str) {
        this.f13971b = hVar;
        this.f13970a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        String attr;
        h hVar = this.f13971b;
        try {
            Iterator<org.jsoup.nodes.b> it = ((h6.h) g6.e.connect(this.f13970a)).get().getElementsByTag("ARTICLE").iterator();
            while (it.hasNext()) {
                org.jsoup.nodes.b first = it.next().getElementsByTag("A").first();
                if (first != null) {
                    String removeSpecialChars = hVar.removeSpecialChars(first.attr("title"));
                    String str = hVar.removeSpecialChars(hVar.f13972a.getTitle()) + hVar.f13972a.year;
                    if (removeSpecialChars != null) {
                        if (!removeSpecialChars.toLowerCase().equals(str.toLowerCase())) {
                            Locale locale = Locale.ROOT;
                            if (removeSpecialChars.toLowerCase(locale).contains(hVar.removeSpecialChars(hVar.f13972a.getTitle() + "hindi").toLowerCase(locale))) {
                            }
                        }
                        String attr2 = first.attr("href");
                        if (attr2 != null && !attr2.startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
                            if (attr2.startsWith(RemoteSettings.FORWARD_SLASH_STRING)) {
                                attr2 = hVar.domain + attr2;
                            } else {
                                attr2 = hVar.domain + RemoteSettings.FORWARD_SLASH_STRING + attr2;
                            }
                        }
                        Iterator<org.jsoup.nodes.b> it2 = ((h6.h) g6.e.connect(attr2)).get().getElementsByTag("IFRAME").iterator();
                        while (it2.hasNext()) {
                            org.jsoup.nodes.b next = it2.next();
                            if (next != null && (attr = next.attr("src")) != null && !attr.isEmpty()) {
                                if (attr.startsWith("//")) {
                                    attr = "http:" + attr;
                                }
                                VideoSource videoSource = new VideoSource();
                                videoSource.streamUrl = attr;
                                videoSource.external_link = true;
                                videoSource.isHindi = true;
                                videoSource.label = hVar.checkLinkLabel(attr);
                                hVar.addLink(videoSource);
                            }
                        }
                        return null;
                    }
                    continue;
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
        super.onPostExecute((g) str);
    }
}
