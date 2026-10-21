package h6;

/* loaded from: classes2.dex */
public final class i extends ThreadLocal {
    @Override // java.lang.ThreadLocal
    public StringBuilder initialValue() {
        return new StringBuilder(8192);
    }
}
