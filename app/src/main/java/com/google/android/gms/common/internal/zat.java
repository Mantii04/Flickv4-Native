package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
/* loaded from: classes.dex */
public final class zat extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zat> CREATOR = new zau();

    /* renamed from: b, reason: collision with root package name */
    public final int f10922b;

    /* renamed from: e, reason: collision with root package name */
    public final Account f10923e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10924f;

    /* renamed from: j, reason: collision with root package name */
    public final GoogleSignInAccount f10925j;

    public zat(int i2, Account account, int i7, GoogleSignInAccount googleSignInAccount) {
        this.f10922b = i2;
        this.f10923e = account;
        this.f10924f = i7;
        this.f10925j = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10922b);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f10923e, i2, false);
        SafeParcelWriter.writeInt(parcel, 3, this.f10924f);
        SafeParcelWriter.writeParcelable(parcel, 4, this.f10925j, i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zat(Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i2, googleSignInAccount);
    }
}
