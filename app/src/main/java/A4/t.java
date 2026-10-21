package A4;

import android.animation.ObjectAnimator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import flix.com.vision.activities.leanback.SlideshowActivity;

/* loaded from: classes2.dex */
public final /* synthetic */ class t implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f94b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SlideshowActivity f95e;

    public /* synthetic */ t(SlideshowActivity slideshowActivity, int i2) {
        this.f94b = i2;
        this.f95e = slideshowActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SlideshowActivity slideshowActivity = this.f95e;
        switch (this.f94b) {
            case 0:
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(slideshowActivity.f15505f, "alpha", 0.0f, 1.0f);
                ofFloat.setDuration(1000L);
                ofFloat.setInterpolator(new DecelerateInterpolator());
                ofFloat.addListener(new A());
                ofFloat.start();
                break;
            default:
                ImageView imageView = slideshowActivity.f15505f;
                if (imageView != null && imageView.getVisibility() != 0) {
                    slideshowActivity.f15505f.setVisibility(0);
                    break;
                }
                break;
        }
    }
}
