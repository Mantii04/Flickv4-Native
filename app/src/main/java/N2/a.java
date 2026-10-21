package N2;

import android.graphics.Canvas;
import android.graphics.Rect;

/* loaded from: classes.dex */
public abstract class a extends r {
    @Override // N2.r
    public void drawChild(Canvas canvas) {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            q childAt = getChildAt(i2);
            int save = canvas.save();
            canvas.rotate((i2 * 360) / getChildCount(), getBounds().centerX(), getBounds().centerY());
            childAt.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // N2.r, N2.q, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        Rect clipSquare = clipSquare(rect);
        int width = (int) (((clipSquare.width() * 3.141592653589793d) / 3.5999999046325684d) / getChildCount());
        int centerX = clipSquare.centerX() - width;
        int centerX2 = clipSquare.centerX() + width;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            q childAt = getChildAt(i2);
            int i7 = clipSquare.top;
            childAt.setDrawBounds(centerX, i7, centerX2, (width * 2) + i7);
        }
    }
}
