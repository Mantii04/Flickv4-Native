package androidx.activity;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final float f4861a;

    /* renamed from: b, reason: collision with root package name */
    public final float f4862b;

    /* renamed from: c, reason: collision with root package name */
    public final float f4863c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4864d;

    static {
        new b(null);
    }

    public c(float f3, float f7, float f8, int i2) {
        this.f4861a = f3;
        this.f4862b = f7;
        this.f4863c = f8;
        this.f4864d = i2;
    }

    public final float getProgress() {
        return this.f4863c;
    }

    public final int getSwipeEdge() {
        return this.f4864d;
    }

    public String toString() {
        return "BackEventCompat{touchX=" + this.f4861a + ", touchY=" + this.f4862b + ", progress=" + this.f4863c + ", swipeEdge=" + this.f4864d + '}';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public c(android.window.BackEvent r5) {
        /*
            r4 = this;
            java.lang.String r0 = "backEvent"
            kotlin.jvm.internal.j.checkNotNullParameter(r5, r0)
            androidx.activity.a r0 = androidx.activity.C0403a.f4860a
            float r1 = r0.touchX(r5)
            float r2 = r0.touchY(r5)
            float r3 = r0.progress(r5)
            int r5 = r0.swipeEdge(r5)
            r4.<init>(r1, r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.activity.c.<init>(android.window.BackEvent):void");
    }
}
