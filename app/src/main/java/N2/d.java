package N2;

import android.graphics.Canvas;
import android.graphics.Paint;

/* loaded from: classes.dex */
public abstract class d extends e {
    @Override // N2.e
    public void drawShape(Canvas canvas, Paint paint) {
        if (getDrawBounds() != null) {
            paint.setStyle(Paint.Style.STROKE);
            int min = Math.min(getDrawBounds().width(), getDrawBounds().height()) / 2;
            paint.setStrokeWidth(min / 12);
            canvas.drawCircle(getDrawBounds().centerX(), getDrawBounds().centerY(), min, paint);
        }
    }
}
