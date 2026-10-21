package androidx.fragment.app;

import android.animation.Animator;
import android.util.Log;

/* renamed from: androidx.fragment.app.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0464h implements I.e {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Animator f6204b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ L0 f6205e;

    public C0464h(Animator animator, L0 l02) {
        this.f6204b = animator;
        this.f6205e = l02;
    }

    @Override // I.e
    public void onCancel() {
        this.f6204b.end();
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Animator from operation " + this.f6205e + " has been canceled.");
        }
    }
}
