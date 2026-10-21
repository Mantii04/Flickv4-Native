package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes.dex */
public final class RootTelemetryConfigManager {

    /* renamed from: b, reason: collision with root package name */
    public static RootTelemetryConfigManager f10894b;

    /* renamed from: c, reason: collision with root package name */
    public static final RootTelemetryConfiguration f10895c = new RootTelemetryConfiguration(0, false, false, 0, 0);

    /* renamed from: a, reason: collision with root package name */
    public RootTelemetryConfiguration f10896a;

    private RootTelemetryConfigManager() {
    }

    @KeepForSdk
    public static synchronized RootTelemetryConfigManager getInstance() {
        RootTelemetryConfigManager rootTelemetryConfigManager;
        synchronized (RootTelemetryConfigManager.class) {
            try {
                if (f10894b == null) {
                    f10894b = new RootTelemetryConfigManager();
                }
                rootTelemetryConfigManager = f10894b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return rootTelemetryConfigManager;
    }

    @KeepForSdk
    public RootTelemetryConfiguration getConfig() {
        return this.f10896a;
    }

    public final synchronized void zza(RootTelemetryConfiguration rootTelemetryConfiguration) {
        if (rootTelemetryConfiguration == null) {
            this.f10896a = f10895c;
            return;
        }
        RootTelemetryConfiguration rootTelemetryConfiguration2 = this.f10896a;
        if (rootTelemetryConfiguration2 == null || rootTelemetryConfiguration2.getVersion() < rootTelemetryConfiguration.getVersion()) {
            this.f10896a = rootTelemetryConfiguration;
        }
    }
}
