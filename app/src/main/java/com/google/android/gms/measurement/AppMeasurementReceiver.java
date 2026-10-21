package com.google.android.gms.measurement;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.measurement.internal.zzgw;
import l0.AbstractC1204a;

/* loaded from: classes2.dex */
public final class AppMeasurementReceiver extends AbstractC1204a implements zzgw.zza {

    /* renamed from: c, reason: collision with root package name */
    public zzgw f11144c;

    @Override // com.google.android.gms.measurement.internal.zzgw.zza
    public final void doStartService(Context context, Intent intent) {
        AbstractC1204a.startWakefulService(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f11144c == null) {
            this.f11144c = new zzgw(this);
        }
        this.f11144c.zza(context, intent);
    }
}
