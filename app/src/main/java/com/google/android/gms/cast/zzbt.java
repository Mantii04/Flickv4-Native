package com.google.android.gms.cast;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzed;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

@SuppressLint({"UseSparseArrays"})
/* loaded from: classes.dex */
public final class zzbt extends GoogleApi implements zzr {

    /* renamed from: F, reason: collision with root package name */
    public static final Logger f10508F = new Logger("CastClient");

    /* renamed from: G, reason: collision with root package name */
    public static final Api f10509G = new Api("Cast.API_CXLESS", new zzbk(), com.google.android.gms.cast.internal.zzak.f10349b);

    /* renamed from: A, reason: collision with root package name */
    public final HashMap f10510A;

    /* renamed from: B, reason: collision with root package name */
    public final HashMap f10511B;

    /* renamed from: C, reason: collision with root package name */
    public final Cast.Listener f10512C;

    /* renamed from: D, reason: collision with root package name */
    public final List f10513D;

    /* renamed from: E, reason: collision with root package name */
    public int f10514E;

    /* renamed from: j, reason: collision with root package name */
    public final zzbs f10515j;

    /* renamed from: k, reason: collision with root package name */
    public zzed f10516k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f10517l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f10518m;

    /* renamed from: n, reason: collision with root package name */
    public TaskCompletionSource f10519n;

    /* renamed from: o, reason: collision with root package name */
    public TaskCompletionSource f10520o;

    /* renamed from: p, reason: collision with root package name */
    public final AtomicLong f10521p;

    /* renamed from: q, reason: collision with root package name */
    public final Object f10522q;

    /* renamed from: r, reason: collision with root package name */
    public final Object f10523r;

    /* renamed from: s, reason: collision with root package name */
    public ApplicationMetadata f10524s;

    /* renamed from: t, reason: collision with root package name */
    public String f10525t;

    /* renamed from: u, reason: collision with root package name */
    public double f10526u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f10527v;

    /* renamed from: w, reason: collision with root package name */
    public int f10528w;

    /* renamed from: x, reason: collision with root package name */
    public int f10529x;

    /* renamed from: y, reason: collision with root package name */
    public zzav f10530y;

    /* renamed from: z, reason: collision with root package name */
    public final CastDevice f10531z;

    public zzbt(Context context, Cast.CastOptions castOptions) {
        super(context, f10509G, castOptions, GoogleApi.Settings.f10597c);
        this.f10515j = new zzbs(this);
        this.f10522q = new Object();
        this.f10523r = new Object();
        this.f10513D = Collections.synchronizedList(new ArrayList());
        Preconditions.checkNotNull(context, "context cannot be null");
        Preconditions.checkNotNull(castOptions, "CastOptions cannot be null");
        this.f10512C = castOptions.f9605e;
        this.f10531z = castOptions.f9604b;
        this.f10510A = new HashMap();
        this.f10511B = new HashMap();
        this.f10521p = new AtomicLong(0L);
        this.f10514E = 1;
        e();
    }

    public static void a(zzbt zzbtVar, long j7, int i2) {
        TaskCompletionSource taskCompletionSource;
        synchronized (zzbtVar.f10510A) {
            HashMap hashMap = zzbtVar.f10510A;
            Long valueOf = Long.valueOf(j7);
            taskCompletionSource = (TaskCompletionSource) hashMap.get(valueOf);
            zzbtVar.f10510A.remove(valueOf);
        }
        if (taskCompletionSource != null) {
            if (i2 == 0) {
                taskCompletionSource.setResult(null);
            } else {
                taskCompletionSource.setException(ApiExceptionUtil.fromStatus(new Status(i2)));
            }
        }
    }

    public static void b(zzbt zzbtVar, int i2) {
        synchronized (zzbtVar.f10523r) {
            try {
                TaskCompletionSource taskCompletionSource = zzbtVar.f10520o;
                if (taskCompletionSource == null) {
                    return;
                }
                if (i2 == 0) {
                    taskCompletionSource.setResult(new Status(0));
                } else {
                    taskCompletionSource.setException(ApiExceptionUtil.fromStatus(new Status(i2)));
                }
                zzbtVar.f10520o = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* bridge */ /* synthetic */ Handler f(zzbt zzbtVar) {
        if (zzbtVar.f10516k == null) {
            zzbtVar.f10516k = new zzed(zzbtVar.getLooper());
        }
        return zzbtVar.f10516k;
    }

    public final void c() {
        f10508F.d("removing all MessageReceivedCallbacks", new Object[0]);
        synchronized (this.f10511B) {
            this.f10511B.clear();
        }
    }

    public final void d(int i2) {
        synchronized (this.f10522q) {
            try {
                TaskCompletionSource taskCompletionSource = this.f10519n;
                if (taskCompletionSource != null) {
                    taskCompletionSource.setException(ApiExceptionUtil.fromStatus(new Status(i2)));
                }
                this.f10519n = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e() {
        CastDevice castDevice = this.f10531z;
        if (castDevice.hasCapability(2048) || !castDevice.hasCapability(4) || castDevice.hasCapability(1)) {
            return;
        }
        "Chromecast Audio".equals(castDevice.getModelName());
    }

    @Override // com.google.android.gms.cast.zzr
    public final Task zze() {
        ListenerHolder registerListener = registerListener(this.f10515j, "castDeviceControllerListenerKey");
        RegistrationMethods.Builder builder = RegistrationMethods.builder();
        return doRegisterEventListener(builder.withHolder(registerListener).register(new RemoteCall() { // from class: com.google.android.gms.cast.zzbe
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                com.google.android.gms.cast.internal.zzx zzxVar = (com.google.android.gms.cast.internal.zzx) obj;
                ((com.google.android.gms.cast.internal.zzag) zzxVar.getService()).zzj(zzbt.this.f10515j);
                ((com.google.android.gms.cast.internal.zzag) zzxVar.getService()).zze();
                ((TaskCompletionSource) obj2).setResult(null);
            }
        }).unregister(new RemoteCall() { // from class: com.google.android.gms.cast.zzbf
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                Logger logger = zzbt.f10508F;
                ((com.google.android.gms.cast.internal.zzag) ((com.google.android.gms.cast.internal.zzx) obj).getService()).zzq();
                ((TaskCompletionSource) obj2).setResult(Boolean.TRUE);
            }
        }).setFeatures(zzax.f10465a).setMethodKey(8428).build());
    }

    @Override // com.google.android.gms.cast.zzr
    public final Task zzf() {
        Task doWrite = doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzba
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                Logger logger = zzbt.f10508F;
                ((com.google.android.gms.cast.internal.zzag) ((com.google.android.gms.cast.internal.zzx) obj).getService()).zzf();
                ((TaskCompletionSource) obj2).setResult(null);
            }
        }).setMethodKey(8403).build());
        c();
        doUnregisterEventListener((ListenerHolder.ListenerKey) Preconditions.checkNotNull(registerListener(this.f10515j, "castDeviceControllerListenerKey").getListenerKey(), "Key must not be null"), 8415);
        return doWrite;
    }

