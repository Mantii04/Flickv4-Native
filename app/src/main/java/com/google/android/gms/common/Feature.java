package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import cz.msebera.android.httpclient.cookie.ClientCookie;

@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes.dex */
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new zzc();

    /* renamed from: b, reason: collision with root package name */
    public final String f10558b;

    /* renamed from: e, reason: collision with root package name */
    public final int f10559e;

    /* renamed from: f, reason: collision with root package name */
    public final long f10560f;

    @SafeParcelable.Constructor
    public Feature(@SafeParcelable.Param String str, @SafeParcelable.Param int i2, @SafeParcelable.Param long j7) {
        this.f10558b = str;
        this.f10559e = i2;
        this.f10560f = j7;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            if (((getName() != null && getName().equals(feature.getName())) || (getName() == null && feature.getName() == null)) && getVersion() == feature.getVersion()) {
                return true;
            }
        }
        return false;
    }

    @KeepForSdk
    public String getName() {
        return this.f10558b;
    }

    @KeepForSdk
    public long getVersion() {
        long j7 = this.f10560f;
        return j7 == -1 ? this.f10559e : j7;
    }

    public final int hashCode() {
        return Objects.hashCode(getName(), Long.valueOf(getVersion()));
    }

    public final String toString() {
        Objects.ToStringHelper stringHelper = Objects.toStringHelper(this);
        stringHelper.add("name", getName());
        stringHelper.add(ClientCookie.VERSION_ATTR, Long.valueOf(getVersion()));
        return stringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getName(), false);
        SafeParcelWriter.writeInt(parcel, 2, this.f10559e);
        SafeParcelWriter.writeLong(parcel, 3, getVersion());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @KeepForSdk
    public Feature(String str, long j7) {
        this.f10558b = str;
        this.f10560f = j7;
        this.f10559e = -1;
    }
}
