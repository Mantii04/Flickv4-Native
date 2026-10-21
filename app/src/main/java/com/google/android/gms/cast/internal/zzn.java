package com.google.android.gms.cast.internal;

import android.content.Context;
import com.google.android.gms.cast.zzax;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final class zzn extends GoogleApi {

    /* renamed from: j, reason: collision with root package name */
    public static final Api f10394j = new Api("CastApi.API", new zzi(), new Api.ClientKey());

    public zzn(Context context) {
        super(context, f10394j, Api.ApiOptions.f10584c, GoogleApi.Settings.f10597c);
    }

    public final Task zza(final String[] strArr) {
        return doRead(TaskApiCall.builder().run(new RemoteCall(this) { // from class: com.google.android.gms.cast.internal.zzg
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzaj) ((zzo) obj).getService()).zzf(new zzk((TaskCompletionSource) obj2), strArr);
            }
        }).setFeatures(zzax.f10466b).setAutoResolveMissingFeatures(false).setMethodKey(8425).build());
    }
}
