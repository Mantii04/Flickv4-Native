package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2.dex */
public final class zzba extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzba> CREATOR = new zzbc();

    /* renamed from: b, reason: collision with root package name */
    public final Bundle f11244b;

    public zzba(Bundle bundle) {
        this.f11244b = bundle;
    }

    public final Double a() {
        return Double.valueOf(this.f11244b.getDouble(FirebaseAnalytics.Param.VALUE));
    }

    public final String b() {
        return this.f11244b.getString(FirebaseAnalytics.Param.CURRENCY);
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        zzbd zzbdVar = new zzbd();
        zzbdVar.f11256b = this.f11244b.keySet().iterator();
        return zzbdVar;
    }

    public final String toString() {
        return this.f11244b.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 2, zzb(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final int zza() {
        return this.f11244b.size();
    }

    public final Bundle zzb() {
        return new Bundle(this.f11244b);
    }
}
