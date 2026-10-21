package y4;

import android.os.AsyncTask;
import flix.com.vision.App;
import flix.com.vision.activities.DramaSearchResultActivity;
import flix.com.vision.models.Drama;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class I extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f21131a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final String f21132b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f21133c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ DramaSearchResultActivity f21134d;

    public I(DramaSearchResultActivity dramaSearchResultActivity, boolean z6, String str) {
        this.f21134d = dramaSearchResultActivity;
        this.f21133c = z6;
        if (!z6) {
            str = dramaSearchResultActivity.f14654y + "/search.html?keyword=" + str.replace(StringUtils.SPACE, "+");
        }
        this.f21132b = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        try {
            String str = this.f21132b;
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
                    drama.url = this.f21134d.f14654y + next.getElementsByTag("A").first().attr("href");
                    try {
                        if (drama.title.toLowerCase().endsWith(")")) {
                            String substring = drama.title.substring(r2.length() - 6);
                            drama.title = drama.title.replace(substring, "").trim();
                            drama.year = substring.replace("(", "").replace(")", "");
                        }
                    } catch (Exception unused) {
                    }
                    this.f21131a.add(drama);
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
        super.onPostExecute((I) str);
        ArrayList arrayList = this.f21131a;
        DramaSearchResultActivity dramaSearchResultActivity = this.f21134d;
        dramaSearchResultActivity.f14648s.clear();
        dramaSearchResultActivity.f14648s.addAll(arrayList);
        arrayList.clear();
        dramaSearchResultActivity.f14647r.setVisibility(8);
        if (dramaSearchResultActivity.f14648s.size() < 1) {
            dramaSearchResultActivity.f14651v.setText("No anime found");
            dramaSearchResultActivity.f14651v.setVisibility(0);
        } else if (this.f21133c) {
            Collections.shuffle(dramaSearchResultActivity.f14648s);
        } else {
            dramaSearchResultActivity.f14651v.setVisibility(8);
        }
        dramaSearchResultActivity.f14649t.getAdapter().notifyDataSetChanged();
        dramaSearchResultActivity.f14649t.invalidate();
        dramaSearchResultActivity.f14647r.setVisibility(8);
    }
}
