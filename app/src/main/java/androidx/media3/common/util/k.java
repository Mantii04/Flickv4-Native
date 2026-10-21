package androidx.media3.common.util;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7140b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f7141e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f7142f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f7143j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ Object f7144m;

    public /* synthetic */ k(Object obj, AtomicBoolean atomicBoolean, boolean z6, boolean z7, int i2) {
        this.f7140b = i2;
        this.f7144m = obj;
        this.f7141e = atomicBoolean;
        this.f7142f = z6;
        this.f7143j = z7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7140b) {
            case 0:
                ((WakeLockManager) this.f7144m).lambda$postUpdateWakeLock$2(this.f7141e, this.f7142f, this.f7143j);
                break;
            default:
                ((WifiLockManager) this.f7144m).lambda$postUpdateWifiLock$2(this.f7141e, this.f7142f, this.f7143j);
                break;
        }
    }
}
