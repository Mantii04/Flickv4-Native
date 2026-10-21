package O2;

import android.graphics.Rect;
import android.os.Build;

/* loaded from: classes.dex */
public final class v extends N2.r {
    @Override // N2.r, N2.q, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Rect clipSquare = clipSquare(rect);
        super.onBoundsChange(clipSquare);
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            N2.q childAt = getChildAt(i2);
            int i7 = clipSquare.left;
            childAt.setDrawBounds(i7, clipSquare.top, (clipSquare.width() / 4) + i7, (clipSquare.height() / 4) + clipSquare.top);
        }
    }

    @Override // N2.r
    public void onChildCreated(N2.q... qVarArr) {
        super.onChildCreated(qVarArr);
        if (Build.VERSION.SDK_INT < 24) {
            qVarArr[1].setAnimationDelay(-900);
        }
    }

    @Override // N2.r
    public N2.q[] onCreateChild() {
        return new N2.q[]{new u(this, 0), new u(this, 3)};
    }
}
