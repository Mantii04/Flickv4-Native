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
public class RootTelemetryConfiguration extends AbstractSafeParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<RootTelemetryConfiguration> CREATOR = new zzaj();

    /* renamed from: b, reason: collision with root package name */
    public final int f10897b;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f10898e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f10899f;

    /* renamed from: j, reason: collision with root package name */
    public final int f10900j;

    /* renamed from: m, reason: collision with root package name */
    public final int f10901m;

    @SafeParcelable.Constructor
    public RootTelemetryConfiguration(@SafeParcelable.Param int i2, @SafeParcelable.Param boolean z6, @SafeParcelable.Param boolean z7, @SafeParcelable.Param int i7, @SafeParcelable.Param int i8) {
        this.f10897b = i2;
        this.f10898e = z6;
        this.f10899f = z7;
        this.f10900j = i7;
        this.f10901m = i8;
    }

    @KeepForSdk
    public int getBatchPeriodMillis() {
        return this.f10900j;
    }

    @KeepForSdk
    public int getMaxMethodInvocationsInBatch() {
        return this.f10901m;
    }

    @KeepForSdk
    public boolean getMethodInvocationTelemetryEnabled() {
        return this.f10898e;
    }

    @KeepForSdk
    public boolean getMethodTimingTelemetryEnabled() {
        return this.f10899f;
    }

    @KeepForSdk
    public int getVersion() {
        return this.f10897b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getVersion());
        SafeParcelWriter.writeBoolean(parcel, 2, getMethodInvocationTelemetryEnabled());
        SafeParcelWriter.writeBoolean(parcel, 3, getMethodTimingTelemetryEnabled());
        SafeParcelWriter.writeInt(parcel, 4, getBatchPeriodMillis());
        SafeParcelWriter.writeInt(parcel, 5, getMaxMethodInvocationsInBatch());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
