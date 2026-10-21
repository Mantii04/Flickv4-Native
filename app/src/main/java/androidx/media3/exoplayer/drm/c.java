package androidx.media3.exoplayer.drm;

import V3.M;
import androidx.media3.common.Format;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManager;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7358b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7359e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7360f;

    public /* synthetic */ c(int i2, Object obj, Object obj2) {
        this.f7358b = i2;
        this.f7359e = obj;
        this.f7360f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7358b) {
            case 0:
                ((DefaultDrmSessionManager.PreacquiredSessionReference) this.f7359e).lambda$acquire$0((Format) this.f7360f);
                break;
            default:
                ((OfflineLicenseHelper) this.f7359e).lambda$releaseManagerOnHandlerThread$4((M) this.f7360f);
                break;
        }
    }
}
