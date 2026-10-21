package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzcg implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        double d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        String str = null;
        ArrayList arrayList = null;
        int i2 = 0;
        ArrayList arrayList2 = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 2) {
                i2 = SafeParcelReader.readInt(parcel, readHeader);
            } else if (fieldId == 3) {
                str = SafeParcelReader.createString(parcel, readHeader);
            } else if (fieldId == 4) {
                arrayList2 = SafeParcelReader.createTypedList(parcel, readHeader, MediaMetadata.CREATOR);
            } else if (fieldId == 5) {
                arrayList = SafeParcelReader.createTypedList(parcel, readHeader, WebImage.CREATOR);
            } else if (fieldId != 6) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                d7 = SafeParcelReader.readDouble(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        MediaQueueContainerMetadata mediaQueueContainerMetadata = new MediaQueueContainerMetadata();
        mediaQueueContainerMetadata.f9711b = i2;
        mediaQueueContainerMetadata.f9712e = str;
        mediaQueueContainerMetadata.f9713f = arrayList2;
        mediaQueueContainerMetadata.f9714j = arrayList;
        mediaQueueContainerMetadata.f9715m = d7;
        return mediaQueueContainerMetadata;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new MediaQueueContainerMetadata[i2];
    }
}
