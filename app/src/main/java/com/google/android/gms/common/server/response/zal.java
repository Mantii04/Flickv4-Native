package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.Map;

@ShowFirstParty
@SafeParcelable.Class
/* loaded from: classes.dex */
public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new zap();

    /* renamed from: b, reason: collision with root package name */
    public final int f11010b;

    /* renamed from: e, reason: collision with root package name */
    public final String f11011e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f11012f;

    public zal(int i2, String str, ArrayList arrayList) {
        this.f11010b = i2;
        this.f11011e = str;
        this.f11012f = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f11010b);
        SafeParcelWriter.writeString(parcel, 2, this.f11011e, false);
        SafeParcelWriter.writeTypedList(parcel, 3, this.f11012f, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zal(String str, Map map) {
        ArrayList arrayList;
        this.f11010b = 1;
        this.f11011e = str;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (String str2 : map.keySet()) {
                arrayList.add(new zam(str2, (FastJsonResponse.Field) map.get(str2)));
            }
        }
        this.f11012f = arrayList;
    }
}
