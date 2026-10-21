package androidx.media3.exoplayer.video;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Executor {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7571b;

    public /* synthetic */ a(int i2) {
        this.f7571b = i2;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f7571b) {
            case 0:
                DefaultVideoSink.lambda$new$0(runnable);
                break;
            default:
                PlaybackVideoGraphWrapper.lambda$static$0(runnable);
                break;
        }
    }
}
