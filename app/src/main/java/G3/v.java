package G3;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;

/* loaded from: classes2.dex */
public final class v extends z {

    /* renamed from: c, reason: collision with root package name */
    public final x f1157c;

    /* renamed from: d, reason: collision with root package name */
    public final float f1158d;

    /* renamed from: e, reason: collision with root package name */
    public final float f1159e;

    public v(x xVar, float f3, float f7) {
        this.f1157c = xVar;
        this.f1158d = f3;
        this.f1159e = f7;
    }

    public final float a() {
        x xVar = this.f1157c;
        return (float) Math.toDegrees(Math.atan((xVar.f1168c - this.f1159e) / (xVar.f1167b - this.f1158d)));
    }

    @Override // G3.z
    public void draw(Matrix matrix, F3.a aVar, int i2, Canvas canvas) {
        x xVar = this.f1157c;
        float f3 = xVar.f1168c;
        float f7 = this.f1159e;
        float f8 = xVar.f1167b;
        float f9 = this.f1158d;
        RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f3 - f7, f8 - f9), 0.0f);
        Matrix matrix2 = this.f1171a;
        matrix2.set(matrix);
        matrix2.preTranslate(f9, f7);
        matrix2.preRotate(a());
        aVar.drawEdgeShadow(canvas, matrix2, rectF, i2);
    }
}
