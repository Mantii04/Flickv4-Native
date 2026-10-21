package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzcm implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        MediaInfo mediaInfo = null;
        long[] jArr = null;
        String str = null;
        ArrayList arrayList = null;
        AdBreakStatus adBreakStatus = null;
        VideoInfo videoInfo = null;
        MediaLiveSeekableRange mediaLiveSeekableRange = null;
        MediaQueueData mediaQueueData = null;
        int i2 = 0;
        int i7 = 0;
        int i8 = 0;
        boolean z6 = false;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        boolean z7 = false;
        double d7 = 0.0d;
        double d8 = 0.0d;
        long j7 = 0;
        long j8 = 0;
        long j9 = 0;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 2:
                    mediaInfo = (MediaInfo) SafeParcelReader.createParcelable(parcel, readHeader, MediaInfo.CREATOR);
                    break;
                case 3:
                    j7 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 4:
                    i2 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 5:
                    d7 = SafeParcelReader.readDouble(parcel, readHeader);
                    break;
                case 6:
                    i7 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 7:
                    i8 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 8:
                    j8 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 9:
                    j9 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 10:
                    d8 = SafeParcelReader.readDouble(parcel, readHeader);
                    break;
                case 11:
                    z6 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 12:
                    jArr = SafeParcelReader.createLongArray(parcel, readHeader);
                    break;
                case 13:
                    i9 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 14:
                    i10 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 15:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 16:
                    i11 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 17:
                    arrayList = SafeParcelReader.createTypedList(parcel, readHeader, MediaQueueItem.CREATOR);
                    break;
                case 18:
                    z7 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 19:
                    adBreakStatus = (AdBreakStatus) SafeParcelReader.createParcelable(parcel, readHeader, AdBreakStatus.CREATOR);
                    break;
                case 20:
                    videoInfo = (VideoInfo) SafeParcelReader.createParcelable(parcel, readHeader, VideoInfo.CREATOR);
                    break;
                case 21:
                    mediaLiveSeekableRange = (MediaLiveSeekableRange) SafeParcelReader.createParcelable(parcel, readHeader, MediaLiveSeekableRange.CREATOR);
                    break;
                case 22:
                    mediaQueueData = (MediaQueueData) SafeParcelReader.createParcelable(parcel, readHeader, MediaQueueData.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new MediaStatus(mediaInfo, j7, i2, d7, i7, i8, j8, j9, d8, z6, jArr, i9, i10, str, i11, arrayList, z7, adBreakStatus, videoInfo, mediaLiveSeekableRange, mediaQueueData);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new MediaStatus[i2];
    }
}
