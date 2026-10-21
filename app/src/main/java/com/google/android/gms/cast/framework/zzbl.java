package com.google.android.gms.cast.framework;

import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
final class zzbl extends zzbb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SessionProvider f10321a;

    public /* synthetic */ zzbl(SessionProvider sessionProvider) {
        this.f10321a = sessionProvider;
    }

    @Override // com.google.android.gms.cast.framework.zzbc
    public final IObjectWrapper zzb(String str) {
        Session createSession = this.f10321a.createSession(str);
        if (createSession == null) {
            return null;
        }
        return createSession.zzn();
    }

    @Override // com.google.android.gms.cast.framework.zzbc
    public final String zzc() {
        return this.f10321a.getCategory();
    }

    @Override // com.google.android.gms.cast.framework.zzbc
    public final boolean zzd() {
        return this.f10321a.isSessionRecoverable();
    }
}
