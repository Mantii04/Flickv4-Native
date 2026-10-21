package T5;

/* loaded from: classes2.dex */
public abstract class r {
    public static /* synthetic */ boolean close$default(s sVar, Throwable th, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
        }
        if ((i2 & 1) != 0) {
            th = null;
        }
        return sVar.close(th);
    }
}
