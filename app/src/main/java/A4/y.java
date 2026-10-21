package A4;

import android.animation.ObjectAnimator;
import android.view.animation.DecelerateInterpolator;
import flix.com.vision.activities.leanback.SlideshowActivity;
import m4.InterfaceC1330i;

/* loaded from: classes2.dex */
public final class y implements InterfaceC1330i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f103a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SlideshowActivity f104b;

    public y(SlideshowActivity slideshowActivity, boolean z6) {
        this.f104b = slideshowActivity;
        this.f103a = z6;
    }

    @Override // m4.InterfaceC1330i
    public void onSuccess() {
        boolean z6 = this.f103a;
        SlideshowActivity slideshowActivity = this.f104b;
        if (!z6) {
            slideshowActivity.f15504e.setAlpha(1.0f);
            SlideshowActivity.e(slideshowActivity);
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(slideshowActivity.f15504e, "alpha", 0.0f, 1.0f);
        ofFloat.setDuration(1000L);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.addListener(new z(slideshowActivity));
        ofFloat.start();
    }

    @Override // m4.InterfaceC1330i
    public void onError(Exception exc) {
    }
}
