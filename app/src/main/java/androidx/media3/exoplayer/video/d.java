package androidx.media3.exoplayer.video;

import androidx.media3.exoplayer.video.DefaultVideoSink;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7574b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DefaultVideoSink.FrameRendererImpl f7575e;

    public /* synthetic */ d(DefaultVideoSink.FrameRendererImpl frameRendererImpl, int i2) {
        this.f7574b = i2;
        this.f7575e = frameRendererImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7574b) {
            case 0:
                this.f7575e.lambda$renderFrame$1();
                break;
            default:
                this.f7575e.lambda$dropFrame$2();
                break;
        }
    }
}
