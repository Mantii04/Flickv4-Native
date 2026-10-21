package G3;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;

/* loaded from: classes2.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    public final A[] f1142a = new A[4];

    /* renamed from: b, reason: collision with root package name */
    public final Matrix[] f1143b = new Matrix[4];

    /* renamed from: c, reason: collision with root package name */
    public final Matrix[] f1144c = new Matrix[4];

    /* renamed from: d, reason: collision with root package name */
    public final PointF f1145d = new PointF();

    /* renamed from: e, reason: collision with root package name */
    public final Path f1146e = new Path();

    /* renamed from: f, reason: collision with root package name */
    public final Path f1147f = new Path();

    /* renamed from: g, reason: collision with root package name */
    public final A f1148g = new A();

    /* renamed from: h, reason: collision with root package name */
    public final float[] f1149h = new float[2];

    /* renamed from: i, reason: collision with root package name */
    public final float[] f1150i = new float[2];

    /* renamed from: j, reason: collision with root package name */
    public final Path f1151j = new Path();

    /* renamed from: k, reason: collision with root package name */
    public final Path f1152k = new Path();

    /* renamed from: l, reason: collision with root package name */
    public final boolean f1153l = true;

    public s() {
        for (int i2 = 0; i2 < 4; i2++) {
            this.f1142a[i2] = new A();
            this.f1143b[i2] = new Matrix();
            this.f1144c[i2] = new Matrix();
        }
    }

    public static s getInstance() {
        return q.f1141a;
    }

    public final boolean a(Path path, int i2) {
        Path path2 = this.f1152k;
        path2.reset();
        this.f1142a[i2].applyToPath(this.f1143b[i2], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        return !rectF.isEmpty() || (rectF.width() > 1.0f && rectF.height() > 1.0f);
    }

    public void calculatePath(p pVar, float f3, RectF rectF, Path path) {
        calculatePath(pVar, f3, rectF, null, path);
    }

    public void calculatePath(p pVar, float f3, RectF rectF, r rVar, Path path) {
        Matrix[] matrixArr;
        Matrix[] matrixArr2;
        A[] aArr;
        int i2;
        int i7;
        float[] fArr;
        path.rewind();
        Path path2 = this.f1146e;
        path2.rewind();
        Path path3 = this.f1147f;
        path3.rewind();
        path3.addRect(rectF, Path.Direction.CW);
        int i8 = 0;
        while (true) {
            matrixArr = this.f1144c;
            matrixArr2 = this.f1143b;
            aArr = this.f1142a;
            i2 = 1;
            fArr = this.f1149h;
            if (i8 >= 4) {
                break;
            }
            (i8 != 1 ? i8 != 2 ? i8 != 3 ? pVar.getTopRightCorner() : pVar.getTopLeftCorner() : pVar.getBottomLeftCorner() : pVar.getBottomRightCorner()).getCornerPath(aArr[i8], 90.0f, f3, rectF, i8 != 1 ? i8 != 2 ? i8 != 3 ? pVar.getTopRightCornerSize() : pVar.getTopLeftCornerSize() : pVar.getBottomLeftCornerSize() : pVar.getBottomRightCornerSize());
            int i9 = i8 + 1;
            float f7 = (i9 % 4) * 90;
            matrixArr2[i8].reset();
            PointF pointF = this.f1145d;
            if (i8 == 1) {
                pointF.set(rectF.right, rectF.bottom);
            } else if (i8 == 2) {
                pointF.set(rectF.left, rectF.bottom);
            } else if (i8 != 3) {
                pointF.set(rectF.right, rectF.top);
            } else {
                pointF.set(rectF.left, rectF.top);
            }
            matrixArr2[i8].setTranslate(pointF.x, pointF.y);
            matrixArr2[i8].preRotate(f7);
            A a7 = aArr[i8];
            fArr[0] = a7.f1054c;
            fArr[1] = a7.f1055d;
            matrixArr2[i8].mapPoints(fArr);
            matrixArr[i8].reset();
            matrixArr[i8].setTranslate(fArr[0], fArr[1]);
            matrixArr[i8].preRotate(f7);
            i8 = i9;
        }
        int i10 = 0;
        for (i7 = 4; i10 < i7; i7 = 4) {
            A a8 = aArr[i10];
            fArr[0] = a8.f1052a;
            fArr[i2] = a8.f1053b;
            matrixArr2[i10].mapPoints(fArr);
            if (i10 == 0) {
                path.moveTo(fArr[0], fArr[i2]);
            } else {
                path.lineTo(fArr[0], fArr[i2]);
            }
            aArr[i10].applyToPath(matrixArr2[i10], path);
            if (rVar != null) {
                ((C0108g) rVar).onCornerPathCreated(aArr[i10], matrixArr2[i10], i10);
            }
            int i11 = i10 + 1;
            int i12 = i11 % 4;
            A a9 = aArr[i10];
            fArr[0] = a9.f1054c;
            fArr[i2] = a9.f1055d;
            matrixArr2[i10].mapPoints(fArr);
            A a10 = aArr[i12];
            float f8 = a10.f1052a;
            float[] fArr2 = this.f1150i;
            fArr2[0] = f8;
            fArr2[i2] = a10.f1053b;
            matrixArr2[i12].mapPoints(fArr2);
            float max = Math.max(((float) Math.hypot(fArr[0] - fArr2[0], fArr[i2] - fArr2[i2])) - 0.001f, 0.0f);
            A a11 = aArr[i10];
            fArr[0] = a11.f1054c;
            fArr[i2] = a11.f1055d;
            matrixArr2[i10].mapPoints(fArr);
            float abs = (i10 == i2 || i10 == 3) ? Math.abs(rectF.centerX() - fArr[0]) : Math.abs(rectF.centerY() - fArr[i2]);
            A a12 = this.f1148g;
            a12.reset(0.0f, 0.0f);
            int i13 = i2;
            (i10 != i2 ? i10 != 2 ? i10 != 3 ? pVar.getRightEdge() : pVar.getTopEdge() : pVar.getLeftEdge() : pVar.getBottomEdge()).getEdgePath(max, abs, f3, a12);
            Path path4 = this.f1151j;
            path4.reset();
            a12.applyToPath(matrixArr[i10], path4);
            if (this.f1153l && (a(path4, i10) || a(path4, i12))) {
                path4.op(path4, path3, Path.Op.DIFFERENCE);
                fArr[0] = a12.f1052a;
                fArr[i13] = a12.f1053b;
                matrixArr[i10].mapPoints(fArr);
                path2.moveTo(fArr[0], fArr[i13]);
                a12.applyToPath(matrixArr[i10], path2);
            } else {
                a12.applyToPath(matrixArr[i10], path);
            }
            if (rVar != null) {
                ((C0108g) rVar).onEdgePathCreated(a12, matrixArr[i10], i10);
            }
            i10 = i11;
            i2 = i13;
        }
        path.close();
        path2.close();
        if (path2.isEmpty()) {
            return;
        }
        path.op(path2, Path.Op.UNION);
    }
}
