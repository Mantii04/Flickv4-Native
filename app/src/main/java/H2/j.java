package H2;

/* loaded from: classes.dex */
public final class j extends k {

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f1198a;

    @Override // H2.k
    public void setRecycled(boolean z6) {
        this.f1198a = z6;
    }

    @Override // H2.k
    public void throwIfRecycled() {
        if (this.f1198a) {
            throw new IllegalStateException("Already released");
        }
    }
}
