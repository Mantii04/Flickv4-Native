package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@KeepForSdk
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class ClientIdentity extends AbstractSafeParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<ClientIdentity> CREATOR = new zaa();

    /* renamed from: b, reason: collision with root package name */
    public final int f10843b;

    /* renamed from: e, reason: collision with root package name */
    public final String f10844e;

    @SafeParcelable.Constructor
    public ClientIdentity(@SafeParcelable.Param int i2, @SafeParcelable.Param String str) {
        this.f10843b = i2;
        this.f10844e = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientIdentity)) {
            return false;
        }
        ClientIdentity clientIdentity = (ClientIdentity) obj;
        return clientIdentity.f10843b == this.f10843b && Objects.equal(clientIdentity.f10844e, this.f10844e);
    }

    public final int hashCode() {
        return this.f10843b;
    }

    public final String toString() {
        String str = this.f10844e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(this.f10843b);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10843b);
        SafeParcelWriter.writeString(parcel, 2, this.f10844e, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
