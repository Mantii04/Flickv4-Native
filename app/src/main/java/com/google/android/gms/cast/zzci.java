package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzci implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        int i2 = 0;
        long j7 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        MediaQueueContainerMetadata mediaQueueContainerMetadata = null;
        ArrayList arrayList = null;
        int i7 = 0;
        int i8 = 0;
        boolean z6 = false;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 2:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 3:
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 4:
                    i2 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 5:
                    str3 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 6:
                    mediaQueueContainerMetadata = (MediaQueueContainerMetadata) SafeParcelReader.createParcelable(parcel, readHeader, MediaQueueContainerMetadata.CREATOR);
                    break;
                case 7:
                    i7 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 8:
                    arrayList = SafeParcelReader.createTypedList(parcel, readHeader, MediaQueueItem.CREATOR);
                    break;
                case 9:
                    i8 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 10:
                    j7 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 11:
                    z6 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        MediaQueueData mediaQueueData = new MediaQueueData();
        mediaQueueData.f9717b = str;
        mediaQueueData.f9718e = str2;
        mediaQueueData.f9719f = i2;
        mediaQueueData.f9720j = str3;
        mediaQueueData.f9721m = mediaQueueContainerMetadata;
        mediaQueueData.f9722n = i7;
        mediaQueueData.f9723p = arrayList;
        mediaQueueData.f9724q = i8;
        mediaQueueData.f9725r = j7;
        mediaQueueData.f9726s = z6;
        return mediaQueueData;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new MediaQueueData[i2];
    }
}
