package p;

/* loaded from: classes.dex */
public final class b extends m {

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ g f19373j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(g gVar) {
        super(gVar.size());
        this.f19373j = gVar;
    }

    @Override // p.m
    public Object elementAt(int i2) {
        return this.f19373j.keyAt(i2);
    }

    @Override // p.m
    public void removeAt(int i2) {
        this.f19373j.removeAt(i2);
    }
}
