package l3;

import android.animation.ValueAnimator;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes2.dex */
public final class d implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f18133b;

    public d(BottomSheetBehavior bottomSheetBehavior) {
        this.f18133b = bottomSheetBehavior;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        G3.j jVar = this.f18133b.f12506r;
        if (jVar != null) {
            jVar.setInterpolation(floatValue);
        }
    }
}
