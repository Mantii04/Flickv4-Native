package androidx.media3.exoplayer.video;

import androidx.media3.exoplayer.video.VideoSink;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7583b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ VideoSink.Listener f7584e;

    public /* synthetic */ g(VideoSink.Listener listener, int i2) {
        this.f7583b = i2;
        this.f7584e = listener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7583b) {
            case 0:
                this.f7584e.onFrameDropped();
                break;
            case 1:
                this.f7584e.onFirstFrameRendered();
                break;
            default:
                this.f7584e.onFrameAvailableForRendering();
                break;
        }
    }
}
