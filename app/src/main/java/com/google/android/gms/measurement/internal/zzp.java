package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class zzp implements Parcelable.Creator<zzn> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzn createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        Boolean bool = null;
        ArrayList<String> arrayList = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        long j7 = 0;
        long j8 = 0;
        long j9 = 0;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        boolean z6 = true;
        boolean z7 = true;
        boolean z8 = false;
        int i2 = 0;
        boolean z9 = false;
        boolean z10 = false;
        int i7 = 0;
        long j14 = -2147483648L;
        String str11 = "";
        String str12 = str11;
        String str13 = str12;
        String str14 = str13;
        int i8 = 100;
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
                    j7 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 7:
                    j8 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 8:
                    str5 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 9:
                    z6 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 10:
                    z8 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 11:
                    j14 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 12:
                    str6 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 13:
                    j9 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 14:
                    j10 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 15:
                    i2 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 16:
                    z7 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 17:
                case 20:
                case 33:
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
                case 18:
                    z9 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 19:
                    str7 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 21:
                    bool = SafeParcelReader.readBooleanObject(parcel, readHeader);
                    break;
                case 22:
                    j11 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 23:
                    arrayList = SafeParcelReader.createStringList(parcel, readHeader);
                    break;
                case 24:
                    str8 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 25:
                    str11 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 26:
                    str12 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 27:
                    str9 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 28:
                    z10 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 29:
                    j12 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 30:
                    i8 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 31:
                    str13 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 32:
                    i7 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 34:
                    j13 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 35:
                    str10 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 36:
                    str14 = SafeParcelReader.createString(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzn(str, str2, str3, str4, j7, j8, str5, z6, z8, j14, str6, j9, j10, i2, z7, z9, str7, bool, j11, arrayList, str8, str11, str12, str9, z10, j12, i8, str13, i7, j13, str10, str14);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzn[] newArray(int i2) {
        return new zzn[i2];
    }
}
