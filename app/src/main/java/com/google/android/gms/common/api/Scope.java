package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
/* loaded from: classes.dex */
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new zza();

    /* renamed from: b, reason: collision with root package name */
    public final int f10603b;

    /* renamed from: e, reason: collision with root package name */
    public final String f10604e;

    public Scope(int i2, String str) {
        Preconditions.checkNotEmpty(str, "scopeUri must not be null or empty");
        this.f10603b = i2;
        this.f10604e = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.f10604e.equals(((Scope) obj).f10604e);
    }

    @KeepForSdk
    public String getScopeUri() {
        return this.f10604e;
    }

    public int hashCode() {
        return this.f10604e.hashCode();
    }

    public String toString() {
        return this.f10604e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10603b);
        SafeParcelWriter.writeString(parcel, 2, getScopeUri(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public Scope(String str) {
        this(1, str);
    }
}
