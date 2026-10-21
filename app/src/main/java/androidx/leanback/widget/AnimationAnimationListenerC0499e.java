package androidx.leanback.widget;

import android.view.View;
import android.view.animation.Animation;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

/* renamed from: androidx.leanback.widget.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class AnimationAnimationListenerC0499e implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractC0511k f6784a;

    public AnimationAnimationListenerC0499e(AbstractC0511k abstractC0511k) {
        this.f6784a = abstractC0511k;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        AbstractC0511k abstractC0511k = this.f6784a;
        if (abstractC0511k.f6833x == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            for (int i2 = 0; i2 < abstractC0511k.f6823m.size(); i2++) {
                ((View) abstractC0511k.f6823m.get(i2)).setVisibility(8);
            }
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
