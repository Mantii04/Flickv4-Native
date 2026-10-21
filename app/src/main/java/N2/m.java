package N2;

/* loaded from: classes.dex */
public final class m extends L2.b {
    @Override // android.util.Property
    public Float get(q qVar) {
        return Float.valueOf(qVar.getTranslateXPercentage());
    }

    @Override // L2.b
    public void setValue(q qVar, float f3) {
        qVar.setTranslateXPercentage(f3);
    }
}
