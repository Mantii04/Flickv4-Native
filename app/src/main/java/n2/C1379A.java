package n2;

/* renamed from: n2.A, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1379A {

    /* renamed from: a, reason: collision with root package name */
    public final com.bumptech.glide.load.engine.e f18876a;

    /* renamed from: b, reason: collision with root package name */
    public final C2.g f18877b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.bumptech.glide.load.engine.b f18878c;

    public C1379A(com.bumptech.glide.load.engine.b bVar, C2.g gVar, com.bumptech.glide.load.engine.e eVar) {
        this.f18878c = bVar;
        this.f18877b = gVar;
        this.f18876a = eVar;
    }

    public void cancel() {
        synchronized (this.f18878c) {
            this.f18876a.h(this.f18877b);
        }
    }
}
