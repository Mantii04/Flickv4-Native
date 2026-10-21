package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes.dex */
public class MethodInvocation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MethodInvocation> CREATOR = new zan();

    /* renamed from: b, reason: collision with root package name */
    public final int f10883b;

    /* renamed from: e, reason: collision with root package name */
    public final int f10884e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10885f;

    /* renamed from: j, reason: collision with root package name */
    public final long f10886j;

    /* renamed from: m, reason: collision with root package name */
    public final long f10887m;

    /* renamed from: n, reason: collision with root package name */
    public final String f10888n;

    /* renamed from: p, reason: collision with root package name */
    public final String f10889p;

    /* renamed from: q, reason: collision with root package name */
    public final int f10890q;

    /* renamed from: r, reason: collision with root package name */
    public final int f10891r;

    @SafeParcelable.Constructor
    public MethodInvocation(@SafeParcelable.Param int i2, @SafeParcelable.Param int i7, @SafeParcelable.Param int i8, @SafeParcelable.Param long j7, @SafeParcelable.Param long j8, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param int i9, @SafeParcelable.Param int i10) {
        this.f10883b = i2;
        this.f10884e = i7;
        this.f10885f = i8;
        this.f10886j = j7;
        this.f10887m = j8;
        this.f10888n = str;
        this.f10889p = str2;
        this.f10890q = i9;
        this.f10891r = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10883b);
        SafeParcelWriter.writeInt(parcel, 2, this.f10884e);
        SafeParcelWriter.writeInt(parcel, 3, this.f10885f);
        SafeParcelWriter.writeLong(parcel, 4, this.f10886j);
        SafeParcelWriter.writeLong(parcel, 5, this.f10887m);
        SafeParcelWriter.writeString(parcel, 6, this.f10888n, false);
        SafeParcelWriter.writeString(parcel, 7, this.f10889p, false);
        SafeParcelWriter.writeInt(parcel, 8, this.f10890q);
        SafeParcelWriter.writeInt(parcel, 9, this.f10891r);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
