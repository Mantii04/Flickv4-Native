package androidx.media3.exoplayer.source.preload;

import P3.w;
import androidx.media3.exoplayer.source.MediaSource;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7506b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BasePreloadManager f7507e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MediaSource f7508f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ w f7509j;

    public /* synthetic */ a(BasePreloadManager basePreloadManager, MediaSource mediaSource, w wVar, int i2) {
        this.f7506b = i2;
        this.f7507e = basePreloadManager;
        this.f7508f = mediaSource;
        this.f7509j = wVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7506b) {
            case 0:
                this.f7507e.lambda$onSkipped$8(this.f7508f, this.f7509j);
                break;
            default:
                this.f7507e.lambda$onCompleted$1(this.f7508f, this.f7509j);
                break;
        }
    }
}
