package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: androidx.fragment.app.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0470k implements I.e {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f6252b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f6253e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C0478p f6254f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ L0 f6255j;

    public C0470k(View view, ViewGroup viewGroup, C0478p c0478p, L0 l02) {
        this.f6252b = view;
        this.f6253e = viewGroup;
        this.f6254f = c0478p;
        this.f6255j = l02;
    }

    @Override // I.e
    public void onCancel() {
        View view = this.f6252b;
        view.clearAnimation();
        this.f6253e.endViewTransition(view);
        this.f6254f.a();
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Animation from operation " + this.f6255j + " has been cancelled.");
        }
    }
}
