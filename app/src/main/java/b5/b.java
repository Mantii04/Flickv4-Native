package b5;

import U4.f;
import android.content.Context;
import android.os.AsyncTask;
import flix.com.vision.App;
import flix.com.vision.models.Movie;
import flix.com.vision.processors.english.m;
import g6.e;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class b extends m {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8519a;

    public b(Context context, Movie movie, f fVar) {
        this.f8519a = context;
        this.callBack = fVar;
        new ArrayList();
        this.domain = "https://kissasiantv.to";
    }

    public static void e() {
        try {
            org.jsoup.nodes.b bVar = e.parse(App.get("https://kissasiantv.to/drama-list.html", "https://kissasiantv.to/drama-list.html").body().string()).getElementsByClass("barContentgenres").get(1);
            ArrayList arrayList = new ArrayList();
            Iterator<org.jsoup.nodes.b> it = bVar.getElementsByTag("LI").iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getElementsByTag("A").first().attr("title"));
            }
            Iterator it2 = arrayList.iterator();
            String str = "";
            while (it2.hasNext()) {
                str = str + ((String) it2.next()) + ",";
            }
        } catch (Exception unused) {
        }
    }

    public void process(String str) {
        new AsyncTaskC0665a(this, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
