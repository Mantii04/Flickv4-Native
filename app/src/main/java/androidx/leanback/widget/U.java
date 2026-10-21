package androidx.leanback.widget;

/* loaded from: classes.dex */
public final class U {

    /* renamed from: a, reason: collision with root package name */
    public final T f6749a = new T(1);

    /* renamed from: b, reason: collision with root package name */
    public final T f6750b;

    /* renamed from: c, reason: collision with root package name */
    public T f6751c;

    public U() {
        T t6 = new T(0);
        this.f6750b = t6;
        this.f6751c = t6;
    }

    public final T mainAxis() {
        return this.f6751c;
    }

    public final void setOrientation(int i2) {
        if (i2 == 0) {
            this.f6751c = this.f6750b;
        } else {
            this.f6751c = this.f6749a;
        }
    }
}
