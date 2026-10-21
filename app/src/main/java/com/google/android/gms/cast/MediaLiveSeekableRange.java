package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class MediaLiveSeekableRange extends AbstractSafeParcelable {

    /* renamed from: b, reason: collision with root package name */
    public final long f9681b;

    /* renamed from: e, reason: collision with root package name */
    public final long f9682e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f9683f;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f9684j;

    /* renamed from: m, reason: collision with root package name */
    public static final Logger f9680m = new Logger("MediaLiveSeekableRange");
    public static final Parcelable.Creator<MediaLiveSeekableRange> CREATOR = new zzbz();

    public static class Builder {
    }

    public MediaLiveSeekableRange(long j7, long j8, boolean z6, boolean z7) {
        this.f9681b = Math.max(j7, 0L);
        this.f9682e = Math.max(j8, 0L);
        this.f9683f = z6;
        this.f9684j = z7;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaLiveSeekableRange)) {
            return false;
        }
        MediaLiveSeekableRange mediaLiveSeekableRange = (MediaLiveSeekableRange) obj;
        return this.f9681b == mediaLiveSeekableRange.f9681b && this.f9682e == mediaLiveSeekableRange.f9682e && this.f9683f == mediaLiveSeekableRange.f9683f && this.f9684j == mediaLiveSeekableRange.f9684j;
    }

    public long getEndTime() {
        return this.f9682e;
    }

    public long getStartTime() {
        return this.f9681b;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f9681b), Long.valueOf(this.f9682e), Boolean.valueOf(this.f9683f), Boolean.valueOf(this.f9684j));
    }

    public boolean isLiveDone() {
        return this.f9684j;
    }

    public boolean isMovingWindow() {
        return this.f9683f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 2, getStartTime());
        SafeParcelWriter.writeLong(parcel, 3, getEndTime());
        SafeParcelWriter.writeBoolean(parcel, 4, isMovingWindow());
        SafeParcelWriter.writeBoolean(parcel, 5, isLiveDone());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
