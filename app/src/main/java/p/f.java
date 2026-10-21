package p;

/* loaded from: classes.dex */
public final class f extends m {

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ g f19380j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(g gVar) {
        super(gVar.size());
        this.f19380j = gVar;
    }

    @Override // p.m
    public Object elementAt(int i2) {
        return this.f19380j.valueAt(i2);
    }

    @Override // p.m
    public void removeAt(int i2) {
        this.f19380j.removeAt(i2);
    }
}
