package J3;

import android.animation.ValueAnimator;
import com.google.android.material.tabs.TabLayout;

/* loaded from: classes2.dex */
public final class c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TabLayout f1511b;

    public c(TabLayout tabLayout) {
        this.f1511b = tabLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f1511b.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
    }
}
