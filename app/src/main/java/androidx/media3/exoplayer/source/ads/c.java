package androidx.media3.exoplayer.source.ads;

import androidx.media3.exoplayer.source.ads.AdsMediaSource;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7472b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AdsMediaSource f7473e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AdsMediaSource.ComponentListener f7474f;

    public /* synthetic */ c(AdsMediaSource adsMediaSource, AdsMediaSource.ComponentListener componentListener, int i2) {
        this.f7472b = i2;
        this.f7473e = adsMediaSource;
        this.f7474f = componentListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7472b) {
            case 0:
                this.f7473e.lambda$prepareSourceInternal$0(this.f7474f);
                break;
            default:
                this.f7473e.lambda$releaseSourceInternal$1(this.f7474f);
                break;
        }
    }
}
