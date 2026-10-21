package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes2.dex */
final class zzkl implements Application.ActivityLifecycleCallbacks {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zziy f11956b;

    public zzkl(zziy zziyVar) {
        this.f11956b = zziyVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zziy zziyVar = this.f11956b;
        try {
            try {
                zziyVar.zzj().zzp().zza("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent == null) {
                    zziyVar.zzn().zza(activity, bundle);
                    return;
                }
                Uri data = intent.getData();
                if (data == null || !data.isHierarchical()) {
                    Bundle extras = intent.getExtras();
                    if (extras != null) {
                        String string = extras.getString("com.android.vending.referral_url");
                        if (!TextUtils.isEmpty(string)) {
                            data = Uri.parse(string);
                        }
                    }
                    data = null;
                }
                Uri uri = data;
                if (uri != null && uri.isHierarchical()) {
                    zziyVar.zzq();
                    zziyVar.zzl().zzb(new zzkk(this, bundle == null, uri, zznt.r(intent) ? "gs" : "auto", uri.getQueryParameter("referrer")));
                    zziyVar.zzn().zza(activity, bundle);
                }
            } catch (RuntimeException e3) {
                zziyVar.zzj().zzg().zza("Throwable caught in onActivityCreated", e3);
                zziyVar.zzn().zza(activity, bundle);
            }
        } finally {
            zziyVar.zzn().zza(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f11956b.zzn().zza(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zziy zziyVar = this.f11956b;
        zziyVar.zzn().zzb(activity);
        zzmi zzp = zziyVar.zzp();
        zzp.zzl().zzb(new zzmk(zzp, zzp.zzb().elapsedRealtime()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zziy zziyVar = this.f11956b;
        zzmi zzp = zziyVar.zzp();
        zzp.zzl().zzb(new zzml(zzp, zzp.zzb().elapsedRealtime()));
        zziyVar.zzn().zzc(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f11956b.zzn().zzb(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
