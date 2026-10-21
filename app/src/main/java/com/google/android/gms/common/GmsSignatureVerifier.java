package com.google.android.gms.common;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.common.zzag;
import com.google.errorprone.annotations.RestrictedInheritance;
import java.util.HashMap;

@ShowFirstParty
@KeepForSdk
@RestrictedInheritance(allowedOnPath = ".*javatests/com/google/android/gmscore/integ/client/common/robolectric/.*", explanation = "Sub classing of GMS Core's APIs are restricted to testing fakes.", link = "go/gmscore-restrictedinheritance")
/* loaded from: classes.dex */
public class GmsSignatureVerifier {
    static {
        zzz zzzVar = new zzz();
        zzzVar.f11095a = "com.google.android.gms";
        zzzVar.f11096b = 204200000L;
        zzi zziVar = zzn.f11072d;
        zzag zzn = zzag.zzn(zziVar.a(), zzn.f11070b.a());
        Preconditions.checkNotNull(zzn);
        zzzVar.f11097c = zzag.zzk(zzn);
        zzh zzhVar = zzn.f11071c;
        zzag zzn2 = zzag.zzn(zzhVar.a(), zzn.f11069a.a());
        Preconditions.checkNotNull(zzn2);
        zzzVar.f11098d = zzag.zzk(zzn2);
        zzzVar.a();
        zzz zzzVar2 = new zzz();
        zzzVar2.f11095a = "com.android.vending";
        zzzVar2.f11096b = 82240000L;
        zzag zzm = zzag.zzm(zziVar.a());
        Preconditions.checkNotNull(zzm);
        zzzVar2.f11097c = zzag.zzk(zzm);
        zzag zzm2 = zzag.zzm(zzhVar.a());
        Preconditions.checkNotNull(zzm2);
        zzzVar2.f11098d = zzag.zzk(zzm2);
        zzzVar2.a();
        new HashMap();
    }
}
