package androidx.media3.exoplayer.audio;

import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.source.preload.PreloadMediaSource;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7310b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f7311e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7312f;

    public /* synthetic */ e(Object obj, long j7, int i2) {
        this.f7310b = i2;
        this.f7312f = obj;
        this.f7311e = j7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7310b) {
            case 0:
                ((AudioRendererEventListener.EventDispatcher) this.f7312f).lambda$positionAdvancing$3(this.f7311e);
                break;
            default:
                ((PreloadMediaSource) this.f7312f).lambda$preload$0(this.f7311e);
                break;
        }
    }
}
