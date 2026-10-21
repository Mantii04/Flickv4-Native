package O2;

import android.graphics.Rect;

/* loaded from: classes.dex */
public final class t extends N2.r {
    @Override // N2.r, N2.q, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        Rect clipSquare = clipSquare(rect);
        int width = clipSquare.width() / 8;
        int centerY = clipSquare.centerY() - width;
        int centerY2 = clipSquare.centerY() + width;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            int width2 = ((clipSquare.width() * i2) / 3) + clipSquare.left;
            getChildAt(i2).setDrawBounds(width2, centerY, (width * 2) + width2, centerY2);
        }
    }

    @Override // N2.r
    public void onChildCreated(N2.q... qVarArr) {
        super.onChildCreated(qVarArr);
        qVarArr[1].setAnimationDelay(160);
        qVarArr[2].setAnimationDelay(320);
    }

    @Override // N2.r
    public N2.q[] onCreateChild() {
        return new N2.q[]{new s(), new s(), new s()};
    }
}
