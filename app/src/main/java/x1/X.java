package x1;

import android.graphics.Matrix;
import android.view.View;

/* loaded from: classes.dex */
public final class X extends W {
    @Override // x1.O
    public float getTransitionAlpha(View view) {
        float transitionAlpha;
        transitionAlpha = view.getTransitionAlpha();
        return transitionAlpha;
    }

    @Override // x1.T
    public void setLeftTopRightBottom(View view, int i2, int i7, int i8, int i9) {
        view.setLeftTopRightBottom(i2, i7, i8, i9);
    }

    @Override // x1.O
    public void setTransitionAlpha(View view, float f3) {
        view.setTransitionAlpha(f3);
    }

    @Override // x1.W, x1.O
    public void setTransitionVisibility(View view, int i2) {
        view.setTransitionVisibility(i2);
    }

    @Override // x1.Q
    public void transformMatrixToGlobal(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // x1.Q
    public void transformMatrixToLocal(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
