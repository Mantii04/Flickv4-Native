package androidx.mediarouter.app;

/* loaded from: classes.dex */
public final class L {

    /* renamed from: a, reason: collision with root package name */
    public final Object f7680a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7681b;

    public L(Object obj) {
        this.f7680a = obj;
        if (obj instanceof String) {
            this.f7681b = 1;
        } else {
            if (!(obj instanceof f1.U)) {
                throw new IllegalArgumentException();
            }
            this.f7681b = 2;
        }
    }

    public Object getData() {
        return this.f7680a;
    }

    public int getType() {
        return this.f7681b;
    }
}
