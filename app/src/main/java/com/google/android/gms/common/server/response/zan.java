package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@ShowFirstParty
@SafeParcelable.Class
/* loaded from: classes.dex */
public final class zan extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zan> CREATOR = new zao();

    /* renamed from: b, reason: collision with root package name */
    public final int f11016b;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f11017e;

    /* renamed from: f, reason: collision with root package name */
    public final String f11018f;

    public zan(int i2, String str, ArrayList arrayList) {
        this.f11016b = i2;
        HashMap hashMap = new HashMap();
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            zal zalVar = (zal) arrayList.get(i7);
            String str2 = zalVar.f11011e;
            HashMap hashMap2 = new HashMap();
            ArrayList arrayList2 = zalVar.f11012f;
            int size2 = ((ArrayList) Preconditions.checkNotNull(arrayList2)).size();
            for (int i8 = 0; i8 < size2; i8++) {
                zam zamVar = (zam) arrayList2.get(i8);
                hashMap2.put(zamVar.f11014e, zamVar.f11015f);
            }
            hashMap.put(str2, hashMap2);
        }
        this.f11017e = hashMap;
        this.f11018f = (String) Preconditions.checkNotNull(str);
        zad();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        HashMap hashMap = this.f11017e;
        for (String str : hashMap.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map map = (Map) hashMap.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f11016b);
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = this.f11017e;
        for (String str : hashMap.keySet()) {
            arrayList.add(new zal(str, (Map) hashMap.get(str)));
        }
        SafeParcelWriter.writeTypedList(parcel, 2, arrayList, false);
        SafeParcelWriter.writeString(parcel, 3, this.f11018f, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final String zaa() {
        return this.f11018f;
    }

    public final Map<String, FastJsonResponse.Field<?, ?>> zab(String str) {
        return (Map) this.f11017e.get(str);
    }

    public final void zad() {
        HashMap hashMap = this.f11017e;
        Iterator it = hashMap.keySet().iterator();
        while (it.hasNext()) {
            Map map = (Map) hashMap.get((String) it.next());
            Iterator it2 = map.keySet().iterator();
            while (it2.hasNext()) {
                ((FastJsonResponse.Field) map.get((String) it2.next())).zai(this);
            }
        }
    }
}
