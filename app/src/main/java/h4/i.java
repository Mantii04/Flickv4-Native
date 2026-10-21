package h4;

/* loaded from: classes2.dex */
public final class i extends j {

    /* renamed from: f, reason: collision with root package name */
    public final int f16569f;

    public i(float f3, int i2) {
        this.f16570b = f3;
        this.f16569f = i2;
    }

    public int getIntValue() {
        return this.f16569f;
    }

    @Override // h4.j
    public Object getValue() {
        return Integer.valueOf(this.f16569f);
    }

    @Override // h4.j
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public i m95clone() {
        i iVar = new i(getFraction(), this.f16569f);
        iVar.setInterpolator(getInterpolator());
        return iVar;
    }
}
