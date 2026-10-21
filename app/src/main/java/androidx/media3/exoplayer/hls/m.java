package androidx.media3.exoplayer.hls;

import androidx.media3.exoplayer.hls.HlsSampleStreamWrapper;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7417b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7418e;

    public /* synthetic */ m(Object obj, int i2) {
        this.f7417b = i2;
        this.f7418e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7417b) {
            case 0:
                ((HlsSampleStreamWrapper) this.f7418e).maybeFinishPrepare();
                break;
            case 1:
                ((HlsSampleStreamWrapper) this.f7418e).onTracksEnded();
                break;
            default:
                ((HlsSampleStreamWrapper.Callback) this.f7418e).onPrepared();
                break;
        }
    }
}
