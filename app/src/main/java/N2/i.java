package N2;

/* loaded from: classes.dex */
public final class i extends L2.c {
    @Override // android.util.Property
    public Integer get(q qVar) {
        return Integer.valueOf(qVar.getRotate());
    }

    @Override // L2.c
    public void setValue(q qVar, int i2) {
        qVar.setRotate(i2);
    }
}
