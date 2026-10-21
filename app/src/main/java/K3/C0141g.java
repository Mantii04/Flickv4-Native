package K3;

import android.graphics.Canvas;
import android.graphics.Region;
import android.os.Build;

/* renamed from: K3.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0141g extends AbstractC0142h {
    @Override // G3.j
    public void drawStrokeShape(Canvas canvas) {
        if (this.f1676H.f1674q.isEmpty()) {
            super.drawStrokeShape(canvas);
            return;
        }
        canvas.save();
        if (Build.VERSION.SDK_INT >= 26) {
            canvas.clipOutRect(this.f1676H.f1674q);
        } else {
            canvas.clipRect(this.f1676H.f1674q, Region.Op.DIFFERENCE);
        }
        super.drawStrokeShape(canvas);
        canvas.restore();
    }
}
