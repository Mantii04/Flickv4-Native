package androidx.media3.exoplayer.hls;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.hls.HlsInterstitialsAdsLoader;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7402b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7403e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7404f;

    public /* synthetic */ h(int i2, Object obj, Object obj2) {
        this.f7402b = i2;
        this.f7403e = obj;
        this.f7404f = obj2;
    }

    @Override // androidx.media3.common.util.Consumer
    public final void accept(Object obj) {
        HlsInterstitialsAdsLoader.Listener listener = (HlsInterstitialsAdsLoader.Listener) obj;
        switch (this.f7402b) {
            case 0:
                HlsInterstitialsAdsLoader.PlayerListener.lambda$onPlaybackStateChanged$4((ExoPlayer) this.f7403e, this.f7404f, listener);
                break;
            default:
                HlsInterstitialsAdsLoader.lambda$stop$4((AdsMediaSource) this.f7403e, (AdPlaybackState) this.f7404f, listener);
                break;
        }
    }
}
