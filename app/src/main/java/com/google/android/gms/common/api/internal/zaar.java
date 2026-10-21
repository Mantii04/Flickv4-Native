package com.google.android.gms.common.api.internal;

import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
final class zaar extends com.google.android.gms.signin.internal.zac {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f10695a;

    public zaar(zaaw zaawVar) {
        this.f10695a = new WeakReference(zaawVar);
    }

    @Override // com.google.android.gms.signin.internal.zac, com.google.android.gms.signin.internal.zae
    public final void zab(com.google.android.gms.signin.internal.zak zakVar) {
        zaaw zaawVar = (zaaw) this.f10695a.get();
        if (zaawVar == null) {
            return;
        }
        new zaaq(zaawVar, zaawVar, zakVar);
        throw null;
    }
}
