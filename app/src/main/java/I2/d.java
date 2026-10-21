package I2;

/* loaded from: classes.dex */
public final class d implements l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f1265a;

    public d(f fVar) {
        this.f1265a = fVar;
    }

    @Override // I2.l
    public void onTimeUpdate(float f3) {
        f fVar = this.f1265a;
        fVar.getClass();
        f.a(fVar, 1.0f - f3);
        float f7 = fVar.f1283p;
        float f8 = fVar.f1284q;
        float f9 = f7 < f8 ? f8 - f7 : 0.0f;
        fVar.f1283p = (f8 - f9) + (((fVar.f1287t - f8) - f9) * f3);
        int i2 = (int) ((1.0f - f3) * 100.0f);
        fVar.f1273f = i2;
        fVar.f1272e = a.getNewColorAlpha(fVar.f1274g, i2);
        fVar.f1290w.setColor(fVar.f1272e);
        fVar.f1268a.invalidate();
    }
}
