package N2;

/* loaded from: classes.dex */
public final class f extends L2.b {
    @Override // android.util.Property
    public Float get(q qVar) {
        return Float.valueOf(qVar.getScale());
    }

    @Override // L2.b
    public void setValue(q qVar, float f3) {
        qVar.setScale(f3);
    }
}
