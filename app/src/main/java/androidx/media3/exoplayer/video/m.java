package androidx.media3.exoplayer.video;

import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.video.VideoRendererEventListener;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7592b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ VideoRendererEventListener.EventDispatcher f7593e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DecoderCounters f7594f;

    public /* synthetic */ m(VideoRendererEventListener.EventDispatcher eventDispatcher, DecoderCounters decoderCounters, int i2) {
        this.f7592b = i2;
        this.f7593e = eventDispatcher;
        this.f7594f = decoderCounters;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7592b) {
            case 0:
                this.f7593e.lambda$enabled$0(this.f7594f);
                break;
            default:
                this.f7593e.lambda$disabled$8(this.f7594f);
                break;
        }
    }
}
