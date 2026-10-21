package h4;

import android.view.animation.Interpolator;

/* loaded from: classes2.dex */
public abstract class j implements Cloneable {

    /* renamed from: b, reason: collision with root package name */
    public float f16570b;

    /* renamed from: e, reason: collision with root package name */
    public Interpolator f16571e = null;

    public static j ofFloat(float f3, float f7) {
        return new h(f3, f7);
    }

    public static j ofInt(float f3, int i2) {
        return new i(f3, i2);
    }

    /* renamed from: clone */
    public abstract j m95clone();

    public float getFraction() {
        return this.f16570b;
    }

    public Interpolator getInterpolator() {
        return this.f16571e;
    }

    public abstract Object getValue();

    public void setInterpolator(Interpolator interpolator) {
        this.f16571e = interpolator;
    }

    public static j ofFloat(float f3) {
        h hVar = new h();
        hVar.f16570b = f3;
        return hVar;
    }

    public static j ofInt(float f3) {
        i iVar = new i();
        iVar.f16570b = f3;
        return iVar;
    }
}
