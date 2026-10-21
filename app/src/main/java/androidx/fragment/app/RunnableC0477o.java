package androidx.fragment.app;

import android.util.Log;

/* renamed from: androidx.fragment.app.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0477o implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f6278b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ L0 f6279e;

    public RunnableC0477o(r rVar, L0 l02) {
        this.f6278b = rVar;
        this.f6279e = l02;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6278b.a();
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Transition for operation " + this.f6279e + "has completed");
        }
    }
}
