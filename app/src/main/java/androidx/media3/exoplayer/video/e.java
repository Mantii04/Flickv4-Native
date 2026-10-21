package androidx.media3.exoplayer.video;

import androidx.media3.common.VideoSize;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.video.DefaultVideoSink;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.VideoSink;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7576b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7577e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7578f;

    public /* synthetic */ e(int i2, Object obj, Object obj2) {
        this.f7576b = i2;
        this.f7578f = obj;
        this.f7577e = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7576b) {
            case 0:
                ((DefaultVideoSink.FrameRendererImpl) this.f7578f).lambda$onVideoSizeChanged$0((VideoSize) this.f7577e);
                break;
            case 1:
                ((VideoSink.Listener) this.f7578f).onVideoSizeChanged((VideoSize) this.f7577e);
                break;
            case 2:
                ((VideoRendererEventListener.EventDispatcher) this.f7578f).lambda$decoderReleased$7((String) this.f7577e);
                break;
            case 3:
                ((VideoRendererEventListener.EventDispatcher) this.f7578f).lambda$videoSizeChanged$5((VideoSize) this.f7577e);
                break;
            case 4:
                ((VideoRendererEventListener.EventDispatcher) this.f7578f).lambda$videoCodecError$9((Exception) this.f7577e);
                break;
            default:
                ((VideoRendererEventListener.EventDispatcher) this.f7578f).lambda$videoCodecParametersChanged$10((CodecParameters) this.f7577e);
                break;
        }
    }
}
