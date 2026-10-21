package O2;

import android.animation.ValueAnimator;
import android.graphics.Rect;

/* loaded from: classes.dex */
public final class r extends N2.c {
    @Override // N2.q, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        setDrawBounds(clipSquare(rect));
    }

    @Override // N2.q
    public ValueAnimator onCreateAnimation() {
        float[] fArr = {0.0f, 0.5f, 1.0f};
        return new L2.g(this).rotateX(fArr, 0, -180, -180).rotateY(fArr, 0, 0, -180).duration(1200L).easeInOut(fArr).build();
    }
}
