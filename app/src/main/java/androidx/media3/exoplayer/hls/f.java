package androidx.media3.exoplayer.hls;

import android.util.Pair;
import androidx.media3.common.AdViewProvider;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.hls.HlsInterstitialsAdsLoader;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7395b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7396e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7397f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f7398j;

    public /* synthetic */ f(Object obj, Object obj2, Object obj3, int i2) {
        this.f7395b = i2;
        this.f7396e = obj;
        this.f7397f = obj2;
        this.f7398j = obj3;
    }

    @Override // androidx.media3.common.util.Consumer
    public final void accept(Object obj) {
        switch (this.f7395b) {
            case 0:
                ((HlsInterstitialsAdsLoader.LoaderCallback) this.f7396e).lambda$onLoadCompleted$1((HlsInterstitialsAdsLoader.AssetList) this.f7397f, (Pair) this.f7398j, (HlsInterstitialsAdsLoader.Listener) obj);
                break;
            case 1:
                HlsInterstitialsAdsLoader.lambda$handleContentTimelineChanged$1((AdsMediaSource) this.f7396e, this.f7397f, (Timeline) this.f7398j, (HlsInterstitialsAdsLoader.Listener) obj);
                break;
            default:
                ((HlsInterstitialsAdsLoader.Listener) obj).onStart((MediaItem) this.f7396e, this.f7397f, (AdViewProvider) this.f7398j);
                break;
        }
    }
}
