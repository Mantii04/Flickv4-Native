package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
/* loaded from: classes.dex */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new zzr();

    /* renamed from: b, reason: collision with root package name */
    public final boolean f11082b;

    /* renamed from: e, reason: collision with root package name */
    public final String f11083e;

    /* renamed from: f, reason: collision with root package name */
    public final int f11084f;

    /* renamed from: j, reason: collision with root package name */
    public final int f11085j;

    public zzq(boolean z6, String str, int i2, int i7) {
        this.f11082b = z6;
        this.f11083e = str;
        this.f11084f = zzy.a(i2) - 1;
        int i8 = 1;
        int[] iArr = {1, 2, 3};
        int i9 = 0;
        while (true) {
            if (i9 >= 3) {
                break;
            }
            int i10 = iArr[i9];
            int i11 = i10 - 1;
            if (i10 == 0) {
                throw null;
            }
            if (i11 == i7) {
                i8 = i10;
                break;
            }
            i9++;
        }
        this.f11085j = i8 - 1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.f11082b);
        SafeParcelWriter.writeString(parcel, 2, this.f11083e, false);
        SafeParcelWriter.writeInt(parcel, 3, this.f11084f);
        SafeParcelWriter.writeInt(parcel, 4, this.f11085j);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final String zza() {
        return this.f11083e;
    }

    public final boolean zzb() {
        return this.f11082b;
    }

    public final int zzc() {
        int[] iArr = {1, 2, 3};
        for (int i2 = 0; i2 < 3; i2++) {
            int i7 = iArr[i2];
            int i8 = i7 - 1;
            if (i7 == 0) {
                throw null;
            }
            if (i8 == this.f11085j) {
                return i7;
            }
        }
        return 1;
    }

    public final int zzd() {
        return zzy.a(this.f11084f);
    }
}
