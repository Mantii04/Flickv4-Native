package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;

@KeepForSdk
@SafeParcelable.Class
@Deprecated
/* loaded from: classes.dex */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new zza();

    /* renamed from: b, reason: collision with root package name */
    public final int f11022b;

    /* renamed from: e, reason: collision with root package name */
    public final long f11023e;

    /* renamed from: f, reason: collision with root package name */
    public final int f11024f;

    /* renamed from: j, reason: collision with root package name */
    public final String f11025j;

    /* renamed from: m, reason: collision with root package name */
    public final String f11026m;

    /* renamed from: n, reason: collision with root package name */
    public final String f11027n;

    /* renamed from: p, reason: collision with root package name */
    public final int f11028p;

    /* renamed from: q, reason: collision with root package name */
    public final ArrayList f11029q;

    /* renamed from: r, reason: collision with root package name */
    public final String f11030r;

    /* renamed from: s, reason: collision with root package name */
    public final long f11031s;

    /* renamed from: t, reason: collision with root package name */
    public final int f11032t;

    /* renamed from: u, reason: collision with root package name */
    public final String f11033u;

    /* renamed from: v, reason: collision with root package name */
    public final float f11034v;

    /* renamed from: w, reason: collision with root package name */
    public final long f11035w;

    /* renamed from: x, reason: collision with root package name */
    public final boolean f11036x;

    public WakeLockEvent(int i2, long j7, int i7, String str, int i8, ArrayList arrayList, String str2, long j8, int i9, String str3, String str4, float f3, long j9, String str5, boolean z6) {
        this.f11022b = i2;
        this.f11023e = j7;
        this.f11024f = i7;
        this.f11025j = str;
        this.f11026m = str3;
        this.f11027n = str5;
        this.f11028p = i8;
        this.f11029q = arrayList;
        this.f11030r = str2;
        this.f11031s = j8;
        this.f11032t = i9;
        this.f11033u = str4;
        this.f11034v = f3;
        this.f11035w = j9;
        this.f11036x = z6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f11022b);
        SafeParcelWriter.writeLong(parcel, 2, this.f11023e);
        SafeParcelWriter.writeString(parcel, 4, this.f11025j, false);
        SafeParcelWriter.writeInt(parcel, 5, this.f11028p);
        SafeParcelWriter.writeStringList(parcel, 6, this.f11029q, false);
        SafeParcelWriter.writeLong(parcel, 8, this.f11031s);
        SafeParcelWriter.writeString(parcel, 10, this.f11026m, false);
        SafeParcelWriter.writeInt(parcel, 11, this.f11024f);
        SafeParcelWriter.writeString(parcel, 12, this.f11030r, false);
        SafeParcelWriter.writeString(parcel, 13, this.f11033u, false);
        SafeParcelWriter.writeInt(parcel, 14, this.f11032t);
        SafeParcelWriter.writeFloat(parcel, 15, this.f11034v);
        SafeParcelWriter.writeLong(parcel, 16, this.f11035w);
        SafeParcelWriter.writeString(parcel, 17, this.f11027n, false);
        SafeParcelWriter.writeBoolean(parcel, 18, this.f11036x);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int zza() {
        return this.f11024f;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long zzb() {
        return this.f11023e;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final String zzc() {
        ArrayList arrayList = this.f11029q;
        String join = arrayList == null ? "" : TextUtils.join(",", arrayList);
        StringBuilder sb = new StringBuilder("\t");
        sb.append(this.f11025j);
        sb.append("\t");
        sb.append(this.f11028p);
        sb.append("\t");
        sb.append(join);
        sb.append("\t");
        sb.append(this.f11032t);
        sb.append("\t");
        String str = this.f11026m;
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append("\t");
        String str2 = this.f11033u;
        if (str2 == null) {
            str2 = "";
        }
        sb.append(str2);
        sb.append("\t");
        sb.append(this.f11034v);
        sb.append("\t");
        String str3 = this.f11027n;
        sb.append(str3 != null ? str3 : "");
        sb.append("\t");
        sb.append(this.f11036x);
        return sb.toString();
    }
}
