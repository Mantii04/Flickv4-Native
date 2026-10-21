package O2;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import cz.msebera.android.httpclient.HttpStatus;

/* loaded from: classes.dex */
public final class l extends N2.r {
    @Override // N2.r
    public void drawChild(Canvas canvas) {
        Rect clipSquare = clipSquare(getBounds());
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            int save = canvas.save();
            canvas.rotate((i2 * 90) + 45, clipSquare.centerX(), clipSquare.centerY());
            getChildAt(i2).draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // N2.r, N2.q, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        Rect clipSquare = clipSquare(rect);
        int min = Math.min(clipSquare.width(), clipSquare.height()) / 2;
        int i2 = clipSquare.left + min + 1;
        int i7 = clipSquare.top + min + 1;
        for (int i8 = 0; i8 < getChildCount(); i8++) {
            N2.q childAt = getChildAt(i8);
            childAt.setDrawBounds(clipSquare.left, clipSquare.top, i2, i7);
            childAt.setPivotX(childAt.getDrawBounds().right);
            childAt.setPivotY(childAt.getDrawBounds().bottom);
        }
    }

    @Override // N2.r
    public N2.q[] onCreateChild() {
        k[] kVarArr = new k[4];
        for (int i2 = 0; i2 < 4; i2++) {
            k kVar = new k();
            kVar.setAlpha(0);
            kVar.setRotateX(-180);
            kVarArr[i2] = kVar;
            if (Build.VERSION.SDK_INT >= 24) {
                kVar.setAnimationDelay(i2 * HttpStatus.SC_MULTIPLE_CHOICES);
            } else {
                kVar.setAnimationDelay((i2 * HttpStatus.SC_MULTIPLE_CHOICES) - 1200);
            }
        }
        return kVarArr;
    }
}
