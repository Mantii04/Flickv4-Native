package androidx.media3.exoplayer.source.preload;

import P3.w;
import androidx.media3.exoplayer.source.preload.DefaultPreloadManager;

/* loaded from: classes.dex */
public final /* synthetic */ class i implements w {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7522b;

    public /* synthetic */ i(int i2) {
        this.f7522b = i2;
    }

    @Override // P3.w
    public final boolean apply(Object obj) {
        boolean lambda$onSourcePrepared$0;
        boolean lambda$onTracksSelected$1;
        boolean lambda$preloadMediaSourceHolderInternal$1;
        DefaultPreloadManager.PreloadStatus preloadStatus = (DefaultPreloadManager.PreloadStatus) obj;
        switch (this.f7522b) {
            case 0:
                lambda$onSourcePrepared$0 = DefaultPreloadManager.PreloadMediaSourceControl.lambda$onSourcePrepared$0(preloadStatus);
                return lambda$onSourcePrepared$0;
            case 1:
                lambda$onTracksSelected$1 = DefaultPreloadManager.PreloadMediaSourceControl.lambda$onTracksSelected$1(preloadStatus);
                return lambda$onTracksSelected$1;
            default:
                lambda$preloadMediaSourceHolderInternal$1 = DefaultPreloadManager.lambda$preloadMediaSourceHolderInternal$1(preloadStatus);
                return lambda$preloadMediaSourceHolderInternal$1;
        }
    }
}
