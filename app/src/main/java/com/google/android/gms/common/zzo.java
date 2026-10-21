package com.google.android.gms.common;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

@SafeParcelable.Class
/* loaded from: classes.dex */
public final class zzo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzo> CREATOR = new zzp();

    /* renamed from: b, reason: collision with root package name */
    public final String f11076b;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f11077e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f11078f;

    /* renamed from: j, reason: collision with root package name */
    public final Context f11079j;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f11080m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f11081n;

    public zzo(String str, boolean z6, boolean z7, IBinder iBinder, boolean z8, boolean z9) {
        this.f11076b = str;
        this.f11077e = z6;
        this.f11078f = z7;
        this.f11079j = (Context) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder));
        this.f11080m = z8;
        this.f11081n = z9;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [android.os.IBinder, com.google.android.gms.dynamic.IObjectWrapper] */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f11076b, false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.f11077e);
        SafeParcelWriter.writeBoolean(parcel, 3, this.f11078f);
        SafeParcelWriter.writeIBinder(parcel, 4, ObjectWrapper.wrap(this.f11079j), false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.f11080m);
        SafeParcelWriter.writeBoolean(parcel, 6, this.f11081n);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
