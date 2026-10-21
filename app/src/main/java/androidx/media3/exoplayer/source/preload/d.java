package androidx.media3.exoplayer.source.preload;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7514b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7515e;

    public /* synthetic */ d(Object obj, int i2) {
        this.f7514b = i2;
        this.f7515e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7514b) {
            case 0:
                ((DefaultPreloadManager) this.f7515e).lambda$releasePreloadUtils$2();
                break;
            default:
                ((PreCacheHelper) this.f7515e).lambda$stop$1();
                break;
        }
    }
}
