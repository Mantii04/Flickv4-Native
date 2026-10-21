package androidx.leanback.app;

import android.animation.TimeAnimator;
import android.view.animation.DecelerateInterpolator;
import androidx.leanback.R;
import androidx.leanback.widget.A0;
import androidx.leanback.widget.C0492b0;
import androidx.leanback.widget.N0;

/* loaded from: classes.dex */
public final class g implements TimeAnimator.TimeListener {

    /* renamed from: h, reason: collision with root package name */
    public static final DecelerateInterpolator f6394h = new DecelerateInterpolator(2.0f);

    /* renamed from: a, reason: collision with root package name */
    public final N0 f6395a;

    /* renamed from: b, reason: collision with root package name */
    public final A0 f6396b;

    /* renamed from: c, reason: collision with root package name */
    public final TimeAnimator f6397c;

    /* renamed from: d, reason: collision with root package name */
    public final int f6398d;

    /* renamed from: e, reason: collision with root package name */
    public final DecelerateInterpolator f6399e;

    /* renamed from: f, reason: collision with root package name */
    public float f6400f;

    /* renamed from: g, reason: collision with root package name */
    public float f6401g;

    public g(C0492b0 c0492b0) {
        TimeAnimator timeAnimator = new TimeAnimator();
        this.f6397c = timeAnimator;
        this.f6395a = (N0) c0492b0.getPresenter();
        this.f6396b = c0492b0.getViewHolder();
        timeAnimator.setTimeListener(this);
        this.f6398d = c0492b0.f18217a.getResources().getInteger(R.integer.lb_browse_rows_anim_duration);
        this.f6399e = f6394h;
    }

    @Override // android.animation.TimeAnimator.TimeListener
    public void onTimeUpdate(TimeAnimator timeAnimator, long j7, long j8) {
        float f3;
        TimeAnimator timeAnimator2 = this.f6397c;
        if (timeAnimator2.isRunning()) {
            int i2 = this.f6398d;
            if (j7 >= i2) {
                timeAnimator2.end();
                f3 = 1.0f;
            } else {
                f3 = (float) (j7 / i2);
            }
            DecelerateInterpolator decelerateInterpolator = this.f6399e;
            if (decelerateInterpolator != null) {
                f3 = decelerateInterpolator.getInterpolation(f3);
            }
            this.f6395a.setSelectLevel(this.f6396b, (f3 * this.f6401g) + this.f6400f);
        }
    }
}
