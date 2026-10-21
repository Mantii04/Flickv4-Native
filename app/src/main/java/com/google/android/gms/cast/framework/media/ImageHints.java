package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class ImageHints extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ImageHints> CREATOR = new zzh();

    /* renamed from: b, reason: collision with root package name */
    public final int f9941b;

    /* renamed from: e, reason: collision with root package name */
    public final int f9942e;

    /* renamed from: f, reason: collision with root package name */
    public final int f9943f;

    @ShowFirstParty
    @SafeParcelable.Constructor
    public ImageHints(@SafeParcelable.Param int i2, @SafeParcelable.Param int i7, @SafeParcelable.Param int i8) {
        this.f9941b = i2;
        this.f9942e = i7;
        this.f9943f = i8;
    }

    public int getHeightInPixels() {
        return this.f9943f;
    }

    public int getType() {
        return this.f9941b;
    }

    public int getWidthInPixels() {
        return this.f9942e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, getType());
        SafeParcelWriter.writeInt(parcel, 3, getWidthInPixels());
        SafeParcelWriter.writeInt(parcel, 4, getHeightInPixels());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
