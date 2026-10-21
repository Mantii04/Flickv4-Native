package flix.com.vision.processors.english;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.WebView;
import com.google.firebase.analytics.FirebaseAnalytics;
import flix.com.vision.models.Movie;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class y extends m {

    /* renamed from: a, reason: collision with root package name */
    public final Movie f16129a;

    /* renamed from: b, reason: collision with root package name */
    public WebView f16130b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f16131c;

    public y(Context context, Movie movie, U4.f fVar) {
        this.f16129a = movie;
        this.f16131c = context;
        this.callBack = fVar;
        new ArrayList();
        this.domain = "https://streamingunity.dog/";
    }

    public final ArrayList e(String str) {
        org.jsoup.nodes.b first;
        ArrayList arrayList = new ArrayList();
        org.jsoup.nodes.b elementById = g6.e.parse(str).getElementById(FirebaseAnalytics.Param.CONTENT);
        if (elementById == null) {
            Log.e("StreamingCommunity", "Element with ID 'content' not found in HTML");
            return arrayList;
        }
        Iterator<org.jsoup.nodes.b> it = elementById.getElementsByTag("A").iterator();
        while (it.hasNext()) {
            org.jsoup.nodes.b next = it.next();
            org.jsoup.nodes.b first2 = next.getElementsByTag("DIV").first();
            if (first2 != null && (first = first2.getElementsByTag("IMG").first()) != null && first.attr("alt") != null && first.attr("alt").equalsIgnoreCase(this.f16129a.getTitle())) {
                String attr = next.attr("href");
                if (!attr.isEmpty()) {
                    arrayList.add(attr);
                }
            }
        }
        return arrayList;
    }

    public void process() {
        new Handler(Looper.getMainLooper()).post(new w(this, this.domain + "en/search?q=" + this.f16129a.getTitle().replace(",", "").replace("(", "").replace(")", "").replace(StringUtils.SPACE, "%20"), 0));
    }
}
