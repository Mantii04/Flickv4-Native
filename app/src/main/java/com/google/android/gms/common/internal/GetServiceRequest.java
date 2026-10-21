package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@KeepForSdk
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new zzn();

    /* renamed from: x, reason: collision with root package name */
    public static final Scope[] f10864x = new Scope[0];

    /* renamed from: y, reason: collision with root package name */
    public static final Feature[] f10865y = new Feature[0];

    /* renamed from: b, reason: collision with root package name */
    public final int f10866b;

    /* renamed from: e, reason: collision with root package name */
    public final int f10867e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10868f;

    /* renamed from: j, reason: collision with root package name */
    public String f10869j;

    /* renamed from: m, reason: collision with root package name */
    public IBinder f10870m;

    /* renamed from: n, reason: collision with root package name */
    public Scope[] f10871n;

    /* renamed from: p, reason: collision with root package name */
    public Bundle f10872p;

    /* renamed from: q, reason: collision with root package name */
    public Account f10873q;

    /* renamed from: r, reason: collision with root package name */
    public Feature[] f10874r;

    /* renamed from: s, reason: collision with root package name */
    public Feature[] f10875s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f10876t;

    /* renamed from: u, reason: collision with root package name */
    public final int f10877u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f10878v;

    /* renamed from: w, reason: collision with root package name */
    public final String f10879w;

    public GetServiceRequest(int i2, int i7, int i8, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, Feature[] featureArr, Feature[] featureArr2, boolean z6, int i9, boolean z7, String str2) {
        scopeArr = scopeArr == null ? f10864x : scopeArr;
        bundle = bundle == null ? new Bundle() : bundle;
        Feature[] featureArr3 = f10865y;
        featureArr = featureArr == null ? featureArr3 : featureArr;
        featureArr2 = featureArr2 == null ? featureArr3 : featureArr2;
        this.f10866b = i2;
        this.f10867e = i7;
        this.f10868f = i8;
        if ("com.google.android.gms".equals(str)) {
            this.f10869j = "com.google.android.gms";
        } else {
            this.f10869j = str;
        }
        if (i2 < 2) {
            this.f10873q = iBinder != null ? AccountAccessor.getAccountBinderSafe(IAccountAccessor.Stub.asInterface(iBinder)) : null;
        } else {
            this.f10870m = iBinder;
            this.f10873q = account;
        }
        this.f10871n = scopeArr;
        this.f10872p = bundle;
        this.f10874r = featureArr;
        this.f10875s = featureArr2;
        this.f10876t = z6;
        this.f10877u = i9;
        this.f10878v = z7;
        this.f10879w = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        zzn.a(this, parcel, i2);
    }

    public final String zza() {
        return this.f10879w;
    }
}
