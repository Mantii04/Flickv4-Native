package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
/* loaded from: classes.dex */
public final class zav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zav> CREATOR = new zaw();

    /* renamed from: b, reason: collision with root package name */
    public final int f10926b;

    /* renamed from: e, reason: collision with root package name */
    public final IBinder f10927e;

    /* renamed from: f, reason: collision with root package name */
    public final ConnectionResult f10928f;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f10929j;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f10930m;

    public zav(int i2, IBinder iBinder, ConnectionResult connectionResult, boolean z6, boolean z7) {
        this.f10926b = i2;
        this.f10927e = iBinder;
        this.f10928f = connectionResult;
        this.f10929j = z6;
        this.f10930m = z7;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zav)) {
            return false;
        }
        zav zavVar = (zav) obj;
        return this.f10928f.equals(zavVar.f10928f) && Objects.equal(zab(), zavVar.zab());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10926b);
        SafeParcelWriter.writeIBinder(parcel, 2, this.f10927e, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f10928f, i2, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.f10929j);
        SafeParcelWriter.writeBoolean(parcel, 5, this.f10930m);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final ConnectionResult zaa() {
        return this.f10928f;
    }

    public final IAccountAccessor zab() {
        IBinder iBinder = this.f10927e;
        if (iBinder == null) {
            return null;
        }
        return IAccountAccessor.Stub.asInterface(iBinder);
    }

    public final boolean zac() {
        return this.f10929j;
    }

    public final boolean zad() {
        return this.f10930m;
    }
}
