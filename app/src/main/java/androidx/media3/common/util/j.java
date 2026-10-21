package androidx.media3.common.util;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7136b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f7137e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f7138f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f7139j;

    public /* synthetic */ j(int i2, Object obj, boolean z6, boolean z7) {
        this.f7136b = i2;
        this.f7139j = obj;
        this.f7137e = z6;
        this.f7138f = z7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7136b) {
            case 0:
                ((WakeLockManager) this.f7139j).lambda$postUpdateWakeLock$0(this.f7137e, this.f7138f);
                break;
            default:
                ((WifiLockManager) this.f7139j).lambda$postUpdateWifiLock$0(this.f7137e, this.f7138f);
                break;
        }
    }
}
