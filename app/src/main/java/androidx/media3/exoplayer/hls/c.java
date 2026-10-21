package androidx.media3.exoplayer.hls;

import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.PlayerMessage;
import androidx.media3.exoplayer.hls.HlsInterstitialsAdsLoader;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Consumer, PlayerMessage.Target {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7390b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7391e;

    public /* synthetic */ c(Object obj, int i2) {
        this.f7390b = i2;
        this.f7391e = obj;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        switch (this.f7390b) {
            case 0:
                HlsInterstitialsAdsLoader.lambda$startLoadingAssetList$5((HlsInterstitialsAdsLoader.AssetListData) this.f7391e, (HlsInterstitialsAdsLoader.Listener) obj);
                break;
            default:
                ((HlsInterstitialsAdsLoader.LoaderCallback) this.f7391e).lambda$onLoadCompleted$0((HlsInterstitialsAdsLoader.Listener) obj);
                break;
        }
    }

    @Override // androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i2, Object obj) {
        ((HlsInterstitialsAdsLoader.RunnableAtPosition) this.f7391e).run();
    }
}
