package N2;

import android.graphics.Canvas;
import android.graphics.Paint;

/* loaded from: classes.dex */
public abstract class c extends e {
    @Override // N2.e
    public void drawShape(Canvas canvas, Paint paint) {
        if (getDrawBounds() != null) {
            canvas.drawRect(getDrawBounds(), paint);
        }
    }
}
