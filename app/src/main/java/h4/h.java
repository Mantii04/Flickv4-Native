package h4;

/* loaded from: classes2.dex */
public final class h extends j {

    /* renamed from: f, reason: collision with root package name */
    public final float f16568f;

    public h(float f3, float f7) {
        this.f16570b = f3;
        this.f16568f = f7;
    }

    public float getFloatValue() {
        return this.f16568f;
    }

    @Override // h4.j
    public Object getValue() {
        return Float.valueOf(this.f16568f);
    }

    @Override // h4.j
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public h m94clone() {
        h hVar = new h(getFraction(), this.f16568f);
        hVar.setInterpolator(getInterpolator());
        return hVar;
    }
}
