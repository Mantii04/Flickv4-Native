package p;

/* loaded from: classes.dex */
public final class h extends m {

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ i f19384j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(i iVar) {
        super(iVar.get_size$collection());
        this.f19384j = iVar;
    }

    @Override // p.m
    public Object elementAt(int i2) {
        return this.f19384j.valueAt(i2);
    }

    @Override // p.m
    public void removeAt(int i2) {
        this.f19384j.removeAt(i2);
    }
}
