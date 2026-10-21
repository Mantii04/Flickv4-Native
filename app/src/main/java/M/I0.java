package M;

import android.view.WindowInsetsAnimation;

/* loaded from: classes.dex */
public final class I0 {

    /* renamed from: a, reason: collision with root package name */
    public final D.c f1933a;

    /* renamed from: b, reason: collision with root package name */
    public final D.c f1934b;

    public I0(D.c cVar, D.c cVar2) {
        this.f1933a = cVar;
        this.f1934b = cVar2;
    }

    public static I0 toBoundsCompat(WindowInsetsAnimation.Bounds bounds) {
        return new I0(bounds);
    }

    public D.c getLowerBound() {
        return this.f1933a;
    }

    public D.c getUpperBound() {
        return this.f1934b;
    }

    public WindowInsetsAnimation.Bounds toBounds() {
        return Q0.createPlatformBounds(this);
    }

    public String toString() {
        return "Bounds{lower=" + this.f1933a + " upper=" + this.f1934b + "}";
    }

    public I0(WindowInsetsAnimation.Bounds bounds) {
        this.f1933a = Q0.getLowerBounds(bounds);
        this.f1934b = Q0.getHigherBounds(bounds);
    }
}
