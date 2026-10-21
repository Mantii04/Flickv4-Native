package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;

/* renamed from: androidx.fragment.app.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class AnimationAnimationListenerC0468j implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ L0 f6248a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f6249b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f6250c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0478p f6251d;

    public AnimationAnimationListenerC0468j(View view, ViewGroup viewGroup, C0478p c0478p, L0 l02) {
        this.f6248a = l02;
        this.f6249b = viewGroup;
        this.f6250c = view;
        this.f6251d = c0478p;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f6249b.post(new RunnableC0466i(this));
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Animation from operation " + this.f6248a + " has ended.");
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Animation from operation " + this.f6248a + " has reached onAnimationStart.");
        }
    }
}
