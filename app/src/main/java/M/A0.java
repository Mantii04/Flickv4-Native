package M;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.appbar.AppBarLayout;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class A0 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1919b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1920e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f1921f;

    public /* synthetic */ A0(int i2, Object obj, Object obj2) {
        this.f1919b = i2;
        this.f1920e = obj;
        this.f1921f = obj2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        Object obj = this.f1921f;
        Object obj2 = this.f1920e;
        switch (this.f1919b) {
            case 0:
                ((e.v0) ((F0) obj2)).onAnimationUpdate((View) obj);
                return;
            default:
                int i2 = AppBarLayout.f12355I;
                AppBarLayout appBarLayout = (AppBarLayout) obj2;
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                G3.j jVar = (G3.j) obj;
                jVar.setElevation(floatValue);
                Drawable drawable = appBarLayout.f12360E;
                if (drawable instanceof G3.j) {
                    ((G3.j) drawable).setElevation(floatValue);
                }
                Iterator it = appBarLayout.f12356A.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    jVar.getResolvedTintColor();
                    throw null;
                }
                return;
        }
    }
}
