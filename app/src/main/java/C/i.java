package C;

/* loaded from: classes.dex */
public final class i implements f {

    /* renamed from: a, reason: collision with root package name */
    public final J.i f321a;

    /* renamed from: b, reason: collision with root package name */
    public final int f322b;

    /* renamed from: c, reason: collision with root package name */
    public final int f323c;

    /* renamed from: d, reason: collision with root package name */
    public final String f324d;

    public i(J.i iVar, int i2, int i7, String str) {
        this.f321a = iVar;
        this.f323c = i2;
        this.f322b = i7;
        this.f324d = str;
    }

    public int getFetchStrategy() {
        return this.f323c;
    }

    public J.i getRequest() {
        return this.f321a;
    }

    public String getSystemFontFamilyName() {
        return this.f324d;
    }

    public int getTimeout() {
        return this.f322b;
    }
}
