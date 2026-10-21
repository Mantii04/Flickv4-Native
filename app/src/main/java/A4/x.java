package A4;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.animation.AccelerateInterpolator;
import flix.com.vision.activities.leanback.SlideshowActivity;

/* loaded from: classes2.dex */
public final class x implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SlideshowActivity f102b;

    public x(SlideshowActivity slideshowActivity) {
        this.f102b = slideshowActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        SlideshowActivity slideshowActivity = this.f102b;
        if (slideshowActivity.f15510q.isEmpty()) {
            return;
        }
        AnimatorSet animatorSet = slideshowActivity.f15512s;
        if (animatorSet != null && animatorSet.isRunning()) {
            slideshowActivity.f15512s.cancel();
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(slideshowActivity.f15504e, "alpha", 1.0f, 0.0f);
        ofFloat.setDuration(1000L);
        ofFloat.setInterpolator(new AccelerateInterpolator());
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(slideshowActivity.f15505f, "alpha", 1.0f, 0.0f);
        ofFloat2.setDuration(1000L);
        ofFloat2.setInterpolator(new AccelerateInterpolator());
        ofFloat2.addListener(new w(this));
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(slideshowActivity.f15506j, "alpha", 1.0f, 0.0f);
        ofFloat3.setDuration(1000L);
        ofFloat3.setInterpolator(new AccelerateInterpolator());
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(slideshowActivity.f15507m, "alpha", 1.0f, 0.0f);
        ofFloat4.setDuration(1000L);
        ofFloat4.setInterpolator(new AccelerateInterpolator());
        ofFloat.start();
        ofFloat2.start();
        ofFloat3.start();
        ofFloat4.start();
        slideshowActivity.f15509p.postDelayed(this, 14000L);
    }
}
