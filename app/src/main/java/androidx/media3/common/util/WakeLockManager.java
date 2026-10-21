package androidx.media3.common.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.os.PowerManager;
import java.util.concurrent.atomic.AtomicBoolean;

@UnstableApi
/* loaded from: classes.dex */
public final class WakeLockManager {
    private static final String TAG = "WakeLockManager";
    private static final int UNREACTIVE_WAKELOCK_HANDLER_RELEASE_DELAY_MS = 1000;
    private static final String WAKE_LOCK_TAG = "ExoPlayer:WakeLockManager";
    private boolean enabled;
    private final HandlerWrapper mainHandler;
    private boolean stayAwake;
    private final HandlerWrapper wakeLockHandler;
    private final WakeLockManagerInternal wakeLockManagerInternal;

    public static final class WakeLockManagerInternal {
        private final Context applicationContext;
        private PowerManager.WakeLock wakeLock;

        public WakeLockManagerInternal(Context context) {
            this.applicationContext = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void forceReleaseWakeLock(AtomicBoolean atomicBoolean) {
            if (atomicBoolean.get()) {
                new Thread(new g(1, this, atomicBoolean), WakeLockManager.WAKE_LOCK_TAG).start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: forceReleaseWakeLockInternal, reason: merged with bridge method [inline-methods] */
        public synchronized void lambda$forceReleaseWakeLock$0(AtomicBoolean atomicBoolean) {
            PowerManager.WakeLock wakeLock;
            if (atomicBoolean.get() && (wakeLock = this.wakeLock) != null) {
                wakeLock.release();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @SuppressLint({"WakelockTimeout"})
        public synchronized void updateWakeLock(boolean z6, boolean z7) {
            if (z6) {
                if (this.wakeLock == null) {
                    if (this.applicationContext.checkSelfPermission("android.permission.WAKE_LOCK") != 0) {
                        Log.w(WakeLockManager.TAG, "WAKE_LOCK permission not granted, can't acquire wake lock for playback");
                        return;
                    }
                    PowerManager powerManager = (PowerManager) this.applicationContext.getSystemService("power");
                    if (powerManager == null) {
                        Log.w(WakeLockManager.TAG, "PowerManager is null, therefore not creating the WakeLock.");
                        return;
                    } else {
                        PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, WakeLockManager.WAKE_LOCK_TAG);
                        this.wakeLock = newWakeLock;
                        newWakeLock.setReferenceCounted(false);
                    }
                }
            }
            if (this.wakeLock == null) {
                return;
            }
            if (WakeLockManager.shouldAcquireWakelock(z6, z7)) {
                this.wakeLock.acquire();
            } else {
                this.wakeLock.release();
            }
        }
    }

    public WakeLockManager(Context context, Looper looper, Clock clock) {
        this.wakeLockManagerInternal = new WakeLockManagerInternal(context.getApplicationContext());
        this.wakeLockHandler = clock.createHandler(looper, null);
        this.mainHandler = clock.createHandler(Looper.getMainLooper(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postUpdateWakeLock$0(boolean z6, boolean z7) {
        this.wakeLockManagerInternal.updateWakeLock(z6, z7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postUpdateWakeLock$1(AtomicBoolean atomicBoolean) {
        this.wakeLockManagerInternal.forceReleaseWakeLock(atomicBoolean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postUpdateWakeLock$2(AtomicBoolean atomicBoolean, boolean z6, boolean z7) {
        atomicBoolean.set(false);
        this.wakeLockManagerInternal.updateWakeLock(z6, z7);
    }

    private void postUpdateWakeLock(boolean z6, boolean z7) {
        if (shouldAcquireWakelock(z6, z7)) {
            this.wakeLockHandler.post(new j(0, this, z6, z7));
            return;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        this.mainHandler.postDelayed(new g(6, this, atomicBoolean), 1000L);
        this.wakeLockHandler.post(new k(this, atomicBoolean, z6, z7, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean shouldAcquireWakelock(boolean z6, boolean z7) {
        return z6 && z7;
    }

    public void setEnabled(boolean z6) {
        if (this.enabled == z6) {
            return;
        }
        this.enabled = z6;
        postUpdateWakeLock(z6, this.stayAwake);
    }

    public void setStayAwake(boolean z6) {
        if (this.stayAwake == z6) {
            return;
        }
        this.stayAwake = z6;
        if (this.enabled) {
            postUpdateWakeLock(true, z6);
        }
    }
}
