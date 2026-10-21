package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
/* loaded from: classes2.dex */
public final class zzno extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzno> CREATOR = new zznr();

    /* renamed from: b, reason: collision with root package name */
    public final int f12226b;

    /* renamed from: e, reason: collision with root package name */
    public final String f12227e;

    /* renamed from: f, reason: collision with root package name */
    public final long f12228f;

    /* renamed from: j, reason: collision with root package name */
    public final Long f12229j;

    /* renamed from: m, reason: collision with root package name */
    public final String f12230m;

    /* renamed from: n, reason: collision with root package name */
    public final String f12231n;

    /* renamed from: p, reason: collision with root package name */
    public final Double f12232p;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzno(com.google.android.gms.measurement.internal.zznq r7) {
        /*
            r6 = this;
            java.lang.String r4 = r7.f12235c
            java.lang.Object r3 = r7.f12237e
            java.lang.String r5 = r7.f12234b
            long r1 = r7.f12236d
            r0 = r6
            r0.<init>(r1, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzno.<init>(com.google.android.gms.measurement.internal.zznq):void");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f12226b);
        SafeParcelWriter.writeString(parcel, 2, this.f12227e, false);
        SafeParcelWriter.writeLong(parcel, 3, this.f12228f);
        SafeParcelWriter.writeLongObject(parcel, 4, this.f12229j, false);
        SafeParcelWriter.writeFloatObject(parcel, 5, null, false);
        SafeParcelWriter.writeString(parcel, 6, this.f12230m, false);
        SafeParcelWriter.writeString(parcel, 7, this.f12231n, false);
        SafeParcelWriter.writeDoubleObject(parcel, 8, this.f12232p, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final Object zza() {
        Long l7 = this.f12229j;
        if (l7 != null) {
            return l7;
        }
        Double d7 = this.f12232p;
        if (d7 != null) {
            return d7;
        }
        String str = this.f12230m;
        if (str != null) {
            return str;
        }
        return null;
    }

    public zzno(long j7, Object obj, String str, String str2) {
        Preconditions.checkNotEmpty(str);
        this.f12226b = 2;
        this.f12227e = str;
        this.f12228f = j7;
        this.f12231n = str2;
        if (obj == null) {
            this.f12229j = null;
            this.f12232p = null;
            this.f12230m = null;
            return;
        }
        if (obj instanceof Long) {
            this.f12229j = (Long) obj;
            this.f12232p = null;
            this.f12230m = null;
        } else if (obj instanceof String) {
            this.f12229j = null;
            this.f12232p = null;
            this.f12230m = (String) obj;
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("User attribute given of un-supported type");
            }
            this.f12229j = null;
            this.f12232p = (Double) obj;
            this.f12230m = null;
        }
    }

    public zzno(int i2, String str, long j7, Long l7, Float f3, String str2, String str3, Double d7) {
        this.f12226b = i2;
        this.f12227e = str;
        this.f12228f = j7;
        this.f12229j = l7;
        if (i2 == 1) {
            this.f12232p = f3 != null ? Double.valueOf(f3.doubleValue()) : null;
        } else {
            this.f12232p = d7;
        }
        this.f12230m = str2;
        this.f12231n = str3;
    }
}
