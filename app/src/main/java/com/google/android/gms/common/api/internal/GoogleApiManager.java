package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.media3.exoplayer.Renderer;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import p.i;

@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public class GoogleApiManager implements Handler.Callback {

    /* renamed from: B, reason: collision with root package name */
    public static GoogleApiManager f10625B;

    /* renamed from: f, reason: collision with root package name */
    public TelemetryData f10630f;

    /* renamed from: j, reason: collision with root package name */
    public TelemetryLoggingClient f10631j;

    /* renamed from: m, reason: collision with root package name */
    public final Context f10632m;

    /* renamed from: n, reason: collision with root package name */
    public final GoogleApiAvailability f10633n;

    /* renamed from: p, reason: collision with root package name */
    public final com.google.android.gms.common.internal.zal f10634p;

    /* renamed from: w, reason: collision with root package name */
    public final com.google.android.gms.internal.base.zaq f10641w;

    /* renamed from: x, reason: collision with root package name */
    public volatile boolean f10642x;

    /* renamed from: y, reason: collision with root package name */
    public static final Status f10626y = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: z, reason: collision with root package name */
    public static final Status f10627z = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: A, reason: collision with root package name */
    public static final Object f10624A = new Object();

    /* renamed from: b, reason: collision with root package name */
    public long f10628b = Renderer.DEFAULT_DURATION_TO_PROGRESS_US;

    /* renamed from: e, reason: collision with root package name */
    public boolean f10629e = false;

    /* renamed from: q, reason: collision with root package name */
    public final AtomicInteger f10635q = new AtomicInteger(1);

    /* renamed from: r, reason: collision with root package name */
    public final AtomicInteger f10636r = new AtomicInteger(0);

    /* renamed from: s, reason: collision with root package name */
    public final ConcurrentHashMap f10637s = new ConcurrentHashMap(5, 0.75f, 1);

    /* renamed from: t, reason: collision with root package name */
    public zaae f10638t = null;

    /* renamed from: u, reason: collision with root package name */
    public final i f10639u = new i();

    /* renamed from: v, reason: collision with root package name */
    public final i f10640v = new i();

    public GoogleApiManager(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.f10642x = true;
        this.f10632m = context;
        com.google.android.gms.internal.base.zaq zaqVar = new com.google.android.gms.internal.base.zaq(looper, this);
        this.f10641w = zaqVar;
        this.f10633n = googleApiAvailability;
        this.f10634p = new com.google.android.gms.common.internal.zal(googleApiAvailability);
        if (DeviceProperties.isAuto(context)) {
            this.f10642x = false;
        }
        zaqVar.sendMessage(zaqVar.obtainMessage(6));
    }

    public static Status b(ApiKey apiKey, ConnectionResult connectionResult) {
        String zab = apiKey.zab();
        String valueOf = String.valueOf(connectionResult);
        StringBuilder sb = new StringBuilder(String.valueOf(zab).length() + 63 + valueOf.length());
        sb.append("API: ");
        sb.append(zab);
        sb.append(" is not available on this device. Connection failed with: ");
        sb.append(valueOf);
        return new Status(connectionResult, sb.toString());
    }

    public static GoogleApiManager zam(Context context) {
        GoogleApiManager googleApiManager;
        synchronized (f10624A) {
            try {
                if (f10625B == null) {
                    f10625B = new GoogleApiManager(context.getApplicationContext(), GmsClientSupervisor.getOrStartHandlerThread().getLooper(), GoogleApiAvailability.getInstance());
                }
                googleApiManager = f10625B;
            } catch (Throwable th) {
                throw th;
            }
        }
        return googleApiManager;
    }

    public final boolean a() {
        if (this.f10629e) {
            return false;
        }
        RootTelemetryConfiguration config = RootTelemetryConfigManager.getInstance().getConfig();
        if (config != null && !config.getMethodInvocationTelemetryEnabled()) {
            return false;
        }
        int zaa = this.f10634p.zaa(this.f10632m, 203400000);
        return zaa == -1 || zaa == 0;
    }

    public final zabq c(GoogleApi googleApi) {
        ApiKey apiKey = googleApi.getApiKey();
        ConcurrentHashMap concurrentHashMap = this.f10637s;
        zabq zabqVar = (zabq) concurrentHashMap.get(apiKey);
        if (zabqVar == null) {
            zabqVar = new zabq(this, googleApi);
            concurrentHashMap.put(apiKey, zabqVar);
        }
        if (zabqVar.zaz()) {
            this.f10640v.add(apiKey);
        }
        zabqVar.zao();
        return zabqVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:9:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(com.google.android.gms.tasks.TaskCompletionSource r9, int r10, com.google.android.gms.common.api.GoogleApi r11) {
        /*
            r8 = this;
            if (r10 == 0) goto L8b
            com.google.android.gms.common.api.internal.ApiKey r3 = r11.getApiKey()
            boolean r11 = r8.a()
            r0 = 0
            if (r11 != 0) goto L10
        Ld:
            r1 = r8
            goto L77
        L10:
            com.google.android.gms.common.internal.RootTelemetryConfigManager r11 = com.google.android.gms.common.internal.RootTelemetryConfigManager.getInstance()
            com.google.android.gms.common.internal.RootTelemetryConfiguration r11 = r11.getConfig()
            r1 = 1
            if (r11 == 0) goto L5d
            boolean r2 = r11.getMethodInvocationTelemetryEnabled()
            if (r2 != 0) goto L22
            goto Ld
        L22:
            boolean r11 = r11.getMethodTimingTelemetryEnabled()
            java.util.concurrent.ConcurrentHashMap r2 = r8.f10637s
            java.lang.Object r2 = r2.get(r3)
            com.google.android.gms.common.api.internal.zabq r2 = (com.google.android.gms.common.api.internal.zabq) r2
            if (r2 == 0) goto L5c
            com.google.android.gms.common.api.Api$Client r4 = r2.zaf()
            boolean r4 = r4 instanceof com.google.android.gms.common.internal.BaseGmsClient
            if (r4 != 0) goto L39
            goto Ld
        L39:
            com.google.android.gms.common.api.Api$Client r4 = r2.zaf()
            com.google.android.gms.common.internal.BaseGmsClient r4 = (com.google.android.gms.common.internal.BaseGmsClient) r4
            boolean r5 = r4.hasConnectionInfo()
            if (r5 == 0) goto L5c
            boolean r5 = r4.isConnecting()
            if (r5 != 0) goto L5c
            com.google.android.gms.common.internal.ConnectionTelemetryConfiguration r11 = com.google.android.gms.common.api.internal.zacd.a(r2, r4, r10)
            if (r11 != 0) goto L52
            goto Ld
        L52:
            int r0 = r2.f10735l
            int r0 = r0 + r1
            r2.f10735l = r0
            boolean r1 = r11.getMethodTimingTelemetryEnabled()
            goto L5d
        L5c:
            r1 = r11
        L5d:
            com.google.android.gms.common.api.internal.zacd r0 = new com.google.android.gms.common.api.internal.zacd
            r4 = 0
            if (r1 == 0) goto L68
            long r6 = java.lang.System.currentTimeMillis()
            goto L69
        L68:
            r6 = r4
        L69:
            if (r1 == 0) goto L6f
            long r4 = android.os.SystemClock.elapsedRealtime()
        L6f:
            r1 = r6
            r6 = r4
            r4 = r1
            r1 = r8
            r2 = r10
            r0.<init>(r1, r2, r3, r4, r6)
        L77:
            if (r0 == 0) goto L8c
            com.google.android.gms.tasks.Task r9 = r9.getTask()
            com.google.android.gms.internal.base.zaq r10 = r1.f10641w
            r10.getClass()
            com.google.android.gms.common.api.internal.zabk r11 = new com.google.android.gms.common.api.internal.zabk
            r11.<init>()
            r9.addOnCompleteListener(r11, r0)
            return
        L8b:
            r1 = r8
        L8c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.GoogleApiManager.d(com.google.android.gms.tasks.TaskCompletionSource, int, com.google.android.gms.common.api.GoogleApi):void");
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        Feature[] zab;
        int i2 = message.what;
        com.google.android.gms.internal.base.zaq zaqVar = this.f10641w;
        ConcurrentHashMap concurrentHashMap = this.f10637s;
        Context context = this.f10632m;
        zabq zabqVar = null;
        switch (i2) {
            case 1:
                this.f10628b = true == ((Boolean) message.obj).booleanValue() ? Renderer.DEFAULT_DURATION_TO_PROGRESS_US : 300000L;
                zaqVar.removeMessages(12);
                Iterator it = concurrentHashMap.keySet().iterator();
                while (it.hasNext()) {
                    zaqVar.sendMessageDelayed(zaqVar.obtainMessage(12, (ApiKey) it.next()), this.f10628b);
                }
                return true;
            case 2:
                zal zalVar = (zal) message.obj;
                for (ApiKey<?> apiKey : zalVar.zab()) {
                    zabq zabqVar2 = (zabq) concurrentHashMap.get(apiKey);
                    if (zabqVar2 == null) {
                        zalVar.zac(apiKey, new ConnectionResult(13), null);
                        return true;
                    }
                    if (zabqVar2.f10725b.isConnected()) {
                        zalVar.zac(apiKey, ConnectionResult.f10550m, zabqVar2.zaf().getEndpointPackageName());
                    } else {
                        ConnectionResult zad = zabqVar2.zad();
                        if (zad != null) {
                            zalVar.zac(apiKey, zad, null);
                        } else {
                            zabqVar2.zat(zalVar);
                            zabqVar2.zao();
                        }
                    }
                }
                return true;
            case 3:
                for (zabq zabqVar3 : concurrentHashMap.values()) {
                    zabqVar3.zan();
                    zabqVar3.zao();
                }
                return true;
            case 4:
            case 8:
            case 13:
                zach zachVar = (zach) message.obj;
                zabq zabqVar4 = (zabq) concurrentHashMap.get(zachVar.f10764c.getApiKey());
                if (zabqVar4 == null) {
                    zabqVar4 = c(zachVar.f10764c);
                }
                boolean zaz = zabqVar4.zaz();
                zai zaiVar = zachVar.f10762a;
                if (!zaz || this.f10636r.get() == zachVar.f10763b) {
                    zabqVar4.zap(zaiVar);
                    return true;
                }
                zaiVar.zad(f10626y);
                zabqVar4.zav();
                return true;
            case 5:
                int i7 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator it2 = concurrentHashMap.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        zabq zabqVar5 = (zabq) it2.next();
                        if (zabqVar5.zab() == i7) {
                            zabqVar = zabqVar5;
                        }
                    }
                }
                if (zabqVar == null) {
                    StringBuilder sb = new StringBuilder(76);
                    sb.append("Could not find API instance ");
                    sb.append(i7);
                    sb.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb.toString(), new Exception());
                    return true;
                }
                if (connectionResult.getErrorCode() != 13) {
                    zabqVar.c(b(zabqVar.f10726c, connectionResult));
                    return true;
                }
                String errorString = this.f10633n.getErrorString(connectionResult.getErrorCode());
                String errorMessage = connectionResult.getErrorMessage();
                StringBuilder sb2 = new StringBuilder(String.valueOf(errorString).length() + 69 + String.valueOf(errorMessage).length());
                sb2.append("Error resolution was canceled by the user, original error message: ");
                sb2.append(errorString);
                sb2.append(": ");
                sb2.append(errorMessage);
                zabqVar.c(new Status(17, sb2.toString()));
                return true;
            case 6:
                if (context.getApplicationContext() instanceof Application) {
                    BackgroundDetector.initialize((Application) context.getApplicationContext());
                    BackgroundDetector.getInstance().addListener(new zabl(this));
                    if (!BackgroundDetector.getInstance().readCurrentStateIfPossible(true)) {
                        this.f10628b = 300000L;
                        return true;
                    }
                }
                return true;
            case 7:
                c((GoogleApi) message.obj);
                return true;
            case 9:
                if (concurrentHashMap.containsKey(message.obj)) {
                    ((zabq) concurrentHashMap.get(message.obj)).zau();
                    return true;
                }
                return true;
            case 10:
                i iVar = this.f10640v;
                Iterator it3 = iVar.iterator();
                while (it3.hasNext()) {
                    zabq zabqVar6 = (zabq) concurrentHashMap.remove((ApiKey) it3.next());
                    if (zabqVar6 != null) {
                        zabqVar6.zav();
                    }
                }
                iVar.clear();
                return true;
            case 11:
                if (concurrentHashMap.containsKey(message.obj)) {
                    ((zabq) concurrentHashMap.get(message.obj)).zaw();
                    return true;
                }
                return true;
            case 12:
                if (concurrentHashMap.containsKey(message.obj)) {
                    ((zabq) concurrentHashMap.get(message.obj)).zaA();
                    return true;
                }
                return true;
            case 14:
                zaaf zaafVar = (zaaf) message.obj;
                ApiKey<?> zaa = zaafVar.zaa();
                if (concurrentHashMap.containsKey(zaa)) {
                    zaafVar.zab().setResult(Boolean.valueOf(((zabq) concurrentHashMap.get(zaa)).k(false)));
                    return true;
                }
                zaafVar.zab().setResult(Boolean.FALSE);
                return true;
            case 15:
                zabs zabsVar = (zabs) message.obj;
                if (concurrentHashMap.containsKey(zabsVar.f10737a)) {
                    zabq zabqVar7 = (zabq) concurrentHashMap.get(zabsVar.f10737a);
                    if (zabqVar7.f10733j.contains(zabsVar) && !zabqVar7.f10732i) {
                        if (zabqVar7.f10725b.isConnected()) {
                            zabqVar7.e();
                            return true;
                        }
                        zabqVar7.zao();
                        return true;
                    }
                }
                return true;
            case 16:
                zabs zabsVar2 = (zabs) message.obj;
                if (concurrentHashMap.containsKey(zabsVar2.f10737a)) {
                    zabq<?> zabqVar8 = (zabq) concurrentHashMap.get(zabsVar2.f10737a);
                    if (zabqVar8.f10733j.remove(zabsVar2)) {
                        GoogleApiManager googleApiManager = zabqVar8.f10736m;
                        googleApiManager.f10641w.removeMessages(15, zabsVar2);
                        googleApiManager.f10641w.removeMessages(16, zabsVar2);
                        LinkedList linkedList = zabqVar8.f10724a;
                        ArrayList arrayList = new ArrayList(linkedList.size());
                        Iterator it4 = linkedList.iterator();
                        while (true) {
                            boolean hasNext = it4.hasNext();
                            Feature feature = zabsVar2.f10738b;
                            if (hasNext) {
                                zai zaiVar2 = (zai) it4.next();
                                if ((zaiVar2 instanceof zac) && (zab = ((zac) zaiVar2).zab(zabqVar8)) != null && ArrayUtils.contains(zab, feature)) {
                                    arrayList.add(zaiVar2);
                                }
                            } else {
                                int size = arrayList.size();
                                for (int i8 = 0; i8 < size; i8++) {
                                    zai zaiVar3 = (zai) arrayList.get(i8);
                                    linkedList.remove(zaiVar3);
                                    zaiVar3.zae(new UnsupportedApiCallException(feature));
                                }
                            }
                        }
                    }
                }
                return true;
            case 17:
                TelemetryData telemetryData = this.f10630f;
                if (telemetryData != null) {
                    if (telemetryData.zaa() > 0 || a()) {
                        if (this.f10631j == null) {
                            this.f10631j = TelemetryLogging.getClient(context);
                        }
                        this.f10631j.log(telemetryData);
                    }
                    this.f10630f = null;
                    return true;
                }
                return true;
            case 18:
                zace zaceVar = (zace) message.obj;
                long j7 = zaceVar.f10757c;
                MethodInvocation methodInvocation = zaceVar.f10755a;
                int i9 = zaceVar.f10756b;
                if (j7 == 0) {
                    TelemetryData telemetryData2 = new TelemetryData(i9, Arrays.asList(methodInvocation));
                    if (this.f10631j == null) {
                        this.f10631j = TelemetryLogging.getClient(context);
                    }
                    this.f10631j.log(telemetryData2);
                    return true;
                }
                TelemetryData telemetryData3 = this.f10630f;
                if (telemetryData3 != null) {
                    List<MethodInvocation> zab2 = telemetryData3.zab();
                    if (telemetryData3.zaa() != i9 || (zab2 != null && zab2.size() >= zaceVar.f10758d)) {
                        zaqVar.removeMessages(17);
                        TelemetryData telemetryData4 = this.f10630f;
                        if (telemetryData4 != null) {
                            if (telemetryData4.zaa() > 0 || a()) {
                                if (this.f10631j == null) {
                                    this.f10631j = TelemetryLogging.getClient(context);
                                }
                                this.f10631j.log(telemetryData4);
                            }
                            this.f10630f = null;
                        }
                    } else {
                        this.f10630f.zac(methodInvocation);
                    }
                }
                if (this.f10630f == null) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(methodInvocation);
                    this.f10630f = new TelemetryData(i9, arrayList2);
                    zaqVar.sendMessageDelayed(zaqVar.obtainMessage(17), zaceVar.f10757c);
                    return true;
                }
                return true;
            case 19:
                this.f10629e = false;
                return true;
            default:
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i2);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
    }

    public final void zaA() {
        com.google.android.gms.internal.base.zaq zaqVar = this.f10641w;
        zaqVar.sendMessage(zaqVar.obtainMessage(3));
    }

    public final void zaB(GoogleApi<?> googleApi) {
        com.google.android.gms.internal.base.zaq zaqVar = this.f10641w;
        zaqVar.sendMessage(zaqVar.obtainMessage(7, googleApi));
    }

    public final void zaC(zaae zaaeVar) {
        synchronized (f10624A) {
            try {
                if (this.f10638t != zaaeVar) {
                    this.f10638t = zaaeVar;
                    this.f10639u.clear();
                }
                i iVar = this.f10639u;
                zaaeVar.getClass();
                iVar.addAll(null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int zaa() {
        return this.f10635q.getAndIncrement();
    }

    public final <O extends Api.ApiOptions> Task<Void> zaq(GoogleApi<O> googleApi, RegisterListenerMethod<Api.AnyClient, ?> registerListenerMethod, UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod, Runnable runnable) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        d(taskCompletionSource, registerListenerMethod.zaa(), googleApi);
        zaf zafVar = new zaf(new zaci(registerListenerMethod, unregisterListenerMethod, runnable), taskCompletionSource);
        com.google.android.gms.internal.base.zaq zaqVar = this.f10641w;
        zaqVar.sendMessage(zaqVar.obtainMessage(8, new zach(zafVar, this.f10636r.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final <O extends Api.ApiOptions> Task<Boolean> zar(GoogleApi<O> googleApi, ListenerHolder.ListenerKey listenerKey, int i2) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        d(taskCompletionSource, i2, googleApi);
        zah zahVar = new zah(listenerKey, taskCompletionSource);
        com.google.android.gms.internal.base.zaq zaqVar = this.f10641w;
        zaqVar.sendMessage(zaqVar.obtainMessage(13, new zach(zahVar, this.f10636r.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final <O extends Api.ApiOptions> void zaw(GoogleApi<O> googleApi, int i2, BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient> apiMethodImpl) {
        zae zaeVar = new zae(i2, apiMethodImpl);
        com.google.android.gms.internal.base.zaq zaqVar = this.f10641w;
        zaqVar.sendMessage(zaqVar.obtainMessage(4, new zach(zaeVar, this.f10636r.get(), googleApi)));
    }

    public final <O extends Api.ApiOptions, ResultT> void zax(GoogleApi<O> googleApi, int i2, TaskApiCall<Api.AnyClient, ResultT> taskApiCall, TaskCompletionSource<ResultT> taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        d(taskCompletionSource, taskApiCall.zaa(), googleApi);
        zag zagVar = new zag(i2, taskApiCall, taskCompletionSource, statusExceptionMapper);
        com.google.android.gms.internal.base.zaq zaqVar = this.f10641w;
        zaqVar.sendMessage(zaqVar.obtainMessage(4, new zach(zagVar, this.f10636r.get(), googleApi)));
    }

    public final void zaz(ConnectionResult connectionResult, int i2) {
        if (this.f10633n.zah(this.f10632m, connectionResult, i2)) {
            return;
        }
        com.google.android.gms.internal.base.zaq zaqVar = this.f10641w;
        zaqVar.sendMessage(zaqVar.obtainMessage(5, i2, 0, connectionResult));
    }
}
