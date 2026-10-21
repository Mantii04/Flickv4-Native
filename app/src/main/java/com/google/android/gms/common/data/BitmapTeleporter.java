package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.nio.ByteBuffer;

@ShowFirstParty
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes.dex */
public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new zaa();

    /* renamed from: b, reason: collision with root package name */
    public final int f10818b;

    /* renamed from: e, reason: collision with root package name */
    public ParcelFileDescriptor f10819e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10820f;

    public BitmapTeleporter(int i2, ParcelFileDescriptor parcelFileDescriptor, int i7) {
        this.f10818b = i2;
        this.f10819e = parcelFileDescriptor;
        this.f10820f = i7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        if (this.f10819e == null) {
            Bitmap bitmap = (Bitmap) Preconditions.checkNotNull(null);
            ByteBuffer allocate = ByteBuffer.allocate(bitmap.getHeight() * bitmap.getRowBytes());
            bitmap.copyPixelsToBuffer(allocate);
            allocate.array();
            throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel");
        }
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10818b);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f10819e, i2 | 1, false);
        SafeParcelWriter.writeInt(parcel, 3, this.f10820f);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        this.f10819e = null;
    }
}
