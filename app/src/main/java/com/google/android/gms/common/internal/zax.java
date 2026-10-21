package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
/* loaded from: classes.dex */
public final class zax extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zax> CREATOR = new zay();

    /* renamed from: b, reason: collision with root package name */
    public final int f10931b;

    /* renamed from: e, reason: collision with root package name */
    public final int f10932e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10933f;

    /* renamed from: j, reason: collision with root package name */
    public final Scope[] f10934j;

    public zax(int i2, int i7, int i8, Scope[] scopeArr) {
        this.f10931b = i2;
        this.f10932e = i7;
        this.f10933f = i8;
        this.f10934j = scopeArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10931b);
        SafeParcelWriter.writeInt(parcel, 2, this.f10932e);
        SafeParcelWriter.writeInt(parcel, 3, this.f10933f);
        SafeParcelWriter.writeTypedArray(parcel, 4, this.f10934j, i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
