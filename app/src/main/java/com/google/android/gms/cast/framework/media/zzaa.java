package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzaa implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        int i2 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        int i29 = 0;
        int i30 = 0;
        int i31 = 0;
        int i32 = 0;
        boolean z6 = false;
        boolean z7 = false;
        ArrayList<String> arrayList = null;
        int[] iArr = null;
        String str = null;
        IBinder iBinder = null;
        long j7 = 0;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 2:
                    arrayList = SafeParcelReader.createStringList(parcel, readHeader);
                    break;
                case 3:
                    iArr = SafeParcelReader.createIntArray(parcel, readHeader);
                    break;
                case 4:
                    j7 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 5:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 6:
                    i2 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 7:
                    i7 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 8:
                    i8 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 9:
                    i9 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 10:
                    i10 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 11:
                    i11 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 12:
                    i12 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 13:
                    i13 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 14:
                    i14 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 15:
                    i15 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 16:
                    i16 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 17:
                    i17 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 18:
                    i18 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 19:
                    i19 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 20:
                    i20 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 21:
                    i21 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 22:
                    i22 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 23:
                    i23 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 24:
                    i24 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 25:
                    i25 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 26:
                    i26 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 27:
                    i27 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 28:
                    i28 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 29:
                    i29 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 30:
                    i30 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 31:
                    i31 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 32:
                    i32 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 33:
                    iBinder = SafeParcelReader.readIBinder(parcel, readHeader);
                    break;
                case 34:
                    z6 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 35:
                    z7 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new NotificationOptions(arrayList, iArr, j7, str, i2, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28, i29, i30, i31, i32, iBinder, z6, z7);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new NotificationOptions[i2];
    }
}
