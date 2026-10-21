package androidx.media3.exoplayer.drm;

import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7356b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7357e;

    public /* synthetic */ b(Object obj, int i2) {
        this.f7356b = i2;
        this.f7357e = obj;
    }

    @Override // androidx.media3.common.util.Consumer
    public final void accept(Object obj) {
        switch (this.f7356b) {
            case 0:
                ((DrmSessionEventListener.EventDispatcher) obj).drmKeysLoaded((KeyRequestInfo) this.f7357e);
                break;
            default:
                DefaultDrmSession.lambda$onError$2((Exception) this.f7357e, (DrmSessionEventListener.EventDispatcher) obj);
                break;
        }
    }
}
