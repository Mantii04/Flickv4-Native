package androidx.media3.exoplayer.drm;

import androidx.media3.exoplayer.drm.DefaultDrmSessionManager;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7361b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7362e;

    public /* synthetic */ d(Object obj, int i2) {
        this.f7361b = i2;
        this.f7362e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7361b) {
            case 0:
                ((DefaultDrmSessionManager.PreacquiredSessionReference) this.f7362e).lambda$release$1();
                break;
            default:
                ((DefaultDrmSession) this.f7362e).release(null);
                break;
        }
    }
}
