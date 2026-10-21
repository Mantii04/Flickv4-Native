package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* loaded from: classes.dex */
public final class zan implements Parcelable.Creator<MethodInvocation> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ MethodInvocation createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        int i2 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        long j7 = 0;
        long j8 = 0;
        String str = null;
        String str2 = null;
        int i10 = -1;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 1:
                    i2 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 2:
                    i7 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 3:
                    i8 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 4:
                    j7 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 5:
                    j8 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 6:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 7:
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 8:
                    i9 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 9:
                    i10 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new MethodInvocation(i2, i7, i8, j7, j8, str, str2, i9, i10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MethodInvocation[] newArray(int i2) {
        return new MethodInvocation[i2];
    }
}
