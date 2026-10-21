package androidx.emoji2.text;

/* loaded from: classes.dex */
public abstract class k {

    /* renamed from: a, reason: collision with root package name */
    public final n f5992a;

    /* renamed from: b, reason: collision with root package name */
    public int f5993b = 0;

    /* renamed from: c, reason: collision with root package name */
    public final C0449h f5994c = new C0449h();

    public k(n nVar) {
        L.h.checkNotNull(nVar, "metadataLoader cannot be null.");
        this.f5992a = nVar;
    }

    public final n getMetadataRepoLoader() {
        return this.f5992a;
    }

    public k setMetadataLoadStrategy(int i2) {
        this.f5993b = i2;
        return this;
    }
}
