package androidx.media3.exoplayer.source.preload;

import P3.w;
import androidx.media3.common.MediaItem;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.preload.PreloadMediaSource;

/* loaded from: classes.dex */
public final /* synthetic */ class u implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7543b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7544e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7545f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f7546j;

    public /* synthetic */ u(Object obj, Object obj2, Object obj3, int i2) {
        this.f7543b = i2;
        this.f7544e = obj;
        this.f7545f = obj2;
        this.f7546j = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7543b) {
            case 0:
                ((PreloadMediaSource.PreloadMediaPeriodCallback) this.f7544e).lambda$maybeContinueLoading$2((MediaPeriod) this.f7545f, (MediaSource.MediaPeriodId) this.f7546j);
                break;
            case 1:
                ((BasePreloadManager) this.f7544e).lambda$onMediaSourceUpdated$9((MediaItem) this.f7545f, (MediaSource) this.f7546j);
                break;
            default:
                ((BasePreloadManager) this.f7544e).lambda$onCompleted$3((MediaItem) this.f7545f, (w) this.f7546j);
                break;
        }
    }
}
