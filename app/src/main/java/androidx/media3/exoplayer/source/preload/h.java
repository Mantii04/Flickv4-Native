package androidx.media3.exoplayer.source.preload;

import P3.w;
import androidx.media3.exoplayer.source.preload.DefaultPreloadManager;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements w {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7520b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DefaultPreloadManager.PreloadStatus f7521e;

    public /* synthetic */ h(DefaultPreloadManager.PreloadStatus preloadStatus, int i2) {
        this.f7520b = i2;
        this.f7521e = preloadStatus;
    }

    @Override // P3.w
    public final boolean apply(Object obj) {
        boolean lambda$onPrepareError$1;
        boolean lambda$onPreCacheProgress$0;
        boolean lambda$onDownloadError$2;
        boolean lambda$onUsedByPlayer$3;
        boolean lambda$onPreloadError$5;
        boolean lambda$onLoadedToTheEndOfSource$4;
        boolean lambda$continueOrCompletePreloading$6;
        switch (this.f7520b) {
            case 0:
                lambda$onPrepareError$1 = DefaultPreloadManager.PreCacheHelperListener.lambda$onPrepareError$1(this.f7521e, (DefaultPreloadManager.PreloadStatus) obj);
                return lambda$onPrepareError$1;
            case 1:
                lambda$onPreCacheProgress$0 = DefaultPreloadManager.PreCacheHelperListener.lambda$onPreCacheProgress$0(this.f7521e, (DefaultPreloadManager.PreloadStatus) obj);
                return lambda$onPreCacheProgress$0;
            case 2:
                lambda$onDownloadError$2 = DefaultPreloadManager.PreCacheHelperListener.lambda$onDownloadError$2(this.f7521e, (DefaultPreloadManager.PreloadStatus) obj);
                return lambda$onDownloadError$2;
            case 3:
                lambda$onUsedByPlayer$3 = DefaultPreloadManager.PreloadMediaSourceControl.lambda$onUsedByPlayer$3(this.f7521e, (DefaultPreloadManager.PreloadStatus) obj);
                return lambda$onUsedByPlayer$3;
            case 4:
                lambda$onPreloadError$5 = DefaultPreloadManager.PreloadMediaSourceControl.lambda$onPreloadError$5(this.f7521e, (DefaultPreloadManager.PreloadStatus) obj);
                return lambda$onPreloadError$5;
            case 5:
                lambda$onLoadedToTheEndOfSource$4 = DefaultPreloadManager.PreloadMediaSourceControl.lambda$onLoadedToTheEndOfSource$4(this.f7521e, (DefaultPreloadManager.PreloadStatus) obj);
                return lambda$onLoadedToTheEndOfSource$4;
            default:
                lambda$continueOrCompletePreloading$6 = DefaultPreloadManager.PreloadMediaSourceControl.lambda$continueOrCompletePreloading$6(this.f7521e, (DefaultPreloadManager.PreloadStatus) obj);
                return lambda$continueOrCompletePreloading$6;
        }
    }
}
