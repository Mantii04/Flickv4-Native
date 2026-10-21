package androidx.media3.exoplayer;

/* loaded from: classes.dex */
public final /* synthetic */ class H implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7189b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f7190e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7191f;

    public /* synthetic */ H(Object obj, int i2, int i7) {
        this.f7189b = i7;
        this.f7191f = obj;
        this.f7190e = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7189b) {
            case 0:
                ((ExoPlayerImplInternal) this.f7191f).lambda$setScrubbingModeEnabledInternal$2(this.f7190e);
                break;
            default:
                ((StreamVolumeManager) this.f7191f).lambda$new$0(this.f7190e);
                break;
        }
    }
}
