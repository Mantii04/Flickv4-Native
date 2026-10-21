package b2;

import T1.G;
import T1.K;
import W1.u;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import g2.C0949c;

/* renamed from: b2.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0648h extends AbstractC0642b {

    /* renamed from: A, reason: collision with root package name */
    public final Path f8448A;

    /* renamed from: B, reason: collision with root package name */
    public final C0645e f8449B;

    /* renamed from: C, reason: collision with root package name */
    public u f8450C;

    /* renamed from: x, reason: collision with root package name */
    public final RectF f8451x;

    /* renamed from: y, reason: collision with root package name */
    public final U1.a f8452y;

    /* renamed from: z, reason: collision with root package name */
    public final float[] f8453z;

    public C0648h(G g7, C0645e c0645e) {
        super(g7, c0645e);
        this.f8451x = new RectF();
        U1.a aVar = new U1.a();
        this.f8452y = aVar;
        this.f8453z = new float[8];
        this.f8448A = new Path();
        this.f8449B = c0645e;
        aVar.setAlpha(0);
        aVar.setStyle(Paint.Style.FILL);
        aVar.setColor(c0645e.f8436l);
    }

    @Override // b2.AbstractC0642b, Y1.f
    public <T> void addValueCallback(T t6, C0949c c0949c) {
        super.addValueCallback(t6, c0949c);
        if (t6 == K.f3581y) {
            if (c0949c == null) {
                this.f8450C = null;
            } else {
                this.f8450C = new u(c0949c);
            }
        }
    }

    @Override // b2.AbstractC0642b
    public void drawLayer(Canvas canvas, Matrix matrix, int i2) {
        C0645e c0645e = this.f8449B;
        int alpha = Color.alpha(c0645e.f8436l);
        if (alpha == 0) {
            return;
        }
        int intValue = (int) ((((alpha / 255.0f) * (this.f8414v.getOpacity() == null ? 100 : ((Integer) r2.getOpacity().getValue()).intValue())) / 100.0f) * (i2 / 255.0f) * 255.0f);
        U1.a aVar = this.f8452y;
        aVar.setAlpha(intValue);
        u uVar = this.f8450C;
        if (uVar != null) {
            aVar.setColorFilter((ColorFilter) uVar.getValue());
        }
        if (intValue > 0) {
            float[] fArr = this.f8453z;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            float f3 = c0645e.f8434j;
            fArr[2] = f3;
            fArr[3] = 0.0f;
            fArr[4] = f3;
            float f7 = c0645e.f8435k;
            fArr[5] = f7;
            fArr[6] = 0.0f;
            fArr[7] = f7;
            matrix.mapPoints(fArr);
            Path path = this.f8448A;
            path.reset();
            path.moveTo(fArr[0], fArr[1]);
            path.lineTo(fArr[2], fArr[3]);
            path.lineTo(fArr[4], fArr[5]);
            path.lineTo(fArr[6], fArr[7]);
            path.lineTo(fArr[0], fArr[1]);
            path.close();
            canvas.drawPath(path, aVar);
        }
    }

    @Override // b2.AbstractC0642b, V1.f
    public void getBounds(RectF rectF, Matrix matrix, boolean z6) {
        super.getBounds(rectF, matrix, z6);
        RectF rectF2 = this.f8451x;
        C0645e c0645e = this.f8449B;
        rectF2.set(0.0f, 0.0f, c0645e.f8434j, c0645e.f8435k);
        this.f8405m.mapRect(rectF2);
        rectF.set(rectF2);
    }
}
