package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements MediaCodec.OnFrameRenderedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7434a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MediaCodecAdapter.OnFrameRenderedListener f7435b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaCodecAdapter f7436c;

    public /* synthetic */ b(MediaCodecAdapter mediaCodecAdapter, MediaCodecAdapter.OnFrameRenderedListener onFrameRenderedListener, int i2) {
        this.f7434a = i2;
        this.f7436c = mediaCodecAdapter;
        this.f7435b = onFrameRenderedListener;
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(MediaCodec mediaCodec, long j7, long j8) {
        switch (this.f7434a) {
            case 0:
                ((AsynchronousMediaCodecAdapter) this.f7436c).lambda$setOnFrameRenderedListener$1(this.f7435b, mediaCodec, j7, j8);
                break;
            default:
                ((SynchronousMediaCodecAdapter) this.f7436c).lambda$setOnFrameRenderedListener$0(this.f7435b, mediaCodec, j7, j8);
                break;
        }
    }
}
