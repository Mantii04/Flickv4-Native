package androidx.media3.exoplayer.source.ads;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7479b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7480e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7481f;

    public /* synthetic */ e(int i2, Object obj, Object obj2) {
        this.f7479b = i2;
        this.f7480e = obj;
        this.f7481f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7479b) {
            case 0:
                ((AdsMediaSource.AdPrepareListener) this.f7480e).lambda$onPrepareComplete$0((MediaSource.MediaPeriodId) this.f7481f);
                break;
            case 1:
                ((AdsMediaSource.ComponentListener) this.f7480e).lambda$onAdPlaybackState$0((AdPlaybackState) this.f7481f);
                break;
            default:
                ((AdsMediaSource) this.f7480e).lambda$onChildSourceInfoRefreshed$2((Timeline) this.f7481f);
                break;
        }
    }
}
