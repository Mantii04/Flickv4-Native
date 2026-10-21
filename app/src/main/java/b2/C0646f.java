package b2;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;

/* renamed from: b2.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0646f extends AbstractC0642b {
    @Override // b2.AbstractC0642b, V1.f
    public void getBounds(RectF rectF, Matrix matrix, boolean z6) {
        super.getBounds(rectF, matrix, z6);
        rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
    }

    @Override // b2.AbstractC0642b
    public final void drawLayer(Canvas canvas, Matrix matrix, int i2) {
    }
}
