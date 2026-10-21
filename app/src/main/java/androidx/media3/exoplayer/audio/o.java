package androidx.media3.exoplayer.audio;

import androidx.media3.common.util.ListenerSet;

/* loaded from: classes.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7331b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7332e;

    public /* synthetic */ o(Object obj, int i2) {
        this.f7331b = i2;
        this.f7332e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7331b) {
            case 0:
                AudioTrackAudioOutput.lambda$releaseAudioTrackAsync$0((ListenerSet) this.f7332e);
                break;
            default:
                ((DefaultAudioSink) this.f7332e).maybeReportSkippedSilence();
                break;
        }
    }
}
