package g2;

import T1.C0330i;
import android.graphics.PointF;
import android.view.animation.Interpolator;

/* renamed from: g2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0947a {

    /* renamed from: a, reason: collision with root package name */
    public final C0330i f16440a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f16441b;

    /* renamed from: c, reason: collision with root package name */
    public Object f16442c;

    /* renamed from: d, reason: collision with root package name */
    public final Interpolator f16443d;

    /* renamed from: e, reason: collision with root package name */
    public final float f16444e;

    /* renamed from: f, reason: collision with root package name */
    public Float f16445f;

    /* renamed from: g, reason: collision with root package name */
    public float f16446g;

    /* renamed from: h, reason: collision with root package name */
    public float f16447h;

    /* renamed from: i, reason: collision with root package name */
    public int f16448i;

    /* renamed from: j, reason: collision with root package name */
    public int f16449j;

    /* renamed from: k, reason: collision with root package name */
    public float f16450k;

    /* renamed from: l, reason: collision with root package name */
    public float f16451l;

    /* renamed from: m, reason: collision with root package name */
    public PointF f16452m;

    /* renamed from: n, reason: collision with root package name */
    public PointF f16453n;

    public C0947a(C0330i c0330i, Object obj, Object obj2, Interpolator interpolator, float f3, Float f7) {
        this.f16446g = -3987645.8f;
        this.f16447h = -3987645.8f;
        this.f16448i = 784923401;
        this.f16449j = 784923401;
        this.f16450k = Float.MIN_VALUE;
        this.f16451l = Float.MIN_VALUE;
        this.f16452m = null;
        this.f16453n = null;
        this.f16440a = c0330i;
        this.f16441b = obj;
        this.f16442c = obj2;
        this.f16443d = interpolator;
        this.f16444e = f3;
        this.f16445f = f7;
    }

    public boolean containsProgress(float f3) {
        return f3 >= getStartProgress() && f3 < getEndProgress();
    }

    public float getEndProgress() {
        C0330i c0330i = this.f16440a;
        if (c0330i == null) {
            return 1.0f;
        }
        if (this.f16451l == Float.MIN_VALUE) {
            if (this.f16445f == null) {
                this.f16451l = 1.0f;
            } else {
                this.f16451l = ((this.f16445f.floatValue() - this.f16444e) / c0330i.getDurationFrames()) + getStartProgress();
            }
        }
        return this.f16451l;
    }

    public float getEndValueFloat() {
        if (this.f16447h == -3987645.8f) {
            this.f16447h = ((Float) this.f16442c).floatValue();
        }
        return this.f16447h;
    }

    public int getEndValueInt() {
        if (this.f16449j == 784923401) {
            this.f16449j = ((Integer) this.f16442c).intValue();
        }
        return this.f16449j;
    }

    public float getStartProgress() {
        C0330i c0330i = this.f16440a;
        if (c0330i == null) {
            return 0.0f;
        }
        if (this.f16450k == Float.MIN_VALUE) {
            this.f16450k = (this.f16444e - c0330i.getStartFrame()) / c0330i.getDurationFrames();
        }
        return this.f16450k;
    }

    public float getStartValueFloat() {
        if (this.f16446g == -3987645.8f) {
            this.f16446g = ((Float) this.f16441b).floatValue();
        }
        return this.f16446g;
    }

    public int getStartValueInt() {
        if (this.f16448i == 784923401) {
            this.f16448i = ((Integer) this.f16441b).intValue();
        }
        return this.f16448i;
    }

    public boolean isStatic() {
        return this.f16443d == null;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.f16441b + ", endValue=" + this.f16442c + ", startFrame=" + this.f16444e + ", endFrame=" + this.f16445f + ", interpolator=" + this.f16443d + '}';
    }

    public C0947a(Object obj) {
        this.f16446g = -3987645.8f;
        this.f16447h = -3987645.8f;
        this.f16448i = 784923401;
        this.f16449j = 784923401;
        this.f16450k = Float.MIN_VALUE;
        this.f16451l = Float.MIN_VALUE;
        this.f16452m = null;
        this.f16453n = null;
        this.f16440a = null;
        this.f16441b = obj;
        this.f16442c = obj;
        this.f16443d = null;
        this.f16444e = Float.MIN_VALUE;
        this.f16445f = Float.valueOf(Float.MAX_VALUE);
    }
}
