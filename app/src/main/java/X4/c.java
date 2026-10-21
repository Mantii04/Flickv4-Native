package X4;

import android.content.Context;
import android.os.AsyncTask;
import flix.com.vision.models.adult.AdultLink;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4240a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final U4.a f4241b;

    /* renamed from: c, reason: collision with root package name */
    public AdultLink f4242c;

    public c(Context context, U4.a aVar) {
        this.f4241b = aVar;
    }

    public void addLink(String str, String str2) {
        AdultLink adultLink = new AdultLink();
        adultLink.label = str2;
        adultLink.stream_url = str;
        if (str2 == null || !str2.contains("1080")) {
            this.f4240a.add(adultLink);
        } else {
            this.f4242c = adultLink;
        }
    }

    public void process(String str) {
        new b(this, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
