package j4;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* renamed from: j4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1054a extends Animation {

    /* renamed from: w, reason: collision with root package name */
    public static final boolean f16986w;

    /* renamed from: x, reason: collision with root package name */
    public static final WeakHashMap f16987x;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f16988b;

    /* renamed from: j, reason: collision with root package name */
    public float f16991j;

    /* renamed from: m, reason: collision with root package name */
    public float f16992m;

    /* renamed from: n, reason: collision with root package name */
    public float f16993n;

    /* renamed from: r, reason: collision with root package name */
    public float f16996r;

    /* renamed from: s, reason: collision with root package name */
    public float f16997s;

    /* renamed from: e, reason: collision with root package name */
    public final Camera f16989e = new Camera();

    /* renamed from: f, reason: collision with root package name */
    public float f16990f = 1.0f;

    /* renamed from: p, reason: collision with root package name */
    public float f16994p = 1.0f;

    /* renamed from: q, reason: collision with root package name */
    public float f16995q = 1.0f;

    /* renamed from: t, reason: collision with root package name */
    public final RectF f16998t = new RectF();

    /* renamed from: u, reason: collision with root package name */
    public final RectF f16999u = new RectF();

    /* renamed from: v, reason: collision with root package name */
    public final Matrix f17000v = new Matrix();

    static {
        f16986w = Integer.valueOf(Build.VERSION.SDK).intValue() < 11;
        f16987x = new WeakHashMap();
    }

    public C1054a(View view) {
        setDuration(0L);
        setFillAfter(true);
        view.setAnimation(this);
        this.f16988b = new WeakReference(view);
    }

    public static C1054a wrap(View view) {
        WeakHashMap weakHashMap = f16987x;
        C1054a c1054a = (C1054a) weakHashMap.get(view);
        if (c1054a != null && c1054a == view.getAnimation()) {
            return c1054a;
        }
        C1054a c1054a2 = new C1054a(view);
        weakHashMap.put(view, c1054a2);
        return c1054a2;
    }

    public final void a(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        Matrix matrix = this.f17000v;
        matrix.reset();
        d(view, matrix);
        matrix.mapRect(rectF);
        rectF.offset(view.getLeft(), view.getTop());
        float f3 = rectF.right;
        float f7 = rectF.left;
        if (f3 < f7) {
            rectF.right = f7;
            rectF.left = f3;
        }
        float f8 = rectF.bottom;
        float f9 = rectF.top;
        if (f8 < f9) {
            rectF.top = f8;
            rectF.bottom = f9;
        }
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f3, Transformation transformation) {
        View view = (View) this.f16988b.get();
        if (view != null) {
            transformation.setAlpha(this.f16990f);
            d(view, transformation.getMatrix());
        }
    }

    public final void b() {
        View view = (View) this.f16988b.get();
        if (view == null || view.getParent() == null) {
            return;
        }
        RectF rectF = this.f16999u;
        a(view, rectF);
        rectF.union(this.f16998t);
        ((View) view.getParent()).invalidate((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    public final void c() {
        View view = (View) this.f16988b.get();
        if (view != null) {
            a(view, this.f16998t);
        }
    }

    public final void d(View view, Matrix matrix) {
        float width = view.getWidth();
        float height = view.getHeight();
        float f3 = width / 2.0f;
        float f7 = height / 2.0f;
        float f8 = this.f16991j;
        float f9 = this.f16992m;
        float f10 = this.f16993n;
        if (f8 != 0.0f || f9 != 0.0f || f10 != 0.0f) {
            Camera camera = this.f16989e;
            camera.save();
            camera.rotateX(f8);
            camera.rotateY(f9);
            camera.rotateZ(-f10);
            camera.getMatrix(matrix);
            camera.restore();
            matrix.preTranslate(-f3, -f7);
            matrix.postTranslate(f3, f7);
        }
        float f11 = this.f16994p;
        float f12 = this.f16995q;
        if (f11 != 1.0f || f12 != 1.0f) {
            matrix.postScale(f11, f12);
            matrix.postTranslate(((f11 * width) - width) * (-(f3 / width)), ((f12 * height) - height) * (-(f7 / height)));
        }
        matrix.postTranslate(this.f16996r, this.f16997s);
    }

    public float getAlpha() {
        return this.f16990f;
    }

    public float getRotation() {
        return this.f16993n;
    }

    public float getRotationX() {
        return this.f16991j;
    }

    public float getRotationY() {
        return this.f16992m;
    }

    public float getScaleX() {
        return this.f16994p;
    }

    public float getScaleY() {
        return this.f16995q;
    }

    public float getTranslationX() {
        return this.f16996r;
    }

    public float getTranslationY() {
        return this.f16997s;
    }

    public float getX() {
        if (((View) this.f16988b.get()) == null) {
            return 0.0f;
        }
        return r0.getLeft() + this.f16996r;
    }

    public float getY() {
        if (((View) this.f16988b.get()) == null) {
            return 0.0f;
        }
        return r0.getTop() + this.f16997s;
    }

    public void setAlpha(float f3) {
        if (this.f16990f != f3) {
            this.f16990f = f3;
            View view = (View) this.f16988b.get();
            if (view != null) {
                view.invalidate();
            }
        }
    }

    public void setRotation(float f3) {
        if (this.f16993n != f3) {
            c();
            this.f16993n = f3;
            b();
        }
    }

    public void setRotationX(float f3) {
        if (this.f16991j != f3) {
            c();
            this.f16991j = f3;
            b();
        }
    }

    public void setRotationY(float f3) {
        if (this.f16992m != f3) {
            c();
            this.f16992m = f3;
            b();
        }
    }

    public void setScaleX(float f3) {
        if (this.f16994p != f3) {
            c();
            this.f16994p = f3;
            b();
        }
    }

    public void setScaleY(float f3) {
        if (this.f16995q != f3) {
            c();
            this.f16995q = f3;
            b();
        }
    }

    public void setTranslationX(float f3) {
        if (this.f16996r != f3) {
            c();
            this.f16996r = f3;
            b();
        }
    }

    public void setTranslationY(float f3) {
        if (this.f16997s != f3) {
            c();
            this.f16997s = f3;
            b();
        }
    }

    public void setX(float f3) {
        if (((View) this.f16988b.get()) != null) {
            setTranslationX(f3 - r0.getLeft());
        }
    }

    public void setY(float f3) {
        if (((View) this.f16988b.get()) != null) {
            setTranslationY(f3 - r0.getTop());
        }
    }
}
