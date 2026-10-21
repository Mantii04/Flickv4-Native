package N2;

import android.graphics.Canvas;
import android.graphics.Paint;

/* loaded from: classes.dex */
public abstract class b extends e {
    @Override // N2.e
    public void drawShape(Canvas canvas, Paint paint) {
        if (getDrawBounds() != null) {
            canvas.drawCircle(getDrawBounds().centerX(), getDrawBounds().centerY(), Math.min(getDrawBounds().width(), getDrawBounds().height()) / 2, paint);
        }
    }
}
