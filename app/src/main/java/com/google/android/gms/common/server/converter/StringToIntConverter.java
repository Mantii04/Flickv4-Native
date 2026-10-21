package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;

@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes.dex */
public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.FieldConverter<String, Integer> {
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new zad();

    /* renamed from: b, reason: collision with root package name */
    public final int f10984b;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f10985e;

    /* renamed from: f, reason: collision with root package name */
    public final SparseArray f10986f;

    @KeepForSdk
    public StringToIntConverter() {
        this.f10984b = 1;
        this.f10985e = new HashMap();
        this.f10986f = new SparseArray();
    }

    @KeepForSdk
    public StringToIntConverter add(String str, int i2) {
        this.f10985e.put(str, Integer.valueOf(i2));
        this.f10986f.put(i2, str);
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10984b);
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = this.f10985e;
        for (String str : hashMap.keySet()) {
            arrayList.add(new zac(str, ((Integer) hashMap.get(str)).intValue()));
        }
        SafeParcelWriter.writeTypedList(parcel, 2, arrayList, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.FieldConverter
    public final /* bridge */ /* synthetic */ String zad(Integer num) {
        String str = (String) this.f10986f.get(num.intValue());
        return (str == null && this.f10985e.containsKey("gms_unknown")) ? "gms_unknown" : str;
    }

    public StringToIntConverter(int i2, ArrayList arrayList) {
        this.f10984b = i2;
        this.f10985e = new HashMap();
        this.f10986f = new SparseArray();
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            zac zacVar = (zac) arrayList.get(i7);
            add(zacVar.f10990e, zacVar.f10991f);
        }
    }
}
