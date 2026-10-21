package F3;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f992i = new int[3];

    /* renamed from: j, reason: collision with root package name */
    public static final float[] f993j = {0.0f, 0.5f, 1.0f};

    /* renamed from: k, reason: collision with root package name */
    public static final int[] f994k = new int[4];

    /* renamed from: l, reason: collision with root package name */
    public static final float[] f995l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: a, reason: collision with root package name */
    public final Paint f996a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f997b;

    /* renamed from: c, reason: collision with root package name */
    public final Paint f998c;

    /* renamed from: d, reason: collision with root package name */
    public int f999d;

    /* renamed from: e, reason: collision with root package name */
    public int f1000e;

    /* renamed from: f, reason: collision with root package name */
    public int f1001f;

    /* renamed from: g, reason: collision with root package name */
    public final Path f1002g;

    /* renamed from: h, reason: collision with root package name */
    public final Paint f1003h;

    public a() {
        this(-16777216);
    }

    public void drawCornerShadow(Canvas canvas, Matrix matrix, RectF rectF, int i2, float f3, float f7) {
        boolean z6 = f7 < 0.0f;
        Path path = this.f1002g;
        int[] iArr = f994k;
        if (z6) {
            iArr[0] = 0;
            iArr[1] = this.f1001f;
            iArr[2] = this.f1000e;
            iArr[3] = this.f999d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f3, f7);
            path.close();
            float f8 = -i2;
            rectF.inset(f8, f8);
            iArr[0] = 0;
            iArr[1] = this.f999d;
            iArr[2] = this.f1000e;
            iArr[3] = this.f1001f;
        }
        float width = rectF.width() / 2.0f;
        if (width <= 0.0f) {
            return;
        }
        float f9 = 1.0f - (i2 / width);
        float[] fArr = f995l;
        fArr[1] = f9;
        fArr[2] = ((1.0f - f9) / 2.0f) + f9;
        RadialGradient radialGradient = new RadialGradient(rectF.centerX(), rectF.centerY(), width, iArr, fArr, Shader.TileMode.CLAMP);
        boolean z7 = z6;
        Paint paint = this.f997b;
        paint.setShader(radialGradient);
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z7) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.f1003h);
        }
        canvas.drawArc(rectF, f3, f7, true, paint);
        canvas.restore();
    }

    public void drawEdgeShadow(Canvas canvas, Matrix matrix, RectF rectF, int i2) {
        rectF.bottom += i2;
        rectF.offset(0.0f, -i2);
        int[] iArr = f992i;
        iArr[0] = this.f1001f;
        iArr[1] = this.f1000e;
        iArr[2] = this.f999d;
        Paint paint = this.f998c;
        float f3 = rectF.left;
        paint.setShader(new LinearGradient(f3, rectF.top, f3, rectF.bottom, iArr, f993j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    public Paint getShadowPaint() {
        return this.f996a;
    }

    public void setShadowColor(int i2) {
        this.f999d = D.a.setAlphaComponent(i2, 68);
        this.f1000e = D.a.setAlphaComponent(i2, 20);
        this.f1001f = D.a.setAlphaComponent(i2, 0);
        this.f996a.setColor(this.f999d);
    }

    public a(int i2) {
        this.f1002g = new Path();
        Paint paint = new Paint();
        this.f1003h = paint;
        this.f996a = new Paint();
        setShadowColor(i2);
        paint.setColor(0);
        Paint paint2 = new Paint(4);
        this.f997b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f998c = new Paint(paint2);
    }
}
