package O2;

import android.graphics.Rect;
import cz.msebera.android.httpclient.HttpStatus;

/* loaded from: classes.dex */
public final class f extends N2.r {
    @Override // N2.r, N2.q, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        Rect clipSquare = clipSquare(rect);
        int width = (int) (clipSquare.width() * 0.33f);
        int height = (int) (clipSquare.height() * 0.33f);
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            int i7 = ((i2 % 3) * width) + clipSquare.left;
            int i8 = ((i2 / 3) * height) + clipSquare.top;
            getChildAt(i2).setDrawBounds(i7, i8, i7 + width, i8 + height);
        }
    }

    @Override // N2.r
    public N2.q[] onCreateChild() {
        int[] iArr = {HttpStatus.SC_OK, HttpStatus.SC_MULTIPLE_CHOICES, HttpStatus.SC_BAD_REQUEST, 100, HttpStatus.SC_OK, HttpStatus.SC_MULTIPLE_CHOICES, 0, 100, HttpStatus.SC_OK};
        e[] eVarArr = new e[9];
        for (int i2 = 0; i2 < 9; i2++) {
            e eVar = new e();
            eVarArr[i2] = eVar;
            eVar.setAnimationDelay(iArr[i2]);
        }
        return eVarArr;
    }
}
