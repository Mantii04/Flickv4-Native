package V3;

/* loaded from: classes2.dex */
public final class p extends r {
    @Override // V3.r
    public final int c(com.google.common.util.concurrent.c cVar) {
        int i2;
        synchronized (cVar) {
            i2 = cVar.f13214r - 1;
            cVar.f13214r = i2;
        }
        return i2;
    }
}
