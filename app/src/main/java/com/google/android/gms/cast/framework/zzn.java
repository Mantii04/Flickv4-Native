package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzn implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        ArrayList<String> arrayList = null;
        LaunchOptions launchOptions = null;
        CastMediaOptions castMediaOptions = null;
        ArrayList<String> arrayList2 = null;
        zzj zzjVar = null;
        zzl zzlVar = null;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        double d7 = 0.0d;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 2:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 3:
                    arrayList = SafeParcelReader.createStringList(parcel, readHeader);
                    break;
                case 4:
                    z6 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 5:
                    launchOptions = (LaunchOptions) SafeParcelReader.createParcelable(parcel, readHeader, LaunchOptions.CREATOR);
                    break;
                case 6:
                    z7 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 7:
                    castMediaOptions = (CastMediaOptions) SafeParcelReader.createParcelable(parcel, readHeader, CastMediaOptions.CREATOR);
                    break;
                case 8:
                    z8 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 9:
                    d7 = SafeParcelReader.readDouble(parcel, readHeader);
                    break;
                case 10:
                    z9 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 11:
                    z10 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 12:
                    z11 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 13:
                    arrayList2 = SafeParcelReader.createStringList(parcel, readHeader);
                    break;
                case 14:
                    z12 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 15:
                    SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 16:
                    z13 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 17:
                    zzjVar = (zzj) SafeParcelReader.createParcelable(parcel, readHeader, zzj.CREATOR);
                    break;
                case 18:
                    zzlVar = (zzl) SafeParcelReader.createParcelable(parcel, readHeader, zzl.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new CastOptions(str, arrayList, z6, launchOptions, z7, castMediaOptions, z8, d7, z9, z10, z11, arrayList2, z12, z13, zzjVar, zzlVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new CastOptions[i2];
    }
}
