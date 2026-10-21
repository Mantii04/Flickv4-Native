package G2;

/* loaded from: classes.dex */
public final class j implements k {

    /* renamed from: a, reason: collision with root package name */
    public volatile Object f1036a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f1037b;

    public j(k kVar) {
        this.f1037b = kVar;
    }

    @Override // G2.k
    public Object get() {
        if (this.f1036a == null) {
            synchronized (this) {
                try {
                    if (this.f1036a == null) {
                        this.f1036a = r.checkNotNull(this.f1037b.get());
                    }
                } finally {
                }
            }
        }
        return this.f1036a;
    }
}
