package androidx.media3.common.util;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Looper;
import java.util.concurrent.atomic.AtomicBoolean;

@UnstableApi
/* loaded from: classes.dex */
public final class WifiLockManager {
    private static final String TAG = "WifiLockManager";
    private static final int UNREACTIVE_WIFILOCK_HANDLER_RELEASE_DELAY_MS = 1000;
    private static final String WIFI_LOCK_TAG = "ExoPlayer:WifiLockManager";
    private boolean enabled;
    private final HandlerWrapper mainHandler;
    private boolean stayAwake;
    private final HandlerWrapper wifiLockHandler;
    private final WifiLockManagerInternal wifiLockManagerInternal;

    public static final class WifiLockManagerInternal {
        private final Context applicationContext;
        private WifiManager.WifiLock wifiLock;

        public WifiLockManagerInternal(Context context) {
            this.applicationContext = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void forceReleaseWifiLock(AtomicBoolean atomicBoolean) {
            if (atomicBoolean.get()) {
                new Thread(new g(2, this, atomicBoolean), WifiLockManager.WIFI_LOCK_TAG).start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: forceReleaseWifiLockInternal, reason: merged with bridge method [inline-methods] */
        public synchronized void lambda$forceReleaseWifiLock$0(AtomicBoolean atomicBoolean) {
            WifiManager.WifiLock wifiLock;
            if (atomicBoolean.get() && (wifiLock = this.wifiLock) != null) {
                wifiLock.release();
            }
        }

        public void updateWifiLock(boolean z6, boolean z7) {
            if (z6 && this.wifiLock == null) {
                if (this.applicationContext.checkSelfPermission("android.permission.WAKE_LOCK") != 0) {
                    Log.w(WifiLockManager.TAG, "WAKE_LOCK permission not granted, can't acquire wake lock for playback");
                    return;
                }
                WifiManager wifiManager = (WifiManager) this.applicationContext.getApplicationContext().getSystemService("wifi");
                if (wifiManager == null) {
                    Log.w(WifiLockManager.TAG, "WifiManager is null, therefore not creating the WifiLock.");
                    return;
                } else {
                    WifiManager.WifiLock createWifiLock = wifiManager.createWifiLock(3, WifiLockManager.WIFI_LOCK_TAG);
                    this.wifiLock = createWifiLock;
                    createWifiLock.setReferenceCounted(false);
                }
            }
            if (this.wifiLock == null) {
                return;
            }
            if (WifiLockManager.shouldAcquireWifilock(z6, z7)) {
                this.wifiLock.acquire();
            } else {
                this.wifiLock.release();
            }
        }
    }

    public WifiLockManager(Context context, Looper looper, Clock clock) {
        this.wifiLockManagerInternal = new WifiLockManagerInternal(context.getApplicationContext());
        this.wifiLockHandler = clock.createHandler(looper, null);
        this.mainHandler = clock.createHandler(Looper.getMainLooper(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postUpdateWifiLock$0(boolean z6, boolean z7) {
        this.wifiLockManagerInternal.updateWifiLock(z6, z7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postUpdateWifiLock$1(AtomicBoolean atomicBoolean) {
        this.wifiLockManagerInternal.forceReleaseWifiLock(atomicBoolean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postUpdateWifiLock$2(AtomicBoolean atomicBoolean, boolean z6, boolean z7) {
        atomicBoolean.set(false);
        this.wifiLockManagerInternal.updateWifiLock(z6, z7);
    }

    private void postUpdateWifiLock(boolean z6, boolean z7) {
        if (shouldAcquireWifilock(z6, z7)) {
            this.wifiLockHandler.post(new j(1, this, z6, z7));
            return;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        this.mainHandler.postDelayed(new g(7, this, atomicBoolean), 1000L);
        this.wifiLockHandler.post(new k(this, atomicBoolean, z6, z7, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean shouldAcquireWifilock(boolean z6, boolean z7) {
        return z6 && z7;
    }

    public void setEnabled(boolean z6) {
        if (this.enabled == z6) {
            return;
        }
        this.enabled = z6;
        postUpdateWifiLock(z6, this.stayAwake);
    }

    public void setStayAwake(boolean z6) {
        if (this.stayAwake == z6) {
            return;
        }
        this.stayAwake = z6;
        if (this.enabled) {
            postUpdateWifiLock(true, z6);
        }
    }
}
