package androidx.media3.exoplayer.source.preload;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.source.preload.BasePreloadManager;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7512b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BasePreloadManager.MediaSourceHolder f7513e;

    public /* synthetic */ c(BasePreloadManager.MediaSourceHolder mediaSourceHolder, int i2) {
        this.f7512b = i2;
        this.f7513e = mediaSourceHolder;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.f7512b) {
            case 0:
                BasePreloadManager.lambda$onCompleted$0(this.f7513e, (PreloadManagerListener) obj);
                break;
            default:
                BasePreloadManager.lambda$onCompleted$2(this.f7513e, (PreloadManagerListener) obj);
                break;
        }
    }
}
