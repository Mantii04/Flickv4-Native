package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* loaded from: classes.dex */
public final class zzck implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        MediaInfo mediaInfo = null;
        long[] jArr = null;
        String str = null;
        double d7 = 0.0d;
        double d8 = 0.0d;
        double d9 = 0.0d;
        int i2 = 0;
        boolean z6 = false;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 2:
                    mediaInfo = (MediaInfo) SafeParcelReader.createParcelable(parcel, readHeader, MediaInfo.CREATOR);
                    break;
                case 3:
                    i2 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 4:
                    z6 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 5:
                    d7 = SafeParcelReader.readDouble(parcel, readHeader);
                    break;
                case 6:
                    d8 = SafeParcelReader.readDouble(parcel, readHeader);
                    break;
                case 7:
                    d9 = SafeParcelReader.readDouble(parcel, readHeader);
                    break;
                case 8:
                    jArr = SafeParcelReader.createLongArray(parcel, readHeader);
                    break;
                case 9:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new MediaQueueItem(mediaInfo, i2, z6, d7, d8, d9, jArr, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new MediaQueueItem[i2];
    }
}
