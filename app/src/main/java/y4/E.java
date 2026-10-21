package y4;

import android.os.AsyncTask;
import flix.com.vision.App;
import flix.com.vision.activities.DramaSearchActivityMobile;
import flix.com.vision.models.Drama;
import h5.AbstractC0995i;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class E extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f21119a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final String f21120b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DramaSearchActivityMobile f21121c;

    public E(DramaSearchActivityMobile dramaSearchActivityMobile, String str) {
        this.f21121c = dramaSearchActivityMobile;
        this.f21120b = dramaSearchActivityMobile.f14634p + "/search.html?keyword=" + str.replace(StringUtils.SPACE, "+");
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        try {
            String str = this.f21120b;
            Iterator<org.jsoup.nodes.b> it = g6.e.parse(App.get(str, str).body().string()).select("div.list-drama div.item").iterator();
            while (it.hasNext()) {
                org.jsoup.nodes.b next = it.next();
                try {
                    Drama drama = new Drama();
                    org.jsoup.nodes.b first = next.getElementsByTag("IMG").first();
                    if (first != null) {
                        String attr = first.attr("alt");
                        String str2 = "https://" + first.attr("src");
                        drama.title = attr;
                        drama.image_url = str2;
                    }
                    drama.url = this.f21121c.f14634p + next.getElementsByTag("A").first().attr("href");
                    try {
                        if (drama.title.toLowerCase().endsWith(")")) {
                            String substring = drama.title.substring(r2.length() - 6);
                            drama.title = drama.title.replace(substring, "").trim();
                            drama.year = substring.replace("(", "").replace(")", "");
                        }
                    } catch (Exception unused) {
                    }
                    this.f21119a.add(drama);
                } catch (Exception unused2) {
                }
            }
            return null;
        } catch (Exception unused3) {
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((E) str);
        DramaSearchActivityMobile dramaSearchActivityMobile = this.f21121c;
        Q4.d dVar = dramaSearchActivityMobile.f14637s;
        if (dVar != null) {
            try {
                dVar.dismiss();
            } catch (Exception unused) {
            }
        }
        ArrayList arrayList = this.f21119a;
        if (arrayList.isEmpty()) {
            AbstractC0995i.makeToast(dramaSearchActivityMobile.getBaseContext(), "No result found!", false);
            return;
        }
        dramaSearchActivityMobile.f14631j.clear();
        dramaSearchActivityMobile.f14631j.addAll(arrayList);
        arrayList.clear();
        dramaSearchActivityMobile.f14633n.notifyDataSetChanged();
    }
}
