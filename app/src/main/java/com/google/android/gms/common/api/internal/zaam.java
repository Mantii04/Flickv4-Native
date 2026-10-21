package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
final class zaam extends zabg {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ConnectionResult f10686b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zaao f10687c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaam(zaao zaaoVar, zabf zabfVar, ConnectionResult connectionResult) {
        super(zabfVar);
        this.f10687c = zaaoVar;
        this.f10686b = connectionResult;
    }

    @Override // com.google.android.gms.common.api.internal.zabg
    public final void zaa() {
        this.f10687c.f10690f.c(this.f10686b);
    }
}
