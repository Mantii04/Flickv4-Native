package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class NotificationAction extends AbstractSafeParcelable {
    public static final Parcelable.Creator<NotificationAction> CREATOR = new zzx();

    /* renamed from: b, reason: collision with root package name */
    public final String f9973b;

    /* renamed from: e, reason: collision with root package name */
    public final int f9974e;

    /* renamed from: f, reason: collision with root package name */
    public final String f9975f;

    public static final class Builder {
    }

    public NotificationAction(String str, int i2, String str2) {
        this.f9973b = str;
        this.f9974e = i2;
        this.f9975f = str2;
    }

    public String getAction() {
        return this.f9973b;
    }

    public String getContentDescription() {
        return this.f9975f;
    }

    public int getIconResId() {
        return this.f9974e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getAction(), false);
        SafeParcelWriter.writeInt(parcel, 3, getIconResId());
        SafeParcelWriter.writeString(parcel, 4, getContentDescription(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
