package Z4;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.ValueCallback;
import flix.com.vision.models.Movie;
import org.apache.commons.lang3.StringEscapeUtils;

/* renamed from: Z4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0368b implements ValueCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f4537a;

    public /* synthetic */ C0368b(e eVar) {
        this.f4537a = eVar;
    }

    @Override // android.webkit.ValueCallback
    public final void onReceiveValue(Object obj) {
        String str = (String) obj;
        e eVar = this.f4537a;
        eVar.getClass();
        if (str == null || str.equals("null") || str.isEmpty()) {
            return;
        }
        String unescapeJava = StringEscapeUtils.unescapeJava(str);
        if (unescapeJava.startsWith("\"") && unescapeJava.endsWith("\"")) {
            unescapeJava = A.i.d(1, 1, unescapeJava);
        }
        Movie movie = eVar.f4542b;
        boolean z6 = unescapeJava.toLowerCase().contains(movie.getTitle().toLowerCase()) && unescapeJava.contains("results");
        if ((!unescapeJava.contains("Checking your browser") && !unescapeJava.contains("Just a moment") && unescapeJava.length() >= 2000) || z6) {
            Log.d("DDLValley", "Bypass successful! Found results for: " + movie.getTitle());
            eVar.f4548h = 0;
            new Thread(new RunnableC0367a(eVar, unescapeJava, 1)).start();
            return;
        }
        int i2 = eVar.f4548h;
        if (i2 < 10) {
            eVar.f4548h = i2 + 1;
            Log.d("DDLValley", "Still waiting for bypass... Retry #" + eVar.f4548h);
            new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0369c(eVar, 0), androidx.media3.common.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        }
    }
}
