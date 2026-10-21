package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class AdBreakStatus extends AbstractSafeParcelable {

    /* renamed from: b, reason: collision with root package name */
    public final long f9588b;

    /* renamed from: e, reason: collision with root package name */
    public final long f9589e;

    /* renamed from: f, reason: collision with root package name */
    public final String f9590f;

    /* renamed from: j, reason: collision with root package name */
    public final String f9591j;

    /* renamed from: m, reason: collision with root package name */
    public final long f9592m;

    /* renamed from: n, reason: collision with root package name */
    public static final Logger f9587n = new Logger("AdBreakStatus");
    public static final Parcelable.Creator<AdBreakStatus> CREATOR = new zzc();

    public static class Builder {
    }

    public AdBreakStatus(long j7, long j8, String str, String str2, long j9) {
        this.f9588b = j7;
        this.f9589e = j8;
        this.f9590f = str;
        this.f9591j = str2;
        this.f9592m = j9;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakStatus)) {
            return false;
        }
        AdBreakStatus adBreakStatus = (AdBreakStatus) obj;
        return this.f9588b == adBreakStatus.f9588b && this.f9589e == adBreakStatus.f9589e && CastUtils.zze(this.f9590f, adBreakStatus.f9590f) && CastUtils.zze(this.f9591j, adBreakStatus.f9591j) && this.f9592m == adBreakStatus.f9592m;
    }

    public String getBreakClipId() {
        return this.f9591j;
    }

    public String getBreakId() {
        return this.f9590f;
    }

    public long getCurrentBreakClipTimeInMs() {
        return this.f9589e;
    }

    public long getCurrentBreakTimeInMs() {
        return this.f9588b;
    }

    public long getWhenSkippableInMs() {
        return this.f9592m;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f9588b), Long.valueOf(this.f9589e), this.f9590f, this.f9591j, Long.valueOf(this.f9592m));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 2, getCurrentBreakTimeInMs());
        SafeParcelWriter.writeLong(parcel, 3, getCurrentBreakClipTimeInMs());
        SafeParcelWriter.writeString(parcel, 4, getBreakId(), false);
        SafeParcelWriter.writeString(parcel, 5, getBreakClipId(), false);
        SafeParcelWriter.writeLong(parcel, 6, getWhenSkippableInMs());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
