package I3;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.ViewGroup;
import android.view.ViewParent;

/* loaded from: classes2.dex */
public final class o implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f1333b;

    public o(t tVar) {
        this.f1333b = tVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        t tVar = this.f1333b;
        s sVar = tVar.f1362i;
        if (sVar == null) {
            return;
        }
        ViewParent parent = sVar.getParent();
        s sVar2 = tVar.f1362i;
        if (parent != null) {
            sVar2.setVisibility(0);
        }
        if (sVar2.getAnimationMode() == 1) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat.setInterpolator(tVar.f1357d);
            ofFloat.addUpdateListener(new b(tVar));
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.8f, 1.0f);
            ofFloat2.setInterpolator(tVar.f1359f);
            ofFloat2.addUpdateListener(new c(tVar));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofFloat, ofFloat2);
            animatorSet.setDuration(tVar.f1354a);
            animatorSet.addListener(new p(tVar));
            animatorSet.start();
            return;
        }
        int height = sVar2.getHeight();
        ViewGroup.LayoutParams layoutParams = sVar2.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            height += ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        sVar2.setTranslationY(height);
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(height, 0);
        valueAnimator.setInterpolator(tVar.f1358e);
        valueAnimator.setDuration(tVar.f1356c);
        valueAnimator.addListener(new d(tVar));
        valueAnimator.addUpdateListener(new e(tVar, height));
        valueAnimator.start();
    }
}
