package androidx.media3.exoplayer.source.preload;

import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.source.preload.PreCacheHelper;
import java.io.IOException;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7527b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PreCacheHelper.DownloadCallback f7528e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ IOException f7529f;

    public /* synthetic */ l(PreCacheHelper.DownloadCallback downloadCallback, IOException iOException, int i2) {
        this.f7527b = i2;
        this.f7528e = downloadCallback;
        this.f7529f = iOException;
    }

    @Override // androidx.media3.common.util.Consumer
    public final void accept(Object obj) {
        switch (this.f7527b) {
            case 0:
                this.f7528e.lambda$onDownloadStopped$2(this.f7529f, (PreCacheHelper.Listener) obj);
                break;
            default:
                this.f7528e.lambda$onPrepareError$1(this.f7529f, (PreCacheHelper.Listener) obj);
                break;
        }
    }
}
