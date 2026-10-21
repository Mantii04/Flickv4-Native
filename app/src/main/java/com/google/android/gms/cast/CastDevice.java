package com.google.android.gms.cast;

import A.i;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class CastDevice extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CastDevice> CREATOR = new zzs();

    /* renamed from: A, reason: collision with root package name */
    public final com.google.android.gms.cast.internal.zzz f9611A;

    /* renamed from: B, reason: collision with root package name */
    public final Integer f9612B;

    /* renamed from: b, reason: collision with root package name */
    public final String f9613b;

    /* renamed from: e, reason: collision with root package name */
    public final String f9614e;

    /* renamed from: f, reason: collision with root package name */
    public final InetAddress f9615f;

    /* renamed from: j, reason: collision with root package name */
    public final String f9616j;

    /* renamed from: m, reason: collision with root package name */
    public final String f9617m;

    /* renamed from: n, reason: collision with root package name */
    public final String f9618n;

    /* renamed from: p, reason: collision with root package name */
    public final int f9619p;

    /* renamed from: q, reason: collision with root package name */
    public final List f9620q;

    /* renamed from: r, reason: collision with root package name */
    public final int f9621r;

    /* renamed from: s, reason: collision with root package name */
    public final int f9622s;

    /* renamed from: t, reason: collision with root package name */
    public final String f9623t;

    /* renamed from: u, reason: collision with root package name */
    public final String f9624u;

    /* renamed from: v, reason: collision with root package name */
    public final int f9625v;

    /* renamed from: w, reason: collision with root package name */
    public final String f9626w;

    /* renamed from: x, reason: collision with root package name */
    public final byte[] f9627x;

    /* renamed from: y, reason: collision with root package name */
    public final String f9628y;

    /* renamed from: z, reason: collision with root package name */
    public final boolean f9629z;

    public CastDevice(String str, String str2, String str3, String str4, String str5, int i2, ArrayList arrayList, int i7, int i8, String str6, String str7, int i9, String str8, byte[] bArr, String str9, boolean z6, com.google.android.gms.cast.internal.zzz zzzVar, Integer num) {
        this.f9613b = str == null ? "" : str;
        str2 = str2 == null ? "" : str2;
        this.f9614e = str2;
        if (!TextUtils.isEmpty(str2)) {
            try {
                this.f9615f = InetAddress.getByName(str2);
            } catch (UnknownHostException e3) {
                Log.i("CastDevice", "Unable to convert host address (" + this.f9614e + ") to ipaddress: " + e3.getMessage());
            }
        }
        this.f9616j = str3 == null ? "" : str3;
        this.f9617m = str4 == null ? "" : str4;
        this.f9618n = str5 == null ? "" : str5;
        this.f9619p = i2;
        this.f9620q = arrayList == null ? new ArrayList() : arrayList;
        this.f9621r = i7;
        this.f9622s = i8;
        this.f9623t = str6 == null ? "" : str6;
        this.f9624u = str7;
        this.f9625v = i9;
        this.f9626w = str8;
        this.f9627x = bArr;
        this.f9628y = str9;
        this.f9629z = z6;
        this.f9611A = zzzVar;
        this.f9612B = num;
    }

    public static CastDevice getFromBundle(Bundle bundle) {
        ClassLoader classLoader;
        if (bundle == null || (classLoader = CastDevice.class.getClassLoader()) == null) {
            return null;
        }
        bundle.setClassLoader(classLoader);
        return (CastDevice) bundle.getParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CastDevice)) {
            return false;
        }
        CastDevice castDevice = (CastDevice) obj;
        String str = this.f9613b;
        if (str == null) {
            return castDevice.f9613b == null;
        }
        if (CastUtils.zze(str, castDevice.f9613b) && CastUtils.zze(this.f9615f, castDevice.f9615f) && CastUtils.zze(this.f9617m, castDevice.f9617m) && CastUtils.zze(this.f9616j, castDevice.f9616j)) {
            String str2 = castDevice.f9618n;
            String str3 = this.f9618n;
            if (CastUtils.zze(str3, str2)) {
                int i2 = castDevice.f9619p;
                int i7 = this.f9619p;
                if (i7 == i2 && CastUtils.zze(this.f9620q, castDevice.f9620q) && this.f9621r == castDevice.f9621r && this.f9622s == castDevice.f9622s && CastUtils.zze(this.f9623t, castDevice.f9623t) && CastUtils.zze(Integer.valueOf(this.f9625v), Integer.valueOf(castDevice.f9625v)) && CastUtils.zze(this.f9626w, castDevice.f9626w) && CastUtils.zze(this.f9624u, castDevice.f9624u) && CastUtils.zze(str3, castDevice.getDeviceVersion()) && i7 == castDevice.getServicePort()) {
                    byte[] bArr = castDevice.f9627x;
                    byte[] bArr2 = this.f9627x;
                    if (((bArr2 == null && bArr == null) || Arrays.equals(bArr2, bArr)) && CastUtils.zze(this.f9628y, castDevice.f9628y) && this.f9629z == castDevice.f9629z && CastUtils.zze(zzb(), castDevice.zzb())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public String getDeviceId() {
        String str = this.f9613b;
        return str.startsWith("__cast_nearby__") ? str.substring(16) : str;
    }

    public String getDeviceVersion() {
        return this.f9618n;
    }

    public String getFriendlyName() {
        return this.f9616j;
    }

    public List<WebImage> getIcons() {
        return Collections.unmodifiableList(this.f9620q);
    }

    public String getModelName() {
        return this.f9617m;
    }

    public int getServicePort() {
        return this.f9619p;
    }

    public boolean hasCapability(int i2) {
        return (this.f9621r & i2) == i2;
    }

    public int hashCode() {
        String str = this.f9613b;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public void putInBundle(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        bundle.putParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE", this);
    }

    public String toString() {
        Locale locale = Locale.ROOT;
        String str = this.f9616j;
        if (!TextUtils.isEmpty(str)) {
            int length = str.length();
            str = length <= 2 ? length == 2 ? "xx" : "x" : String.format(locale, "%c%d%c", Character.valueOf(str.charAt(0)), Integer.valueOf(length - 2), Character.valueOf(str.charAt(length - 1)));
        }
        return i.o(i.t("\"", str, "\" ("), this.f9613b, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f9613b, false);
        SafeParcelWriter.writeString(parcel, 3, this.f9614e, false);
        SafeParcelWriter.writeString(parcel, 4, getFriendlyName(), false);
        SafeParcelWriter.writeString(parcel, 5, getModelName(), false);
        SafeParcelWriter.writeString(parcel, 6, getDeviceVersion(), false);
        SafeParcelWriter.writeInt(parcel, 7, getServicePort());
        SafeParcelWriter.writeTypedList(parcel, 8, getIcons(), false);
        SafeParcelWriter.writeInt(parcel, 9, this.f9621r);
        SafeParcelWriter.writeInt(parcel, 10, this.f9622s);
        SafeParcelWriter.writeString(parcel, 11, this.f9623t, false);
        SafeParcelWriter.writeString(parcel, 12, this.f9624u, false);
        SafeParcelWriter.writeInt(parcel, 13, this.f9625v);
        SafeParcelWriter.writeString(parcel, 14, this.f9626w, false);
        SafeParcelWriter.writeByteArray(parcel, 15, this.f9627x, false);
        SafeParcelWriter.writeString(parcel, 16, this.f9628y, false);
        SafeParcelWriter.writeBoolean(parcel, 17, this.f9629z);
        SafeParcelWriter.writeParcelable(parcel, 18, zzb(), i2, false);
        SafeParcelWriter.writeIntegerObject(parcel, 19, this.f9612B, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @ShowFirstParty
    public final int zza() {
        return this.f9621r;
    }

    public final com.google.android.gms.cast.internal.zzz zzb() {
        com.google.android.gms.cast.internal.zzz zzzVar = this.f9611A;
        if (zzzVar == null) {
            return (hasCapability(32) || hasCapability(64)) ? com.google.android.gms.cast.internal.zzy.zza(1) : zzzVar;
        }
        return zzzVar;
    }

    @ShowFirstParty
    public final String zzc() {
        return this.f9624u;
    }
}
