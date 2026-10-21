package Q3;

/* loaded from: classes2.dex */
public final class H implements P3.p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ O f2859a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2860b;

    public H(O o6, Object obj) {
        this.f2859a = o6;
        this.f2860b = obj;
    }

    @Override // P3.p
    public Object apply(Object obj) {
        return this.f2859a.transformEntry(this.f2860b, obj);
    }
}
