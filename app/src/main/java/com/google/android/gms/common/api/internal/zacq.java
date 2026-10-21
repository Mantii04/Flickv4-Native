package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
final class zacq implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zact f10772b;

    public zacq(zact zactVar) {
        this.f10772b = zactVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10772b.f10782g.zae(new ConnectionResult(4));
    }
}
