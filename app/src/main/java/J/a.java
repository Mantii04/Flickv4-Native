package J;

import android.graphics.Typeface;

/* loaded from: classes.dex */
public final class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f1392b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Typeface f1393e;

    public a(r rVar, Typeface typeface) {
        this.f1392b = rVar;
        this.f1393e = typeface;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1392b.onTypefaceRetrieved(this.f1393e);
    }
}
