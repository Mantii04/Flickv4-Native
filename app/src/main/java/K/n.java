package K;

/* loaded from: classes.dex */
public abstract class n implements j {

    /* renamed from: a, reason: collision with root package name */
    public final m f1571a;

    public n(m mVar) {
        this.f1571a = mVar;
    }

    public abstract boolean defaultIsRtl();

    @Override // K.j
    public boolean isRtl(CharSequence charSequence, int i2, int i7) {
        if (charSequence == null || i2 < 0 || i7 < 0 || charSequence.length() - i7 < i2) {
            throw new IllegalArgumentException();
        }
        m mVar = this.f1571a;
        if (mVar == null) {
            return defaultIsRtl();
        }
        int checkRtl = mVar.checkRtl(charSequence, i2, i7);
        if (checkRtl == 0) {
            return true;
        }
        if (checkRtl != 1) {
            return defaultIsRtl();
        }
        return false;
    }
}
