package h4;

/* loaded from: classes2.dex */
public final class m extends n {

    /* renamed from: q, reason: collision with root package name */
    public g f16578q;

    /* renamed from: r, reason: collision with root package name */
    public int f16579r;

    public m(String str, int... iArr) {
        super(str);
        setIntValues(iArr);
    }

    @Override // h4.n
    public final void a(float f3) {
        this.f16579r = this.f16578q.getIntValue(f3);
    }

    @Override // h4.n
    public final Object b() {
        return Integer.valueOf(this.f16579r);
    }

    @Override // h4.n
    public void setIntValues(int... iArr) {
        super.setIntValues(iArr);
        this.f16578q = (g) this.f16584f;
    }

    @Override // h4.n
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public m m97clone() {
        m mVar = (m) super.m97clone();
        mVar.f16578q = (g) mVar.f16584f;
        return mVar;
    }
}
