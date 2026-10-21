package com.google.android.gms.common.api.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

@KeepForSdk
/* loaded from: classes.dex */
public final class BackgroundDetector implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: m, reason: collision with root package name */
    public static final BackgroundDetector f10619m = new BackgroundDetector();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f10620b = new AtomicBoolean();

    /* renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f10621e = new AtomicBoolean();

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f10622f = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    public boolean f10623j = false;

    @KeepForSdk
    public interface BackgroundStateChangeListener {
        @KeepForSdk
        void onBackgroundStateChanged(boolean z6);
    }

    @KeepForSdk
    private BackgroundDetector() {
    }

    @KeepForSdk
    public static BackgroundDetector getInstance() {
        return f10619m;
    }

    @KeepForSdk
    public static void initialize(Application application) {
        BackgroundDetector backgroundDetector = f10619m;
        synchronized (backgroundDetector) {
            try {
                if (!backgroundDetector.f10623j) {
                    application.registerActivityLifecycleCallbacks(backgroundDetector);
                    application.registerComponentCallbacks(backgroundDetector);
                    backgroundDetector.f10623j = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(boolean z6) {
        synchronized (f10619m) {
            try {
                Iterator it = this.f10622f.iterator();
                while (it.hasNext()) {
                    ((BackgroundStateChangeListener) it.next()).onBackgroundStateChanged(z6);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @KeepForSdk
    public void addListener(BackgroundStateChangeListener backgroundStateChangeListener) {
        synchronized (f10619m) {
            this.f10622f.add(backgroundStateChangeListener);
        }
    }

    @KeepForSdk
    public boolean isInBackground() {
        return this.f10620b.get();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        AtomicBoolean atomicBoolean = this.f10621e;
        boolean compareAndSet = this.f10620b.compareAndSet(true, false);
        atomicBoolean.set(true);
        if (compareAndSet) {
            a(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        AtomicBoolean atomicBoolean = this.f10621e;
        boolean compareAndSet = this.f10620b.compareAndSet(true, false);
        atomicBoolean.set(true);
        if (compareAndSet) {
            a(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i2) {
        if (i2 == 20 && this.f10620b.compareAndSet(false, true)) {
            this.f10621e.set(true);
            a(true);
        }
    }

    @KeepForSdk
    @TargetApi(16)
    public boolean readCurrentStateIfPossible(boolean z6) {
        AtomicBoolean atomicBoolean = this.f10621e;
        if (!atomicBoolean.get()) {
            if (!PlatformVersion.isAtLeastJellyBean()) {
                return z6;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!atomicBoolean.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f10620b.set(true);
            }
        }
        return isInBackground();
    }
}
