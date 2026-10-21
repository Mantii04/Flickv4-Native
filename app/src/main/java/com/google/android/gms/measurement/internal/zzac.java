package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
/* loaded from: classes2.dex */
public final class zzac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzac> CREATOR = new zzaf();

    /* renamed from: b, reason: collision with root package name */
    public String f11164b;

    /* renamed from: e, reason: collision with root package name */
    public String f11165e;

    /* renamed from: f, reason: collision with root package name */
    public zzno f11166f;

    /* renamed from: j, reason: collision with root package name */
    public long f11167j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f11168m;

    /* renamed from: n, reason: collision with root package name */
    public String f11169n;

    /* renamed from: p, reason: collision with root package name */
    public final zzbf f11170p;

    /* renamed from: q, reason: collision with root package name */
    public long f11171q;

    /* renamed from: r, reason: collision with root package name */
    public zzbf f11172r;

    /* renamed from: s, reason: collision with root package name */
    public final long f11173s;

    /* renamed from: t, reason: collision with root package name */
    public final zzbf f11174t;

    public zzac(zzac zzacVar) {
        Preconditions.checkNotNull(zzacVar);
        this.f11164b = zzacVar.f11164b;
        this.f11165e = zzacVar.f11165e;
        this.f11166f = zzacVar.f11166f;
        this.f11167j = zzacVar.f11167j;
        this.f11168m = zzacVar.f11168m;
        this.f11169n = zzacVar.f11169n;
        this.f11170p = zzacVar.f11170p;
        this.f11171q = zzacVar.f11171q;
        this.f11172r = zzacVar.f11172r;
        this.f11173s = zzacVar.f11173s;
        this.f11174t = zzacVar.f11174t;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f11164b, false);
        SafeParcelWriter.writeString(parcel, 3, this.f11165e, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.f11166f, i2, false);
        SafeParcelWriter.writeLong(parcel, 5, this.f11167j);
        SafeParcelWriter.writeBoolean(parcel, 6, this.f11168m);
        SafeParcelWriter.writeString(parcel, 7, this.f11169n, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.f11170p, i2, false);
        SafeParcelWriter.writeLong(parcel, 9, this.f11171q);
        SafeParcelWriter.writeParcelable(parcel, 10, this.f11172r, i2, false);
        SafeParcelWriter.writeLong(parcel, 11, this.f11173s);
        SafeParcelWriter.writeParcelable(parcel, 12, this.f11174t, i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zzac(String str, String str2, zzno zznoVar, long j7, boolean z6, String str3, zzbf zzbfVar, long j8, zzbf zzbfVar2, long j9, zzbf zzbfVar3) {
        this.f11164b = str;
        this.f11165e = str2;
        this.f11166f = zznoVar;
        this.f11167j = j7;
        this.f11168m = z6;
        this.f11169n = str3;
        this.f11170p = zzbfVar;
        this.f11171q = j8;
        this.f11172r = zzbfVar2;
        this.f11173s = j9;
        this.f11174t = zzbfVar3;
    }
}
