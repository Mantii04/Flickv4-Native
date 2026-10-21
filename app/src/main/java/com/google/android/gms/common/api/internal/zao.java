package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
final class zao implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final zam f10808b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zap f10809e;

    public zao(zap zapVar, zam zamVar) {
        this.f10809e = zapVar;
        this.f10808b = zamVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f10809e.f10810b) {
            ConnectionResult connectionResult = this.f10808b.f10805b;
            if (connectionResult.hasResolution()) {
                GoogleApiActivity.zaa(this.f10809e.getActivity(), (PendingIntent) Preconditions.checkNotNull(connectionResult.getResolution()), this.f10808b.f10804a, false);
                throw null;
            }
            this.f10809e.getActivity();
            connectionResult.getErrorCode();
            throw null;
        }
    }
}
