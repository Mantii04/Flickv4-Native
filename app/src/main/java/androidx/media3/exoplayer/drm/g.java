package androidx.media3.exoplayer.drm;

import androidx.media3.exoplayer.drm.DrmSessionEventListener;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7363b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DrmSessionEventListener.EventDispatcher f7364e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DrmSessionEventListener f7365f;

    public /* synthetic */ g(DrmSessionEventListener.EventDispatcher eventDispatcher, DrmSessionEventListener drmSessionEventListener, int i2) {
        this.f7363b = i2;
        this.f7364e = eventDispatcher;
        this.f7365f = drmSessionEventListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7363b) {
            case 0:
                this.f7364e.lambda$drmKeysRemoved$4(this.f7365f);
                break;
            case 1:
                this.f7364e.lambda$drmKeysRestored$3(this.f7365f);
                break;
            default:
                this.f7364e.lambda$drmSessionReleased$5(this.f7365f);
                break;
        }
    }
}
