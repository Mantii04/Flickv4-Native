package N2;

/* loaded from: classes.dex */
public final class n extends L2.b {
    @Override // android.util.Property
    public Float get(q qVar) {
        return Float.valueOf(qVar.getTranslateYPercentage());
    }

    @Override // L2.b
    public void setValue(q qVar, float f3) {
        qVar.setTranslateYPercentage(f3);
    }
}
