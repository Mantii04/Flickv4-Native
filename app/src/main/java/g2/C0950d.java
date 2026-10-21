package g2;

/* renamed from: g2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0950d {

    /* renamed from: a, reason: collision with root package name */
    public float f16458a;

    /* renamed from: b, reason: collision with root package name */
    public float f16459b;

    public C0950d(float f3, float f7) {
        this.f16458a = f3;
        this.f16459b = f7;
    }

    public boolean equals(float f3, float f7) {
        return this.f16458a == f3 && this.f16459b == f7;
    }

    public float getScaleX() {
        return this.f16458a;
    }

    public float getScaleY() {
        return this.f16459b;
    }

    public void set(float f3, float f7) {
        this.f16458a = f3;
        this.f16459b = f7;
    }

    public String toString() {
        return getScaleX() + "x" + getScaleY();
    }

    public C0950d() {
        this(1.0f, 1.0f);
    }
}
