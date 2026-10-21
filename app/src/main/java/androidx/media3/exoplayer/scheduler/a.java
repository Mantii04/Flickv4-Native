package androidx.media3.exoplayer.scheduler;

import androidx.media3.exoplayer.scheduler.RequirementsWatcher;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7468b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RequirementsWatcher.NetworkCallback f7469e;

    public /* synthetic */ a(RequirementsWatcher.NetworkCallback networkCallback, int i2) {
        this.f7468b = i2;
        this.f7469e = networkCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7468b) {
            case 0:
                this.f7469e.lambda$postCheckRequirements$0();
                break;
            default:
                this.f7469e.lambda$postRecheckNotMetNetworkRequirements$1();
                break;
        }
    }
}
