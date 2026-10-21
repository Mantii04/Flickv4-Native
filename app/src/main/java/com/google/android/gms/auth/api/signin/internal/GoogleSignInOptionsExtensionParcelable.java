package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
/* loaded from: classes.dex */
public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new zaa();

    /* renamed from: b, reason: collision with root package name */
    public final int f9559b;

    /* renamed from: e, reason: collision with root package name */
    public final int f9560e;

    /* renamed from: f, reason: collision with root package name */
    public final Bundle f9561f;

    public GoogleSignInOptionsExtensionParcelable(int i2, int i7, Bundle bundle) {
        this.f9559b = i2;
        this.f9560e = i7;
        this.f9561f = bundle;
    }

    @KeepForSdk
    public int getType() {
        return this.f9560e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f9559b);
        SafeParcelWriter.writeInt(parcel, 2, getType());
        SafeParcelWriter.writeBundle(parcel, 3, this.f9561f, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
