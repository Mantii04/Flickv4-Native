package f1;

/* renamed from: f1.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0880B {

    /* renamed from: a, reason: collision with root package name */
    public final C0915v f14104a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14105b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f14106c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f14107d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f14108e;

    public C0880B(C0915v c0915v, int i2, boolean z6, boolean z7, boolean z8) {
        this.f14104a = c0915v;
        this.f14105b = i2;
        this.f14106c = z6;
        this.f14107d = z7;
        this.f14108e = z8;
    }

    public C0915v getRouteDescriptor() {
        return this.f14104a;
    }

    public int getSelectionState() {
        return this.f14105b;
    }

    public boolean isGroupable() {
        return this.f14107d;
    }

    public boolean isTransferable() {
        return this.f14108e;
    }

    public boolean isUnselectable() {
        return this.f14106c;
    }
}
