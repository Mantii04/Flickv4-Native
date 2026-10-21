package androidx.media3.exoplayer.source.preload;

/* loaded from: classes.dex */
public final /* synthetic */ class s implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7541b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PreloadMediaSource f7542e;

    public /* synthetic */ s(PreloadMediaSource preloadMediaSource, int i2) {
        this.f7541b = i2;
        this.f7542e = preloadMediaSource;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7541b) {
            case 0:
                this.f7542e.lambda$releasePreloadMediaSource$3();
                break;
            case 1:
                this.f7542e.lambda$clear$1();
                break;
            default:
                this.f7542e.checkForPreloadError();
                break;
        }
    }
}
