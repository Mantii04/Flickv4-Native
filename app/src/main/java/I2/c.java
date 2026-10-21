package I2;

/* loaded from: classes.dex */
public final class c implements l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f1264a;

    public c(f fVar) {
        this.f1264a = fVar;
    }

    @Override // I2.l
    public void onTimeUpdate(float f3) {
        f fVar = this.f1264a;
        fVar.getClass();
        f.a(fVar, f3);
        fVar.f1283p = fVar.f1284q * f3;
        fVar.f1268a.invalidate();
    }
}
