package e5;

import android.os.AsyncTask;
import com.google.firebase.sessions.settings.RemoteSettings;
import flix.com.vision.models.VideoSource;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class c extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f13964a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f13965b;

    public c(d dVar, String str) {
        this.f13965b = dVar;
        this.f13964a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        String str;
        String attr;
        d dVar = this.f13965b;
        try {
            Iterator<org.jsoup.nodes.b> it = ((h6.h) g6.e.connect(this.f13964a)).get().getElementsByClass("ml-item").iterator();
            while (it.hasNext()) {
                org.jsoup.nodes.b first = it.next().getElementsByTag("A").first();
                if (first != null) {
                    String removeSpecialChars = dVar.removeSpecialChars(first.attr("oldtitle"));
                    String str2 = dVar.removeSpecialChars(dVar.f13966a.getTitle()) + dVar.f13966a.year + "hindi";
                    if (removeSpecialChars != null) {
                        if (!removeSpecialChars.toLowerCase().equals(str2.toLowerCase()) && !removeSpecialChars.equalsIgnoreCase(str2)) {
                        }
                        String attr2 = first.attr("href");
                        if (attr2.startsWith(RemoteSettings.FORWARD_SLASH_STRING)) {
                            str = dVar.domain + attr2;
                        } else {
                            str = dVar.domain + RemoteSettings.FORWARD_SLASH_STRING + attr2;
                        }
                        Iterator<org.jsoup.nodes.b> it2 = ((h6.h) g6.e.connect(str)).get().getElementsByClass("movieplay").iterator();
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
                                videoSource.label = dVar.checkLinkLabel(attr);
                                dVar.addLink(videoSource);
                            }
                        }
                        return null;
                    }
                    continue;
                }
            }
            return null;
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((c) str);
    }
}
