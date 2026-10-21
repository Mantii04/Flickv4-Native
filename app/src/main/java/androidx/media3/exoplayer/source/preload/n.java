package androidx.media3.exoplayer.source.preload;

import androidx.media3.common.Timeline;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.source.preload.PreCacheHelper;

/* loaded from: classes.dex */
public final /* synthetic */ class n implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7533b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7534e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7535f;

    public /* synthetic */ n(int i2, Object obj, Object obj2) {
        this.f7533b = i2;
        this.f7534e = obj;
        this.f7535f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7533b) {
            case 0:
                ((PreCacheHelper.DownloadCallback) this.f7534e).lambda$notifyListeners$6((Consumer) this.f7535f);
                break;
            default:
                ((PreloadMediaSource) this.f7534e).lambda$onChildSourceInfoRefreshed$2((Timeline) this.f7535f);
                break;
        }
    }
}
