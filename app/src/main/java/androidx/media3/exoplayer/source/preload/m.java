package androidx.media3.exoplayer.source.preload;

import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.source.preload.PreCacheHelper;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7530b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PreCacheHelper.DownloadCallback f7531e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7532f;

    public /* synthetic */ m(PreCacheHelper.DownloadCallback downloadCallback, Object obj, int i2) {
        this.f7530b = i2;
        this.f7531e = downloadCallback;
        this.f7532f = obj;
    }

    @Override // androidx.media3.common.util.Consumer
    public final void accept(Object obj) {
        PreCacheHelper.Listener listener = (PreCacheHelper.Listener) obj;
        switch (this.f7530b) {
            case 0:
                this.f7531e.lambda$onPrepared$0((MediaItem) this.f7532f, listener);
                break;
            default:
                this.f7531e.lambda$onDownloadProgress$4((PreCacheHelper.Task) this.f7532f, listener);
                break;
        }
    }
}
