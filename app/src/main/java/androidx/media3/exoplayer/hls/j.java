package androidx.media3.exoplayer.hls;

import androidx.media3.common.MediaItem;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.hls.HlsInterstitialsAdsLoader;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;
import java.io.IOException;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7410b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7411e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f7412f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f7413j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ Object f7414m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ Object f7415n;

    public /* synthetic */ j(Object obj, Object obj2, int i2, int i7, Object obj3, int i8) {
        this.f7410b = i8;
        this.f7414m = obj;
        this.f7411e = obj2;
        this.f7412f = i2;
        this.f7413j = i7;
        this.f7415n = obj3;
    }

    @Override // androidx.media3.common.util.Consumer
    public final void accept(Object obj) {
        switch (this.f7410b) {
            case 0:
                ((HlsInterstitialsAdsLoader.Listener) obj).onMetadata((MediaItem) this.f7414m, this.f7411e, this.f7412f, this.f7413j, (Metadata) this.f7415n);
                break;
            default:
                AdsMediaSource adsMediaSource = (AdsMediaSource) this.f7414m;
                int i2 = this.f7412f;
                int i7 = this.f7413j;
                HlsInterstitialsAdsLoader.lambda$handlePrepareError$3(adsMediaSource, this.f7411e, i2, i7, (IOException) this.f7415n, (HlsInterstitialsAdsLoader.Listener) obj);
                break;
        }
    }
}
