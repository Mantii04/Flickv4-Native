package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes.dex */
public class TelemetryData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TelemetryData> CREATOR = new zaab();

    /* renamed from: b, reason: collision with root package name */
    public final int f10904b;

    /* renamed from: e, reason: collision with root package name */
    public List f10905e;

    @SafeParcelable.Constructor
    public TelemetryData(@SafeParcelable.Param int i2, @SafeParcelable.Param List<MethodInvocation> list) {
        this.f10904b = i2;
        this.f10905e = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10904b);
        SafeParcelWriter.writeTypedList(parcel, 2, this.f10905e, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final int zaa() {
        return this.f10904b;
    }

    public final List<MethodInvocation> zab() {
        return this.f10905e;
    }

    public final void zac(MethodInvocation methodInvocation) {
        if (this.f10905e == null) {
            this.f10905e = new ArrayList();
        }
        this.f10905e.add(methodInvocation);
    }
}
