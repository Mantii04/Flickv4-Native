package com.google.android.gms.cast.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.zzav;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* loaded from: classes.dex */
public final class zzac implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        double d7 = 0.0d;
        double d8 = 0.0d;
        ApplicationMetadata applicationMetadata = null;
        zzav zzavVar = null;
        boolean z6 = false;
        int i2 = 0;
        int i7 = 0;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 2:
                    d7 = SafeParcelReader.readDouble(parcel, readHeader);
                    break;
                case 3:
                    z6 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 4:
                    i2 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 5:
                    applicationMetadata = (ApplicationMetadata) SafeParcelReader.createParcelable(parcel, readHeader, ApplicationMetadata.CREATOR);
                    break;
                case 6:
                    i7 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 7:
                    zzavVar = (zzav) SafeParcelReader.createParcelable(parcel, readHeader, zzav.CREATOR);
                    break;
                case 8:
                    d8 = SafeParcelReader.readDouble(parcel, readHeader);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzab(d7, z6, i2, applicationMetadata, i7, zzavVar, d8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzab[i2];
    }
}
