package androidx.media3.exoplayer.source.preload;

import androidx.media3.exoplayer.source.preload.PreCacheHelper;

/* loaded from: classes.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7536b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PreCacheHelper.DownloadCallback f7537e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PreCacheHelper.Task f7538f;

    public /* synthetic */ o(PreCacheHelper.DownloadCallback downloadCallback, PreCacheHelper.Task task, int i2) {
        this.f7536b = i2;
        this.f7537e = downloadCallback;
        this.f7538f = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7536b) {
            case 0:
                this.f7537e.lambda$onDownloadProgress$5(this.f7538f);
                break;
            default:
                this.f7537e.lambda$onDownloadStopped$3(this.f7538f);
                break;
        }
    }
}
