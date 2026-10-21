package com.google.android.gms.cast;

import A.i;
import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.display.VirtualDisplay;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

@TargetApi(19)
@Deprecated
/* loaded from: classes.dex */
public class CastRemoteDisplayClient extends GoogleApi<Api.ApiOptions.NoOptions> {

    /* renamed from: l, reason: collision with root package name */
    public static final Api f9630l = new Api("CastRemoteDisplay.API", new zzab(), com.google.android.gms.cast.internal.zzak.f10351d);

    /* renamed from: j, reason: collision with root package name */
    public final Logger f9631j;

    /* renamed from: k, reason: collision with root package name */
    public VirtualDisplay f9632k;

    public CastRemoteDisplayClient(Context context) {
        super(context, f9630l, Api.ApiOptions.f10584c, GoogleApi.Settings.f10597c);
        this.f9631j = new Logger("CastRemoteDisplay");
    }

    public static /* bridge */ /* synthetic */ void a(CastRemoteDisplayClient castRemoteDisplayClient) {
        VirtualDisplay virtualDisplay = castRemoteDisplayClient.f9632k;
        if (virtualDisplay != null) {
            if (virtualDisplay.getDisplay() != null) {
                castRemoteDisplayClient.f9631j.d(i.f(castRemoteDisplayClient.f9632k.getDisplay().getDisplayId(), "releasing virtual display: "), new Object[0]);
            }
            VirtualDisplay virtualDisplay2 = castRemoteDisplayClient.f9632k;
            if (virtualDisplay2 != null) {
                virtualDisplay2.release();
                castRemoteDisplayClient.f9632k = null;
            }
        }
    }

    public Task<Void> stopRemoteDisplay() {
        return doWrite(TaskApiCall.builder().setMethodKey(8402).run(new RemoteCall() { // from class: com.google.android.gms.cast.zzaa
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((com.google.android.gms.internal.cast.zzdt) ((com.google.android.gms.internal.cast.zzdo) obj).getService()).zzi(new zzad(CastRemoteDisplayClient.this, (TaskCompletionSource) obj2));
            }
        }).build());
    }
}
