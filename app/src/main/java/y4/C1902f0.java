package y4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import flix.com.vision.activities.MainActivity;

/* renamed from: y4.f0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1902f0 extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f21226a;

    public C1902f0(MainActivity mainActivity) {
        this.f21226a = mainActivity;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.f21226a.f14764Q = false;
    }
}
