package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* loaded from: classes.dex */
public final class zabx extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public Context f10748a;

    /* renamed from: b, reason: collision with root package name */
    public final zabw f10749b;

    public zabx(zabw zabwVar) {
        this.f10749b = zabwVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f10749b.zaa();
            zab();
        }
    }

    public final void zaa(Context context) {
        this.f10748a = context;
    }

    public final synchronized void zab() {
        try {
            Context context = this.f10748a;
            if (context != null) {
                context.unregisterReceiver(this);
            }
            this.f10748a = null;
        } catch (Throwable th) {
            throw th;
        }
    }
}
