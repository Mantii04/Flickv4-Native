package W1;

import T1.K;
import android.graphics.Matrix;
import android.graphics.PointF;
import b2.AbstractC0642b;
import g2.C0947a;
import g2.C0949c;
import g2.C0950d;
import java.util.Collections;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f4146a = new Matrix();

    /* renamed from: b, reason: collision with root package name */
    public final Matrix f4147b;

    /* renamed from: c, reason: collision with root package name */
    public final Matrix f4148c;

    /* renamed from: d, reason: collision with root package name */
    public final Matrix f4149d;

    /* renamed from: e, reason: collision with root package name */
    public final float[] f4150e;

    /* renamed from: f, reason: collision with root package name */
    public f f4151f;

    /* renamed from: g, reason: collision with root package name */
    public f f4152g;

    /* renamed from: h, reason: collision with root package name */
    public f f4153h;

    /* renamed from: i, reason: collision with root package name */
    public f f4154i;

    /* renamed from: j, reason: collision with root package name */
    public f f4155j;

    /* renamed from: k, reason: collision with root package name */
    public h f4156k;

    /* renamed from: l, reason: collision with root package name */
    public h f4157l;

    /* renamed from: m, reason: collision with root package name */
    public f f4158m;

    /* renamed from: n, reason: collision with root package name */
    public f f4159n;

    public t(Z1.l lVar) {
        this.f4151f = lVar.getAnchorPoint() == null ? null : lVar.getAnchorPoint().createAnimation();
        this.f4152g = lVar.getPosition() == null ? null : lVar.getPosition().createAnimation();
        this.f4153h = lVar.getScale() == null ? null : lVar.getScale().createAnimation();
        this.f4154i = lVar.getRotation() == null ? null : lVar.getRotation().createAnimation();
        h hVar = lVar.getSkew() == null ? null : (h) lVar.getSkew().createAnimation();
        this.f4156k = hVar;
        if (hVar != null) {
            this.f4147b = new Matrix();
            this.f4148c = new Matrix();
            this.f4149d = new Matrix();
            this.f4150e = new float[9];
        } else {
            this.f4147b = null;
            this.f4148c = null;
            this.f4149d = null;
            this.f4150e = null;
        }
        this.f4157l = lVar.getSkewAngle() == null ? null : (h) lVar.getSkewAngle().createAnimation();
        if (lVar.getOpacity() != null) {
            this.f4155j = lVar.getOpacity().createAnimation();
        }
        if (lVar.getStartOpacity() != null) {
            this.f4158m = lVar.getStartOpacity().createAnimation();
        } else {
            this.f4158m = null;
        }
        if (lVar.getEndOpacity() != null) {
            this.f4159n = lVar.getEndOpacity().createAnimation();
        } else {
            this.f4159n = null;
        }
    }

    public final void a() {
        for (int i2 = 0; i2 < 9; i2++) {
            this.f4150e[i2] = 0.0f;
        }
    }

    public void addAnimationsToLayer(AbstractC0642b abstractC0642b) {
        abstractC0642b.addAnimation(this.f4155j);
        abstractC0642b.addAnimation(this.f4158m);
        abstractC0642b.addAnimation(this.f4159n);
        abstractC0642b.addAnimation(this.f4151f);
        abstractC0642b.addAnimation(this.f4152g);
        abstractC0642b.addAnimation(this.f4153h);
        abstractC0642b.addAnimation(this.f4154i);
        abstractC0642b.addAnimation(this.f4156k);
        abstractC0642b.addAnimation(this.f4157l);
    }

    public void addListener(a aVar) {
        f fVar = this.f4155j;
        if (fVar != null) {
            fVar.addUpdateListener(aVar);
        }
        f fVar2 = this.f4158m;
        if (fVar2 != null) {
            fVar2.addUpdateListener(aVar);
        }
        f fVar3 = this.f4159n;
        if (fVar3 != null) {
            fVar3.addUpdateListener(aVar);
        }
        f fVar4 = this.f4151f;
        if (fVar4 != null) {
            fVar4.addUpdateListener(aVar);
        }
        f fVar5 = this.f4152g;
        if (fVar5 != null) {
            fVar5.addUpdateListener(aVar);
        }
        f fVar6 = this.f4153h;
        if (fVar6 != null) {
            fVar6.addUpdateListener(aVar);
        }
        f fVar7 = this.f4154i;
        if (fVar7 != null) {
            fVar7.addUpdateListener(aVar);
        }
        h hVar = this.f4156k;
        if (hVar != null) {
            hVar.addUpdateListener(aVar);
        }
        h hVar2 = this.f4157l;
        if (hVar2 != null) {
            hVar2.addUpdateListener(aVar);
        }
    }

    public <T> boolean applyValueCallback(T t6, C0949c c0949c) {
        h hVar;
        h hVar2;
        f fVar;
        f fVar2;
        if (t6 == K.f3557a) {
            f fVar3 = this.f4151f;
            if (fVar3 == null) {
                this.f4151f = new u(c0949c, new PointF());
                return true;
            }
            fVar3.setValueCallback(c0949c);
            return true;
        }
        if (t6 == K.f3558b) {
            f fVar4 = this.f4152g;
            if (fVar4 == null) {
                this.f4152g = new u(c0949c, new PointF());
                return true;
            }
            fVar4.setValueCallback(c0949c);
            return true;
        }
        if (t6 == K.f3563g) {
            f fVar5 = this.f4153h;
            if (fVar5 == null) {
                this.f4153h = new u(c0949c, new C0950d());
                return true;
            }
            fVar5.setValueCallback(c0949c);
            return true;
        }
        if (t6 == K.f3564h) {
            f fVar6 = this.f4154i;
            if (fVar6 == null) {
                this.f4154i = new u(c0949c, Float.valueOf(0.0f));
                return true;
            }
            fVar6.setValueCallback(c0949c);
            return true;
        }
        if (t6 == 3) {
            f fVar7 = this.f4155j;
            if (fVar7 == null) {
                this.f4155j = new u(c0949c, 100);
                return true;
            }
            fVar7.setValueCallback(c0949c);
            return true;
        }
        if (t6 == K.f3577u && (fVar2 = this.f4158m) != null) {
            if (fVar2 == null) {
                this.f4158m = new u(c0949c, 100);
                return true;
            }
            fVar2.setValueCallback(c0949c);
            return true;
        }
        if (t6 == K.f3578v && (fVar = this.f4159n) != null) {
            if (fVar == null) {
                this.f4159n = new u(c0949c, 100);
                return true;
            }
            fVar.setValueCallback(c0949c);
            return true;
        }
        if (t6 == K.f3565i && (hVar2 = this.f4156k) != null) {
            if (hVar2 == null) {
                this.f4156k = new h(Collections.singletonList(new C0947a(Float.valueOf(0.0f))));
            }
            this.f4156k.setValueCallback(c0949c);
            return true;
        }
        if (t6 != K.f3566j || (hVar = this.f4157l) == null) {
            return false;
        }
        if (hVar == null) {
            this.f4157l = new h(Collections.singletonList(new C0947a(Float.valueOf(0.0f))));
        }
        this.f4157l.setValueCallback(c0949c);
        return true;
    }

    public f getEndOpacity() {
        return this.f4159n;
    }

    public Matrix getMatrix() {
        Matrix matrix = this.f4146a;
        matrix.reset();
        f fVar = this.f4152g;
        if (fVar != null) {
            PointF pointF = (PointF) fVar.getValue();
            float f3 = pointF.x;
            if (f3 != 0.0f || pointF.y != 0.0f) {
                matrix.preTranslate(f3, pointF.y);
            }
        }
        f fVar2 = this.f4154i;
        if (fVar2 != null) {
            float floatValue = fVar2 instanceof u ? ((Float) fVar2.getValue()).floatValue() : ((h) fVar2).getFloatValue();
            if (floatValue != 0.0f) {
                matrix.preRotate(floatValue);
            }
        }
        if (this.f4156k != null) {
            float cos = this.f4157l == null ? 0.0f : (float) Math.cos(Math.toRadians((-r1.getFloatValue()) + 90.0f));
            float sin = this.f4157l == null ? 1.0f : (float) Math.sin(Math.toRadians((-r5.getFloatValue()) + 90.0f));
            float tan = (float) Math.tan(Math.toRadians(this.f4156k.getFloatValue()));
            a();
            float[] fArr = this.f4150e;
            fArr[0] = cos;
            fArr[1] = sin;
            float f7 = -sin;
            fArr[3] = f7;
            fArr[4] = cos;
            fArr[8] = 1.0f;
            Matrix matrix2 = this.f4147b;
            matrix2.setValues(fArr);
            a();
            fArr[0] = 1.0f;
            fArr[3] = tan;
            fArr[4] = 1.0f;
            fArr[8] = 1.0f;
            Matrix matrix3 = this.f4148c;
            matrix3.setValues(fArr);
            a();
            fArr[0] = cos;
            fArr[1] = f7;
            fArr[3] = sin;
            fArr[4] = cos;
            fArr[8] = 1.0f;
            Matrix matrix4 = this.f4149d;
            matrix4.setValues(fArr);
            matrix3.preConcat(matrix2);
            matrix4.preConcat(matrix3);
            matrix.preConcat(matrix4);
        }
        f fVar3 = this.f4153h;
        if (fVar3 != null) {
            C0950d c0950d = (C0950d) fVar3.getValue();
            if (c0950d.getScaleX() != 1.0f || c0950d.getScaleY() != 1.0f) {
                matrix.preScale(c0950d.getScaleX(), c0950d.getScaleY());
            }
        }
        f fVar4 = this.f4151f;
        if (fVar4 != null) {
            PointF pointF2 = (PointF) fVar4.getValue();
            float f8 = pointF2.x;
            if (f8 != 0.0f || pointF2.y != 0.0f) {
                matrix.preTranslate(-f8, -pointF2.y);
            }
        }
        return matrix;
    }

    public Matrix getMatrixForRepeater(float f3) {
        f fVar = this.f4152g;
        PointF pointF = fVar == null ? null : (PointF) fVar.getValue();
        f fVar2 = this.f4153h;
        C0950d c0950d = fVar2 == null ? null : (C0950d) fVar2.getValue();
        Matrix matrix = this.f4146a;
        matrix.reset();
        if (pointF != null) {
            matrix.preTranslate(pointF.x * f3, pointF.y * f3);
        }
        if (c0950d != null) {
            double d7 = f3;
            matrix.preScale((float) Math.pow(c0950d.getScaleX(), d7), (float) Math.pow(c0950d.getScaleY(), d7));
        }
        f fVar3 = this.f4154i;
        if (fVar3 != null) {
            float floatValue = ((Float) fVar3.getValue()).floatValue();
            f fVar4 = this.f4151f;
            PointF pointF2 = fVar4 != null ? (PointF) fVar4.getValue() : null;
            matrix.preRotate(floatValue * f3, pointF2 == null ? 0.0f : pointF2.x, pointF2 != null ? pointF2.y : 0.0f);
        }
        return matrix;
    }

    public f getOpacity() {
        return this.f4155j;
    }

    public f getStartOpacity() {
        return this.f4158m;
    }

    public void setProgress(float f3) {
        f fVar = this.f4155j;
        if (fVar != null) {
            fVar.setProgress(f3);
        }
        f fVar2 = this.f4158m;
        if (fVar2 != null) {
            fVar2.setProgress(f3);
        }
        f fVar3 = this.f4159n;
        if (fVar3 != null) {
            fVar3.setProgress(f3);
        }
        f fVar4 = this.f4151f;
        if (fVar4 != null) {
            fVar4.setProgress(f3);
        }
        f fVar5 = this.f4152g;
        if (fVar5 != null) {
            fVar5.setProgress(f3);
        }
        f fVar6 = this.f4153h;
        if (fVar6 != null) {
            fVar6.setProgress(f3);
        }
        f fVar7 = this.f4154i;
        if (fVar7 != null) {
            fVar7.setProgress(f3);
        }
        h hVar = this.f4156k;
        if (hVar != null) {
            hVar.setProgress(f3);
        }
        h hVar2 = this.f4157l;
        if (hVar2 != null) {
            hVar2.setProgress(f3);
        }
    }
}
