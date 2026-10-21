package n2;

/* renamed from: n2.L, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1390L implements InterfaceC1391M, H2.f {

    /* renamed from: m, reason: collision with root package name */
    public static final L.e f18903m = H2.h.threadSafe(20, new C1389K());

    /* renamed from: b, reason: collision with root package name */
    public final H2.k f18904b = H2.k.newInstance();

    /* renamed from: e, reason: collision with root package name */
    public InterfaceC1391M f18905e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f18906f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f18907j;

    public final synchronized void a() {
        this.f18904b.throwIfRecycled();
        if (!this.f18906f) {
            throw new IllegalStateException("Already unlocked");
        }
        this.f18906f = false;
        if (this.f18907j) {
            recycle();
        }
    }

    @Override // n2.InterfaceC1391M
    public Object get() {
        return this.f18905e.get();
    }

    @Override // n2.InterfaceC1391M
    public Class<Object> getResourceClass() {
        return this.f18905e.getResourceClass();
    }

    @Override // n2.InterfaceC1391M
    public int getSize() {
        return this.f18905e.getSize();
    }

    @Override // H2.f
    public H2.k getVerifier() {
        return this.f18904b;
    }

    @Override // n2.InterfaceC1391M
    public synchronized void recycle() {
        this.f18904b.throwIfRecycled();
        this.f18907j = true;
        if (!this.f18906f) {
            this.f18905e.recycle();
            this.f18905e = null;
            f18903m.release(this);
        }
    }
}
