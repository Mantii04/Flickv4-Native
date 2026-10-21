package y1;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class s {

    /* renamed from: p, reason: collision with root package name */
    public static final Matrix f21016p = new Matrix();

    /* renamed from: a, reason: collision with root package name */
    public final Path f21017a;

    /* renamed from: b, reason: collision with root package name */
    public final Path f21018b;

    /* renamed from: c, reason: collision with root package name */
    public final Matrix f21019c;

    /* renamed from: d, reason: collision with root package name */
    public Paint f21020d;

    /* renamed from: e, reason: collision with root package name */
    public Paint f21021e;

    /* renamed from: f, reason: collision with root package name */
    public PathMeasure f21022f;

    /* renamed from: g, reason: collision with root package name */
    public final p f21023g;

    /* renamed from: h, reason: collision with root package name */
    public float f21024h;

    /* renamed from: i, reason: collision with root package name */
    public float f21025i;

    /* renamed from: j, reason: collision with root package name */
    public float f21026j;

    /* renamed from: k, reason: collision with root package name */
    public float f21027k;

    /* renamed from: l, reason: collision with root package name */
    public int f21028l;

    /* renamed from: m, reason: collision with root package name */
    public String f21029m;

    /* renamed from: n, reason: collision with root package name */
    public Boolean f21030n;

    /* renamed from: o, reason: collision with root package name */
    public final p.g f21031o;

    public s() {
        this.f21019c = new Matrix();
        this.f21024h = 0.0f;
        this.f21025i = 0.0f;
        this.f21026j = 0.0f;
        this.f21027k = 0.0f;
        this.f21028l = 255;
        this.f21029m = null;
        this.f21030n = null;
        this.f21031o = new p.g();
        this.f21023g = new p();
        this.f21017a = new Path();
        this.f21018b = new Path();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(p pVar, Matrix matrix, Canvas canvas, int i2, int i7, ColorFilter colorFilter) {
        Matrix matrix2;
        char c7;
        float f3;
        ColorFilter colorFilter2;
        float f7;
        int i8;
        char c8 = 1;
        pVar.f21002a.set(matrix);
        Matrix matrix3 = pVar.f21002a;
        matrix3.preConcat(pVar.f21011j);
        canvas.save();
        char c9 = 0;
        int i9 = 0;
        while (true) {
            ArrayList arrayList = pVar.f21003b;
            if (i9 >= arrayList.size()) {
                canvas.restore();
                return;
            }
            q qVar = (q) arrayList.get(i9);
            if (qVar instanceof p) {
                a((p) qVar, matrix3, canvas, i2, i7, colorFilter);
                matrix2 = matrix3;
                c7 = c8;
            } else if (qVar instanceof r) {
                r rVar = (r) qVar;
                float f8 = i2 / this.f21026j;
                float f9 = i7 / this.f21027k;
                float min = Math.min(f8, f9);
                Matrix matrix4 = this.f21019c;
                matrix4.set(matrix3);
                matrix4.postScale(f8, f9);
                float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                matrix3.mapVectors(fArr);
                boolean z6 = c8;
                boolean z7 = c9;
                float hypot = (float) Math.hypot(fArr[c9], fArr[c8]);
                float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                float f10 = (fArr[z7 ? 1 : 0] * fArr[3]) - (fArr[z6 ? 1 : 0] * fArr[2]);
                float max = Math.max(hypot, hypot2);
                float abs = max > 0.0f ? Math.abs(f10) / max : 0.0f;
                if (abs != 0.0f) {
                    Path path = this.f21017a;
                    rVar.toPath(path);
                    Path path2 = this.f21018b;
                    path2.reset();
                    if (rVar.isClipPath()) {
                        path2.setFillType(rVar.f21015c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                        path2.addPath(path, matrix4);
                        canvas.clipPath(path2);
                    } else {
                        o oVar = (o) rVar;
                        float f11 = oVar.f20996i;
                        if (f11 == 0.0f && oVar.f20997j == 1.0f) {
                            matrix2 = matrix3;
                        } else {
                            float f12 = oVar.f20998k;
                            float f13 = (f11 + f12) % 1.0f;
                            float f14 = (oVar.f20997j + f12) % 1.0f;
                            if (this.f21022f == null) {
                                this.f21022f = new PathMeasure();
                            }
                            this.f21022f.setPath(path, z7);
                            float length = this.f21022f.getLength();
                            float f15 = f13 * length;
                            float f16 = f14 * length;
                            path.reset();
                            if (f15 > f16) {
                                matrix2 = matrix3;
                                this.f21022f.getSegment(f15, length, path, z6);
                                f3 = 0.0f;
                                this.f21022f.getSegment(0.0f, f16, path, z6);
                            } else {
                                matrix2 = matrix3;
                                f3 = 0.0f;
                                this.f21022f.getSegment(f15, f16, path, z6);
                            }
                            path.rLineTo(f3, f3);
                        }
                        path2.addPath(path, matrix4);
                        if (oVar.f20993f.willDraw()) {
                            C.d dVar = oVar.f20993f;
                            if (this.f21021e == null) {
                                i8 = 16777215;
                                Paint paint = new Paint(1);
                                this.f21021e = paint;
                                paint.setStyle(Paint.Style.FILL);
                            } else {
                                i8 = 16777215;
                            }
                            Paint paint2 = this.f21021e;
                            if (dVar.isGradient()) {
                                Shader shader = dVar.getShader();
                                shader.setLocalMatrix(matrix4);
                                paint2.setShader(shader);
                                paint2.setAlpha(Math.round(oVar.f20995h * 255.0f));
                                f7 = 255.0f;
                            } else {
                                paint2.setShader(null);
                                paint2.setAlpha(255);
                                int color = dVar.getColor();
                                float f17 = oVar.f20995h;
                                PorterDuff.Mode mode = v.f21045s;
                                f7 = 255.0f;
                                paint2.setColor((color & i8) | (((int) (Color.alpha(color) * f17)) << 24));
                            }
                            colorFilter2 = colorFilter;
                            paint2.setColorFilter(colorFilter2);
                            path2.setFillType(oVar.f21015c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            canvas.drawPath(path2, paint2);
                        } else {
                            colorFilter2 = colorFilter;
                            f7 = 255.0f;
                            i8 = 16777215;
                        }
                        if (oVar.f20991d.willDraw()) {
                            C.d dVar2 = oVar.f20991d;
                            if (this.f21020d == null) {
                                Paint paint3 = new Paint(1);
                                this.f21020d = paint3;
                                paint3.setStyle(Paint.Style.STROKE);
                            }
                            Paint paint4 = this.f21020d;
                            Paint.Join join = oVar.f21000m;
                            if (join != null) {
                                paint4.setStrokeJoin(join);
                            }
                            Paint.Cap cap = oVar.f20999l;
                            if (cap != null) {
                                paint4.setStrokeCap(cap);
                            }
                            paint4.setStrokeMiter(oVar.f21001n);
                            if (dVar2.isGradient()) {
                                Shader shader2 = dVar2.getShader();
                                shader2.setLocalMatrix(matrix4);
                                paint4.setShader(shader2);
                                paint4.setAlpha(Math.round(oVar.f20994g * f7));
                            } else {
                                paint4.setShader(null);
                                paint4.setAlpha(255);
                                int color2 = dVar2.getColor();
                                float f18 = oVar.f20994g;
                                PorterDuff.Mode mode2 = v.f21045s;
                                paint4.setColor((color2 & i8) | (((int) (Color.alpha(color2) * f18)) << 24));
                            }
                            paint4.setColorFilter(colorFilter2);
                            paint4.setStrokeWidth(oVar.f20992e * min * abs);
                            canvas.drawPath(path2, paint4);
                        }
                        c7 = 1;
                    }
                }
                matrix2 = matrix3;
                c7 = 1;
            } else {
                matrix2 = matrix3;
                c7 = c8;
            }
            i9++;
            c8 = c7;
            matrix3 = matrix2;
            c9 = 0;
        }
    }

    public void draw(Canvas canvas, int i2, int i7, ColorFilter colorFilter) {
        a(this.f21023g, f21016p, canvas, i2, i7, colorFilter);
    }

    public float getAlpha() {
        return getRootAlpha() / 255.0f;
    }

    public int getRootAlpha() {
        return this.f21028l;
    }

    public boolean isStateful() {
        if (this.f21030n == null) {
            this.f21030n = Boolean.valueOf(this.f21023g.isStateful());
        }
        return this.f21030n.booleanValue();
    }

    public boolean onStateChanged(int[] iArr) {
        return this.f21023g.onStateChanged(iArr);
    }

    public void setAlpha(float f3) {
        setRootAlpha((int) (f3 * 255.0f));
    }

    public void setRootAlpha(int i2) {
        this.f21028l = i2;
    }

    public s(s sVar) {
        this.f21019c = new Matrix();
        this.f21024h = 0.0f;
        this.f21025i = 0.0f;
        this.f21026j = 0.0f;
        this.f21027k = 0.0f;
        this.f21028l = 255;
        this.f21029m = null;
        this.f21030n = null;
        p.g gVar = new p.g();
        this.f21031o = gVar;
        this.f21023g = new p(sVar.f21023g, gVar);
        this.f21017a = new Path(sVar.f21017a);
        this.f21018b = new Path(sVar.f21018b);
        this.f21024h = sVar.f21024h;
        this.f21025i = sVar.f21025i;
        this.f21026j = sVar.f21026j;
        this.f21027k = sVar.f21027k;
        this.f21028l = sVar.f21028l;
        this.f21029m = sVar.f21029m;
        String str = sVar.f21029m;
        if (str != null) {
            gVar.put(str, this);
        }
        this.f21030n = sVar.f21030n;
    }
}
