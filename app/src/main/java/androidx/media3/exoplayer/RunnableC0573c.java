package androidx.media3.exoplayer;

import androidx.media3.exoplayer.DefaultSuitableOutputChecker;
import androidx.media3.exoplayer.StreamVolumeManager;

/* renamed from: androidx.media3.exoplayer.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0573c implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7343b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7344e;

    public /* synthetic */ RunnableC0573c(Object obj, int i2) {
        this.f7343b = i2;
        this.f7344e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7343b) {
            case 0:
                ((DefaultSuitableOutputChecker.ImplApi23) this.f7344e).lambda$disable$2();
                break;
            case 1:
                ((DefaultSuitableOutputChecker.ImplApi35) this.f7344e).lambda$disable$2();
                break;
            case 2:
                ((ExoPlayerImpl) this.f7344e).lambda$new$3();
                break;
            case 3:
                ((StreamVolumeManager.VolumeChangeReceiver) this.f7344e).lambda$onReceive$0();
                break;
            default:
                ((MetadataRetrieverInternal) this.f7344e).lambda$close$0();
                break;
        }
    }
}
