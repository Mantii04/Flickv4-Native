package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;

/* loaded from: classes.dex */
final class zabo implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zabp f10722b;

    public zabo(zabp zabpVar) {
        this.f10722b = zabpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Api.Client client = this.f10722b.f10723a.f10725b;
        client.disconnect(client.getClass().getName().concat(" disconnecting because it was signed out."));
    }
}
