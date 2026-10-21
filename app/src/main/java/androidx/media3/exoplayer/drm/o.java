package androidx.media3.exoplayer.drm;

import V3.M;

/* loaded from: classes.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7372b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ OfflineLicenseHelper f7373e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DrmSession f7374f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ M f7375j;

    public /* synthetic */ o(M m7, DrmSession drmSession, OfflineLicenseHelper offlineLicenseHelper) {
        this.f7372b = 1;
        this.f7373e = offlineLicenseHelper;
        this.f7374f = drmSession;
        this.f7375j = m7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7372b) {
            case 0:
                this.f7373e.lambda$getLicenseDurationRemainingSec$0(this.f7375j, this.f7374f);
                break;
            case 1:
                this.f7373e.lambda$acquireFirstSessionOnHandlerThread$3(this.f7374f, this.f7375j);
                break;
            default:
                this.f7373e.lambda$acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread$1(this.f7375j, this.f7374f);
                break;
        }
    }

    public /* synthetic */ o(OfflineLicenseHelper offlineLicenseHelper, M m7, DrmSession drmSession, int i2) {
        this.f7372b = i2;
        this.f7373e = offlineLicenseHelper;
        this.f7375j = m7;
        this.f7374f = drmSession;
    }
}
