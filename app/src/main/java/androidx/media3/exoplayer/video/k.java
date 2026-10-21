package androidx.media3.exoplayer.video;

import androidx.media3.exoplayer.video.VideoRendererEventListener;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7585b = 0;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ VideoRendererEventListener.EventDispatcher f7586e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ long f7587f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f7588j;

    public /* synthetic */ k(VideoRendererEventListener.EventDispatcher eventDispatcher, int i2, long j7) {
        this.f7586e = eventDispatcher;
        this.f7588j = i2;
        this.f7587f = j7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7585b) {
            case 0:
                this.f7586e.lambda$droppedFrames$3(this.f7588j, this.f7587f);
                break;
            default:
                this.f7586e.lambda$reportVideoFrameProcessingOffset$4(this.f7587f, this.f7588j);
                break;
        }
    }

    public /* synthetic */ k(VideoRendererEventListener.EventDispatcher eventDispatcher, long j7, int i2) {
        this.f7586e = eventDispatcher;
        this.f7587f = j7;
        this.f7588j = i2;
    }
}
