package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* loaded from: classes.dex */
public final class zzcc implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        long j7 = 0;
        long j8 = 0;
        MediaInfo mediaInfo = null;
        MediaQueueData mediaQueueData = null;
        Boolean bool = null;
        long[] jArr = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        double d7 = 0.0d;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 2:
                    mediaInfo = (MediaInfo) SafeParcelReader.createParcelable(parcel, readHeader, MediaInfo.CREATOR);
                    break;
                case 3:
                    mediaQueueData = (MediaQueueData) SafeParcelReader.createParcelable(parcel, readHeader, MediaQueueData.CREATOR);
                    break;
                case 4:
                    bool = SafeParcelReader.readBooleanObject(parcel, readHeader);
                    break;
                case 5:
                    j7 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 6:
                    d7 = SafeParcelReader.readDouble(parcel, readHeader);
                    break;
                case 7:
                    jArr = SafeParcelReader.createLongArray(parcel, readHeader);
                    break;
                case 8:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 9:
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 10:
                    str3 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 11:
                    str4 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 12:
                    str5 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 13:
                    j8 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new MediaLoadRequestData(mediaInfo, mediaQueueData, bool, j7, d7, jArr, CastUtils.jsonStringToJsonObject(str), str2, str3, str4, str5, j8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new MediaLoadRequestData[i2];
    }
}
