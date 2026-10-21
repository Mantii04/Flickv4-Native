package androidx.media3.exoplayer.video;

import androidx.media3.exoplayer.video.VideoFrameReleaseHelper;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7572b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7573e;

    public /* synthetic */ c(Object obj, int i2) {
        this.f7572b = i2;
        this.f7573e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7572b) {
            case 0:
                ((DefaultVideoSink) this.f7573e).lambda$handleInputFrame$2();
                break;
            case 1:
                ((VideoFrameReleaseHelper.VSyncSamplerV33) this.f7573e).lambda$onVsync$0();
                break;
            default:
                ((PlaybackVideoGraphWrapper) this.f7573e).lambda$flush$1();
                break;
        }
    }
}