    @Override // com.google.android.gms.cast.zzr
    public final Task zzg(final String str) {
        final Cast.MessageReceivedCallback messageReceivedCallback;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Channel namespace cannot be null or empty");
        }
        synchronized (this.f10511B) {
            messageReceivedCallback = (Cast.MessageReceivedCallback) this.f10511B.remove(str);
        }
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzbb
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                com.google.android.gms.cast.internal.zzx zzxVar = (com.google.android.gms.cast.internal.zzx) obj;
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                Preconditions.checkState(zzbt.this.f10514E != 1, "Not active connection");
                if (messageReceivedCallback != null) {
                    ((com.google.android.gms.cast.internal.zzag) zzxVar.getService()).zzr(str);
                }
                taskCompletionSource.setResult(null);
            }
        }).setMethodKey(8414).build());
    }

    @Override // com.google.android.gms.cast.zzr
    public final Task zzh(final String str, final String str2) {
        CastUtils.throwIfInvalidNamespace(str);
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("The message payload cannot be null or empty");
        }
        if (str2.length() <= 524288) {
            final String str3 = null;
            return doWrite(TaskApiCall.builder().run(new RemoteCall(str3, str, str2) { // from class: com.google.android.gms.cast.zzbg

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ String f10485b;

                /* renamed from: c, reason: collision with root package name */
                public final /* synthetic */ String f10486c;

                {
                    this.f10485b = str;
                    this.f10486c = str2;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final void accept(Object obj, Object obj2) {
                    String str4 = this.f10485b;
                    String str5 = this.f10486c;
                    com.google.android.gms.cast.internal.zzx zzxVar = (com.google.android.gms.cast.internal.zzx) obj;
                    TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                    zzbt zzbtVar = zzbt.this;
                    HashMap hashMap = zzbtVar.f10510A;
                    long incrementAndGet = zzbtVar.f10521p.incrementAndGet();
                    Preconditions.checkState(zzbtVar.zzl(), "Not connected to device");
                    try {
                        hashMap.put(Long.valueOf(incrementAndGet), taskCompletionSource);
                        ((com.google.android.gms.cast.internal.zzag) zzxVar.getService()).zzm(str4, str5, incrementAndGet);
                    } catch (RemoteException e3) {
                        hashMap.remove(Long.valueOf(incrementAndGet));
                        taskCompletionSource.setException(e3);
                    }
                }
            }).setMethodKey(8405).build());
        }
        f10508F.w("Message send failed. Message exceeds maximum size", new Object[0]);
        throw new IllegalArgumentException("Message exceeds maximum size524288");
    }

    @Override // com.google.android.gms.cast.zzr
    public final Task zzi(final String str, final Cast.MessageReceivedCallback messageReceivedCallback) {
        CastUtils.throwIfInvalidNamespace(str);
        if (messageReceivedCallback != null) {
            synchronized (this.f10511B) {
                this.f10511B.put(str, messageReceivedCallback);
            }
        }
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzbh
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                com.google.android.gms.cast.internal.zzx zzxVar = (com.google.android.gms.cast.internal.zzx) obj;
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                Preconditions.checkState(zzbt.this.f10514E != 1, "Not active connection");
                com.google.android.gms.cast.internal.zzag zzagVar = (com.google.android.gms.cast.internal.zzag) zzxVar.getService();
                String str2 = str;
                zzagVar.zzr(str2);
                if (messageReceivedCallback != null) {
                    ((com.google.android.gms.cast.internal.zzag) zzxVar.getService()).zzk(str2);
                }
                taskCompletionSource.setResult(null);
            }
        }).setMethodKey(8413).build());
    }

    @Override // com.google.android.gms.cast.zzr
    public final void zzk(zzq zzqVar) {
        Preconditions.checkNotNull(zzqVar);
        this.f10513D.add(zzqVar);
    }

    @Override // com.google.android.gms.cast.zzr
    public final boolean zzl() {
        return this.f10514E == 2;
    }

    @Override // com.google.android.gms.cast.zzr
    public final boolean zzm() {
        Preconditions.checkState(zzl(), "Not connected to device");
        return this.f10527v;
    }
}
