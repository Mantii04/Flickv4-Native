package n2;

/* renamed from: n2.G, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1385G implements InterfaceC1391M {

    /* renamed from: b, reason: collision with root package name */
    public final boolean f18891b;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f18892e;

    /* renamed from: f, reason: collision with root package name */
    public final InterfaceC1391M f18893f;

    /* renamed from: j, reason: collision with root package name */
    public final InterfaceC1384F f18894j;

    /* renamed from: m, reason: collision with root package name */
    public final l2.m f18895m;

    /* renamed from: n, reason: collision with root package name */
    public int f18896n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f18897p;

    public C1385G(InterfaceC1391M interfaceC1391M, boolean z6, boolean z7, l2.m mVar, InterfaceC1384F interfaceC1384F) {
        this.f18893f = (InterfaceC1391M) G2.r.checkNotNull(interfaceC1391M);
        this.f18891b = z6;
        this.f18892e = z7;
        this.f18895m = mVar;
        this.f18894j = (InterfaceC1384F) G2.r.checkNotNull(interfaceC1384F);
    }

    public final synchronized void a() {
        if (this.f18897p) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.f18896n++;
    }

    public final void b() {
        boolean z6;
        synchronized (this) {
            int i2 = this.f18896n;
            if (i2 <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z6 = true;
            int i7 = i2 - 1;
            this.f18896n = i7;
            if (i7 != 0) {
                z6 = false;
            }
        }
        if (z6) {
            ((com.bumptech.glide.load.engine.b) this.f18894j).onResourceReleased(this.f18895m, this);
        }
    }

    @Override // n2.InterfaceC1391M
    public Object get() {
        return this.f18893f.get();
    }

    @Override // n2.InterfaceC1391M
    public Class<Object> getResourceClass() {
        return this.f18893f.getResourceClass();
    }

    @Override // n2.InterfaceC1391M
    public int getSize() {
        return this.f18893f.getSize();
    }

    @Override // n2.InterfaceC1391M
    public synchronized void recycle() {
        if (this.f18896n > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f18897p) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f18897p = true;
        if (this.f18892e) {
            this.f18893f.recycle();
        }
    }

    public synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f18891b + ", listener=" + this.f18894j + ", key=" + this.f18895m + ", acquired=" + this.f18896n + ", isRecycled=" + this.f18897p + ", resource=" + this.f18893f + '}';
    }
}
