package O2;

import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.os.Build;
import android.view.animation.LinearInterpolator;
import androidx.media3.exoplayer.ExoPlayer;

/* loaded from: classes.dex */
public final class b extends N2.r {
    @Override // N2.r, N2.q, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        Rect clipSquare = clipSquare(rect);
        int width = (int) (clipSquare.width() * 0.6f);
        N2.q childAt = getChildAt(0);
        int i2 = clipSquare.right;
        int i7 = clipSquare.top;
        childAt.setDrawBounds(i2 - width, i7, i2, i7 + width);
        N2.q childAt2 = getChildAt(1);
        int i8 = clipSquare.right;
        int i9 = clipSquare.bottom;
        childAt2.setDrawBounds(i8 - width, i9 - width, i8, i9);
    }

    @Override // N2.r
    public void onChildCreated(N2.q... qVarArr) {
        super.onChildCreated(qVarArr);
        if (Build.VERSION.SDK_INT >= 24) {
            qVarArr[1].setAnimationDelay(1000);
        } else {
            qVarArr[1].setAnimationDelay(-1000);
        }
    }

    @Override // N2.r, N2.q
    public ValueAnimator onCreateAnimation() {
        return new L2.g(this).rotate(new float[]{0.0f, 1.0f}, 0, 360).duration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS).interpolator(new LinearInterpolator()).build();
    }

    @Override // N2.r
    public N2.q[] onCreateChild() {
        return new N2.q[]{new a(), new a()};
    }
}
