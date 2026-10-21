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
public class ConnectionTelemetryConfiguration extends AbstractSafeParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<ConnectionTelemetryConfiguration> CREATOR = new zzm();

    /* renamed from: b, reason: collision with root package name */
    public final RootTelemetryConfiguration f10858b;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f10859e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f10860f;

    /* renamed from: j, reason: collision with root package name */
    public final int[] f10861j;

    /* renamed from: m, reason: collision with root package name */
    public final int f10862m;

    /* renamed from: n, reason: collision with root package name */
    public final int[] f10863n;

    @SafeParcelable.Constructor
    public ConnectionTelemetryConfiguration(@SafeParcelable.Param RootTelemetryConfiguration rootTelemetryConfiguration, @SafeParcelable.Param boolean z6, @SafeParcelable.Param boolean z7, @SafeParcelable.Param int[] iArr, @SafeParcelable.Param int i2, @SafeParcelable.Param int[] iArr2) {
        this.f10858b = rootTelemetryConfiguration;
        this.f10859e = z6;
        this.f10860f = z7;
        this.f10861j = iArr;
        this.f10862m = i2;
        this.f10863n = iArr2;
    }

    @KeepForSdk
    public int getMaxMethodInvocationsLogged() {
        return this.f10862m;
    }

    @KeepForSdk
    public int[] getMethodInvocationMethodKeyAllowlist() {
        return this.f10861j;
    }

    @KeepForSdk
    public int[] getMethodInvocationMethodKeyDisallowlist() {
        return this.f10863n;
    }

    @KeepForSdk
    public boolean getMethodInvocationTelemetryEnabled() {
        return this.f10859e;
    }

    @KeepForSdk
    public boolean getMethodTimingTelemetryEnabled() {
        return this.f10860f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f10858b, i2, false);
        SafeParcelWriter.writeBoolean(parcel, 2, getMethodInvocationTelemetryEnabled());
        SafeParcelWriter.writeBoolean(parcel, 3, getMethodTimingTelemetryEnabled());
        SafeParcelWriter.writeIntArray(parcel, 4, getMethodInvocationMethodKeyAllowlist(), false);
        SafeParcelWriter.writeInt(parcel, 5, getMaxMethodInvocationsLogged());
        SafeParcelWriter.writeIntArray(parcel, 6, getMethodInvocationMethodKeyDisallowlist(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final RootTelemetryConfiguration zza() {
        return this.f10858b;
    }
}
