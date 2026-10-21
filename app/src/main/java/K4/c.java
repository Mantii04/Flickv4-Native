package K4;

import android.animation.ValueAnimator;
import flix.com.vision.bvp.BetterVideoPlayer;
import flix.com.vision.bvp.subtitle.CaptionsView;

/* loaded from: classes2.dex */
public final /* synthetic */ class c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1787b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer f1788e;

    public /* synthetic */ c(BetterVideoPlayer betterVideoPlayer, int i2) {
        this.f1787b = i2;
        this.f1788e = betterVideoPlayer;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        BetterVideoPlayer betterVideoPlayer = this.f1788e;
        switch (this.f1787b) {
            case 0:
                int i2 = BetterVideoPlayer.f15848s0;
                betterVideoPlayer.getClass();
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                CaptionsView captionsView = betterVideoPlayer.f15888m;
                captionsView.setPadding(captionsView.getPaddingLeft(), betterVideoPlayer.f15888m.getPaddingTop(), betterVideoPlayer.f15888m.getPaddingRight(), intValue);
                break;
            default:
                int i7 = BetterVideoPlayer.f15848s0;
                betterVideoPlayer.getClass();
                int intValue2 = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                CaptionsView captionsView2 = betterVideoPlayer.f15888m;
                captionsView2.setPadding(captionsView2.getPaddingLeft(), betterVideoPlayer.f15888m.getPaddingTop(), betterVideoPlayer.f15888m.getPaddingRight(), intValue2);
                break;
        }
    }
}
