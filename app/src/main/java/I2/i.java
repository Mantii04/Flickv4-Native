package I2;

/* loaded from: classes.dex */
public final class i implements l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f1295a;

    public i(k kVar) {
        this.f1295a = kVar;
    }

    @Override // I2.l
    public void onTimeUpdate(float f3) {
        k kVar = this.f1295a;
        kVar.getClass();
        kVar.a(1.0f - f3);
        kVar.f1304g = ((Integer) kVar.f1305h.evaluate(f3, Integer.valueOf(kVar.f1303f), Integer.valueOf(kVar.f1302e))).intValue();
        kVar.f1298a.invalidate();
    }
}
