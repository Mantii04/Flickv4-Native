package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* loaded from: classes2.dex */
public final class zzaf implements Parcelable.Creator<zzac> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzac createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        String str2 = null;
        zzno zznoVar = null;
        String str3 = null;
        zzbf zzbfVar = null;
        zzbf zzbfVar2 = null;
        zzbf zzbfVar3 = null;
        long j7 = 0;
        long j8 = 0;
        long j9 = 0;
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
                    zznoVar = (zzno) SafeParcelReader.createParcelable(parcel, readHeader, zzno.CREATOR);
                    break;
                case 5:
                    j7 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 6:
                    z6 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 7:
                    str3 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 8:
                    zzbfVar = (zzbf) SafeParcelReader.createParcelable(parcel, readHeader, zzbf.CREATOR);
                    break;
                case 9:
                    j8 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 10:
                    zzbfVar2 = (zzbf) SafeParcelReader.createParcelable(parcel, readHeader, zzbf.CREATOR);
                    break;
                case 11:
                    j9 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 12:
                    zzbfVar3 = (zzbf) SafeParcelReader.createParcelable(parcel, readHeader, zzbf.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzac(str, str2, zznoVar, j7, z6, str3, zzbfVar, j8, zzbfVar2, j9, zzbfVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzac[] newArray(int i2) {
        return new zzac[i2];
    }
}
