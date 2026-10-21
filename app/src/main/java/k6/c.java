package k6;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public int f17343a;

    /* renamed from: b, reason: collision with root package name */
    public String f17344b;

    public c(int i2, String str, Object... objArr) {
        this.f17344b = String.format(str, objArr);
        this.f17343a = i2;
    }

    public String toString() {
        return this.f17343a + ": " + this.f17344b;
    }
}
