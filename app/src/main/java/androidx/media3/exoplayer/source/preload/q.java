package androidx.media3.exoplayer.source.preload;

import androidx.media3.exoplayer.source.preload.PreCacheHelper;

/* loaded from: classes.dex */
public final /* synthetic */ class q implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7539b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PreCacheHelper.ReleasableExecutorSupplier f7540e;

    public /* synthetic */ q(PreCacheHelper.ReleasableExecutorSupplier releasableExecutorSupplier, int i2) {
        this.f7539b = i2;
        this.f7540e = releasableExecutorSupplier;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7539b) {
            case 0:
                this.f7540e.lambda$onExecutorReleased$0();
                break;
            default:
                this.f7540e.onExecutorReleased();
                break;
        }
    }
}
