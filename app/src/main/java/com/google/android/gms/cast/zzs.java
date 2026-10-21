package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzs implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        ArrayList arrayList = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        byte[] bArr = null;
        String str9 = null;
        com.google.android.gms.cast.internal.zzz zzzVar = null;
        Integer num = null;
        int i2 = 0;
        int i7 = 0;
        int i8 = 0;
        boolean z6 = false;
        int i9 = -1;
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
                    str3 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 5:
                    str4 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 6:
                    str5 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 7:
                    i2 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 8:
                    arrayList = SafeParcelReader.createTypedList(parcel, readHeader, WebImage.CREATOR);
                    break;
                case 9:
                    i7 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 10:
                    i9 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 11:
                    str6 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 12:
                    str7 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 13:
                    i8 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 14:
                    str8 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 15:
                    bArr = SafeParcelReader.createByteArray(parcel, readHeader);
                    break;
                case 16:
                    str9 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 17:
                    z6 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 18:
                    zzzVar = (com.google.android.gms.cast.internal.zzz) SafeParcelReader.createParcelable(parcel, readHeader, com.google.android.gms.cast.internal.zzz.CREATOR);
                    break;
                case 19:
                    num = SafeParcelReader.readIntegerObject(parcel, readHeader);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new CastDevice(str, str2, str3, str4, str5, i2, arrayList, i7, i9, str6, str7, i8, str8, bArr, str9, z6, zzzVar, num);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new CastDevice[i2];
    }
}
