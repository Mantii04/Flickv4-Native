package androidx.media3.exoplayer.hls;

import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.hls.HlsInterstitialsAdsLoader;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;

/* loaded from: classes.dex */
public final /* synthetic */ class i implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7405b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7406e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f7407f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f7408j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ Object f7409m;

    public /* synthetic */ i(Object obj, Object obj2, int i2, int i7, int i8) {
        this.f7405b = i8;
        this.f7409m = obj;
        this.f7406e = obj2;
        this.f7407f = i2;
        this.f7408j = i7;
    }

    @Override // androidx.media3.common.util.Consumer
    public final void accept(Object obj) {
        HlsInterstitialsAdsLoader.Listener listener = (HlsInterstitialsAdsLoader.Listener) obj;
        switch (this.f7405b) {
            case 0:
                listener.onAdCompleted((MediaItem) this.f7409m, this.f7406e, this.f7407f, this.f7408j);
                break;
            default:
                HlsInterstitialsAdsLoader.lambda$handlePrepareComplete$2((AdsMediaSource) this.f7409m, this.f7406e, this.f7407f, this.f7408j, listener);
                break;
        }
    }
}
