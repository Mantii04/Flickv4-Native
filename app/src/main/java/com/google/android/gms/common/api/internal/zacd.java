package com.google.android.gms.common.api.internal;

import android.os.SystemClock;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* loaded from: classes.dex */
final class zacd<T> implements OnCompleteListener<T> {

    /* renamed from: a, reason: collision with root package name */
    public final GoogleApiManager f10750a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10751b;

    /* renamed from: c, reason: collision with root package name */
    public final ApiKey f10752c;

    /* renamed from: d, reason: collision with root package name */
    public final long f10753d;

    /* renamed from: e, reason: collision with root package name */
    public final long f10754e;

    public zacd(GoogleApiManager googleApiManager, int i2, ApiKey apiKey, long j7, long j8) {
        this.f10750a = googleApiManager;
        this.f10751b = i2;
        this.f10752c = apiKey;
        this.f10753d = j7;
        this.f10754e = j8;
    }

    public static ConnectionTelemetryConfiguration a(zabq zabqVar, BaseGmsClient baseGmsClient, int i2) {
        ConnectionTelemetryConfiguration telemetryConfiguration = baseGmsClient.getTelemetryConfiguration();
        if (telemetryConfiguration == null || !telemetryConfiguration.getMethodInvocationTelemetryEnabled()) {
            return null;
        }
        int[] methodInvocationMethodKeyAllowlist = telemetryConfiguration.getMethodInvocationMethodKeyAllowlist();
        if (methodInvocationMethodKeyAllowlist == null) {
            int[] methodInvocationMethodKeyDisallowlist = telemetryConfiguration.getMethodInvocationMethodKeyDisallowlist();
            if (methodInvocationMethodKeyDisallowlist != null && ArrayUtils.contains(methodInvocationMethodKeyDisallowlist, i2)) {
                return null;
            }
        } else if (!ArrayUtils.contains(methodInvocationMethodKeyAllowlist, i2)) {
            return null;
        }
        if (zabqVar.f10735l < telemetryConfiguration.getMaxMethodInvocationsLogged()) {
            return telemetryConfiguration;
        }
        return null;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<T> task) {
        zabq zabqVar;
        int i2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        long j7;
        long j8;
        GoogleApiManager googleApiManager = this.f10750a;
        if (googleApiManager.a()) {
            RootTelemetryConfiguration config = RootTelemetryConfigManager.getInstance().getConfig();
            if ((config == null || config.getMethodInvocationTelemetryEnabled()) && (zabqVar = (zabq) googleApiManager.f10637s.get(this.f10752c)) != null && (zabqVar.zaf() instanceof BaseGmsClient)) {
                BaseGmsClient baseGmsClient = (BaseGmsClient) zabqVar.zaf();
                long j9 = this.f10753d;
                boolean z6 = j9 > 0;
                int gCoreServiceId = baseGmsClient.getGCoreServiceId();
                if (config != null) {
                    z6 &= config.getMethodTimingTelemetryEnabled();
                    int batchPeriodMillis = config.getBatchPeriodMillis();
                    int maxMethodInvocationsInBatch = config.getMaxMethodInvocationsInBatch();
                    i2 = config.getVersion();
                    if (baseGmsClient.hasConnectionInfo() && !baseGmsClient.isConnecting()) {
                        ConnectionTelemetryConfiguration a7 = a(zabqVar, baseGmsClient, this.f10751b);
                        if (a7 == null) {
                            return;
                        }
                        boolean z7 = a7.getMethodTimingTelemetryEnabled() && j9 > 0;
                        maxMethodInvocationsInBatch = a7.getMaxMethodInvocationsLogged();
                        z6 = z7;
                    }
                    i8 = batchPeriodMillis;
                    i7 = maxMethodInvocationsInBatch;
                } else {
                    i2 = 0;
                    i7 = 100;
                    i8 = 5000;
                }
                int i12 = -1;
                if (task.isSuccessful()) {
                    i11 = 0;
                    i10 = 0;
                } else if (task.isCanceled()) {
                    i10 = -1;
                    i11 = 100;
                } else {
                    Exception exception = task.getException();
                    if (exception instanceof ApiException) {
                        Status status = ((ApiException) exception).getStatus();
                        i9 = status.getStatusCode();
                        ConnectionResult connectionResult = status.getConnectionResult();
                        i10 = connectionResult == null ? -1 : connectionResult.getErrorCode();
                    } else {
                        i9 = 101;
                        i10 = -1;
                    }
                    i11 = i9;
                }
                if (z6) {
                    long currentTimeMillis = System.currentTimeMillis();
                    i12 = (int) (SystemClock.elapsedRealtime() - this.f10754e);
                    j7 = j9;
                    j8 = currentTimeMillis;
                } else {
                    j7 = 0;
                    j8 = 0;
                }
                int i13 = i12;
                com.google.android.gms.internal.base.zaq zaqVar = googleApiManager.f10641w;
                zaqVar.sendMessage(zaqVar.obtainMessage(18, new zace(new MethodInvocation(this.f10751b, i11, i10, j7, j8, null, null, gCoreServiceId, i13), i2, i8, i7)));
            }
        }
    }
}
