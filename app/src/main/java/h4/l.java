package h4;

/* loaded from: classes2.dex */
public final class l extends n {

    /* renamed from: q, reason: collision with root package name */
    public e f16576q;

    /* renamed from: r, reason: collision with root package name */
    public float f16577r;

    public l(String str, float... fArr) {
        super(str);
        setFloatValues(fArr);
    }

    @Override // h4.n
    public final void a(float f3) {
        this.f16577r = this.f16576q.getFloatValue(f3);
    }

    @Override // h4.n
    public final Object b() {
        return Float.valueOf(this.f16577r);
    }

    @Override // h4.n
    public void setFloatValues(float... fArr) {
        super.setFloatValues(fArr);
        this.f16576q = (e) this.f16584f;
    }

    @Override // h4.n
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public l m96clone() {
        l lVar = (l) super.m97clone();
        lVar.f16576q = (e) lVar.f16584f;
        return lVar;
    }
}
