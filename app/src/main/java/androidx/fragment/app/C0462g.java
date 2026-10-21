package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: androidx.fragment.app.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0462g extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f6199a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f6200b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f6201c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ L0 f6202d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0478p f6203e;

    public C0462g(ViewGroup viewGroup, View view, boolean z6, L0 l02, C0478p c0478p) {
        this.f6199a = viewGroup;
        this.f6200b = view;
        this.f6201c = z6;
        this.f6202d = l02;
        this.f6203e = c0478p;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        ViewGroup viewGroup = this.f6199a;
        View view = this.f6200b;
        viewGroup.endViewTransition(view);
        boolean z6 = this.f6201c;
        L0 l02 = this.f6202d;
        if (z6) {
            l02.getFinalState().b(view);
        }
        this.f6203e.a();
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Animator from operation " + l02 + " has ended.");
        }
    }
}
