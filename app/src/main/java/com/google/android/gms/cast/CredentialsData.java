package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
/* loaded from: classes.dex */
public class CredentialsData extends AbstractSafeParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<CredentialsData> CREATOR = new zzas();

    /* renamed from: b, reason: collision with root package name */
    public final String f9644b;

    /* renamed from: e, reason: collision with root package name */
    public final String f9645e;

    public static class Builder {
    }

    @SafeParcelable.Constructor
    public CredentialsData(@SafeParcelable.Param String str, @SafeParcelable.Param String str2) {
        this.f9644b = str;
        this.f9645e = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CredentialsData)) {
            return false;
        }
        CredentialsData credentialsData = (CredentialsData) obj;
        return Objects.equal(this.f9644b, credentialsData.f9644b) && Objects.equal(this.f9645e, credentialsData.f9645e);
    }

    public String getCredentials() {
        return this.f9644b;
    }

    public String getCredentialsType() {
        return this.f9645e;
    }

    public int hashCode() {
        return Objects.hashCode(this.f9644b, this.f9645e);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getCredentials(), false);
        SafeParcelWriter.writeString(parcel, 2, getCredentialsType(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
