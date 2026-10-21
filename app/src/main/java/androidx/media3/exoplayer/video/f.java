package androidx.media3.exoplayer.video;

import androidx.media3.common.Format;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.VideoSink;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7579b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7580e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7581f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f7582j;

    public /* synthetic */ f(Object obj, Object obj2, Object obj3, int i2) {
        this.f7579b = i2;
        this.f7580e = obj;
        this.f7581f = obj2;
        this.f7582j = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7579b) {
            case 0:
                ((PlaybackVideoGraphWrapper.InputVideoSink) this.f7580e).lambda$onError$1((VideoSink.Listener) this.f7581f, (VideoFrameProcessingException) this.f7582j);
                break;
            default:
                ((VideoRendererEventListener.EventDispatcher) this.f7580e).lambda$inputFormatChanged$2((Format) this.f7581f, (DecoderReuseEvaluation) this.f7582j);
                break;
        }
    }
}
