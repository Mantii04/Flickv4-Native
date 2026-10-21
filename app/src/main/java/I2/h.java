package I2;

/* loaded from: classes.dex */
public final class h implements l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f1294a;

    public h(k kVar) {
        this.f1294a = kVar;
    }

    @Override // I2.l
    public void onTimeUpdate(float f3) {
        k kVar = this.f1294a;
        kVar.getClass();
        kVar.a(f3);
        kVar.f1304g = ((Integer) kVar.f1305h.evaluate(f3, Integer.valueOf(kVar.f1302e), Integer.valueOf(kVar.f1303f))).intValue();
        kVar.f1298a.invalidate();
    }
}
