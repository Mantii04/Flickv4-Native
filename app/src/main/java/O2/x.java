package O2;

import android.graphics.Rect;
import android.os.Build;

/* loaded from: classes.dex */
public final class x extends N2.r {
    @Override // N2.r, N2.q, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        Rect clipSquare = clipSquare(rect);
        int width = clipSquare.width() / getChildCount();
        int width2 = ((clipSquare.width() / 5) * 3) / 5;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            N2.q childAt = getChildAt(i2);
            int i7 = (width / 5) + (i2 * width) + clipSquare.left;
            childAt.setDrawBounds(i7, clipSquare.top, i7 + width2, clipSquare.bottom);
        }
    }

    @Override // N2.r
    public N2.q[] onCreateChild() {
        w[] wVarArr = new w[5];
        for (int i2 = 0; i2 < 5; i2++) {
            w wVar = new w();
            wVar.setScaleY(0.4f);
            wVarArr[i2] = wVar;
            if (Build.VERSION.SDK_INT >= 24) {
                wVar.setAnimationDelay((i2 * 100) + 600);
            } else {
                wVar.setAnimationDelay((i2 * 100) - 1200);
            }
        }
        return wVarArr;
    }
}
