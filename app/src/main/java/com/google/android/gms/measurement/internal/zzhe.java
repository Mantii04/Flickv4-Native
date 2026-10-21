package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfn;
import p.g;
import p.p;

/* loaded from: classes2.dex */
final class zzhe extends p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzgy f11673a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzhe(zzgy zzgyVar) {
        super(20);
        this.f11673a = zzgyVar;
    }

    @Override // p.p
    public final /* synthetic */ Object create(Object obj) {
        String str = (String) obj;
        Preconditions.checkNotEmpty(str);
        zzgy zzgyVar = this.f11673a;
        zzgyVar.zzak();
        Preconditions.checkNotEmpty(str);
        if (!zzgyVar.zzl(str)) {
            return null;
        }
        g gVar = zzgyVar.f11656h;
        if (!gVar.containsKey(str) || gVar.get(str) == null) {
            zzgyVar.o(str);
        } else {
            zzgyVar.f(str, (zzfn.zzd) gVar.get(str));
        }
        return (com.google.android.gms.internal.measurement.zzb) zzgyVar.f11658j.snapshot().get(str);
    }
}
