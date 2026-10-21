package androidx.media3.common.util;

import P3.p;
import V3.F;
import V3.M;
import android.content.Context;
import androidx.media3.common.util.NetworkTypeObserver;
import androidx.media3.common.util.WakeLockManager;
import androidx.media3.common.util.WifiLockManager;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7131b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7132e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7133f;

    public /* synthetic */ g(int i2, Object obj, Object obj2) {
        this.f7131b = i2;
        this.f7132e = obj;
        this.f7133f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7131b) {
            case 0:
                ((NetworkTypeObserver.Receiver) this.f7132e).lambda$onReceive$0((Context) this.f7133f);
                break;
            case 1:
                ((WakeLockManager.WakeLockManagerInternal) this.f7132e).lambda$forceReleaseWakeLock$0((AtomicBoolean) this.f7133f);
                break;
            case 2:
                ((WifiLockManager.WifiLockManagerInternal) this.f7132e).lambda$forceReleaseWifiLock$0((AtomicBoolean) this.f7133f);
                break;
            case 3:
                ((BackgroundThreadStateHandler) this.f7132e).lambda$updateStateAsync$1((p) this.f7133f);
                break;
            case 4:
                ((NetworkTypeObserver) this.f7132e).lambda$new$0((Context) this.f7133f);
                break;
            case 5:
                Util.lambda$transformFutureAsync$1((M) this.f7132e, (F) this.f7133f);
                break;
            case 6:
                ((WakeLockManager) this.f7132e).lambda$postUpdateWakeLock$1((AtomicBoolean) this.f7133f);
                break;
            default:
                ((WifiLockManager) this.f7132e).lambda$postUpdateWifiLock$1((AtomicBoolean) this.f7133f);
                break;
        }
    }
}
