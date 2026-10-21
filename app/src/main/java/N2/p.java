package N2;

/* loaded from: classes.dex */
public final class p extends L2.b {
    @Override // android.util.Property
    public Float get(q qVar) {
        return Float.valueOf(qVar.getScaleY());
    }

    @Override // L2.b
    public void setValue(q qVar, float f3) {
        qVar.setScaleY(f3);
    }
}
