package J3;

import android.animation.ValueAnimator;
import android.view.View;

/* loaded from: classes2.dex */
public final class f implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1512b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ View f1513e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ g f1514f;

    public f(g gVar, View view, View view2) {
        this.f1514f = gVar;
        this.f1512b = view;
        this.f1513e = view2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f1514f.c(this.f1512b, this.f1513e, valueAnimator.getAnimatedFraction());
    }
}
