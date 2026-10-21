package androidx.media3.exoplayer.source.preload;

import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.preload.PreloadMediaSource;

/* loaded from: classes.dex */
public final /* synthetic */ class v implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7547b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PreloadMediaSource.PreloadMediaPeriodCallback f7548e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MediaPeriod f7549f;

    public /* synthetic */ v(PreloadMediaSource.PreloadMediaPeriodCallback preloadMediaPeriodCallback, MediaPeriod mediaPeriod, int i2) {
        this.f7547b = i2;
        this.f7548e = preloadMediaPeriodCallback;
        this.f7549f = mediaPeriod;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7547b) {
            case 0:
                this.f7548e.lambda$onPrepared$0(this.f7549f);
                break;
            default:
                this.f7548e.lambda$onContinueLoadingRequested$1(this.f7549f);
                break;
        }
    }
}
