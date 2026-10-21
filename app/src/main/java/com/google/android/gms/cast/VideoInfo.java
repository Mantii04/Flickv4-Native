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
public final class VideoInfo extends AbstractSafeParcelable {

    /* renamed from: b, reason: collision with root package name */
    public final int f9808b;

    /* renamed from: e, reason: collision with root package name */
    public final int f9809e;

    /* renamed from: f, reason: collision with root package name */
    public final int f9810f;

    /* renamed from: j, reason: collision with root package name */
    public static final Logger f9807j = new Logger("VideoInfo");
    public static final Parcelable.Creator<VideoInfo> CREATOR = new zzdu();

    public static class Builder {
    }

    public VideoInfo(int i2, int i7, int i8) {
        this.f9808b = i2;
        this.f9809e = i7;
        this.f9810f = i8;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoInfo)) {
            return false;
        }
        VideoInfo videoInfo = (VideoInfo) obj;
        return this.f9809e == videoInfo.getHeight() && this.f9808b == videoInfo.getWidth() && this.f9810f == videoInfo.getHdrType();
    }

    public int getHdrType() {
        return this.f9810f;
    }

    public int getHeight() {
        return this.f9809e;
    }

    public int getWidth() {
        return this.f9808b;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f9809e), Integer.valueOf(this.f9808b), Integer.valueOf(this.f9810f));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, getWidth());
        SafeParcelWriter.writeInt(parcel, 3, getHeight());
        SafeParcelWriter.writeInt(parcel, 4, getHdrType());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
