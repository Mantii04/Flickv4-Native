package V2;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public long f3969a = 0;

    /* renamed from: b, reason: collision with root package name */
    public long f3970b = 0;

    public j build() {
        return new j(this.f3969a, this.f3970b);
    }

    public i setCurrentCacheSizeBytes(long j7) {
        this.f3969a = j7;
        return this;
    }

    public i setMaxCacheSizeBytes(long j7) {
        this.f3970b = j7;
        return this;
    }
}
