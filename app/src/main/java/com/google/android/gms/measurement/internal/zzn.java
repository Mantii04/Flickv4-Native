package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2.dex */
public final class zzn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzn> CREATOR = new zzp();

    /* renamed from: A, reason: collision with root package name */
    public final Boolean f12139A;

    /* renamed from: B, reason: collision with root package name */
    public final long f12140B;

    /* renamed from: C, reason: collision with root package name */
    public final List f12141C;

    /* renamed from: D, reason: collision with root package name */
    public final String f12142D;

    /* renamed from: E, reason: collision with root package name */
    public final String f12143E;

    /* renamed from: F, reason: collision with root package name */
    public final String f12144F;

    /* renamed from: G, reason: collision with root package name */
    public final String f12145G;

    /* renamed from: H, reason: collision with root package name */
    public final boolean f12146H;

    /* renamed from: I, reason: collision with root package name */
    public final long f12147I;

    /* renamed from: J, reason: collision with root package name */
    public final int f12148J;

    /* renamed from: K, reason: collision with root package name */
    public final String f12149K;

    /* renamed from: L, reason: collision with root package name */
    public final int f12150L;

    /* renamed from: M, reason: collision with root package name */
    public final long f12151M;

    /* renamed from: N, reason: collision with root package name */
    public final String f12152N;

    /* renamed from: O, reason: collision with root package name */
    public final String f12153O;

    /* renamed from: b, reason: collision with root package name */
    public final String f12154b;

    /* renamed from: e, reason: collision with root package name */
    public final String f12155e;

    /* renamed from: f, reason: collision with root package name */
    public final String f12156f;

    /* renamed from: j, reason: collision with root package name */
    public final String f12157j;

    /* renamed from: m, reason: collision with root package name */
    public final long f12158m;

    /* renamed from: n, reason: collision with root package name */
    public final long f12159n;

    /* renamed from: p, reason: collision with root package name */
    public final String f12160p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f12161q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f12162r;

    /* renamed from: s, reason: collision with root package name */
    public final long f12163s;

    /* renamed from: t, reason: collision with root package name */
    public final String f12164t;

    /* renamed from: u, reason: collision with root package name */
    public final long f12165u;

    /* renamed from: v, reason: collision with root package name */
    public final long f12166v;

    /* renamed from: w, reason: collision with root package name */
    public final int f12167w;

    /* renamed from: x, reason: collision with root package name */
    public final boolean f12168x;

    /* renamed from: y, reason: collision with root package name */
    public final boolean f12169y;

    /* renamed from: z, reason: collision with root package name */
    public final String f12170z;

    public zzn(String str, String str2, String str3, long j7, String str4, long j8, long j9, String str5, boolean z6, boolean z7, String str6, long j10, long j11, int i2, boolean z8, boolean z9, String str7, Boolean bool, long j12, List list, String str8, String str9, String str10, boolean z10, long j13, int i7, String str11, int i8, long j14, String str12, String str13) {
        Preconditions.checkNotEmpty(str);
        this.f12154b = str;
        this.f12155e = TextUtils.isEmpty(str2) ? null : str2;
        this.f12156f = str3;
        this.f12163s = j7;
        this.f12157j = str4;
        this.f12158m = j8;
        this.f12159n = j9;
        this.f12160p = str5;
        this.f12161q = z6;
        this.f12162r = z7;
        this.f12164t = str6;
        this.f12165u = j10;
        this.f12166v = j11;
        this.f12167w = i2;
        this.f12168x = z8;
        this.f12169y = z9;
        this.f12170z = str7;
        this.f12139A = bool;
        this.f12140B = j12;
        this.f12141C = list;
        this.f12142D = null;
        this.f12143E = str8;
        this.f12144F = str9;
        this.f12145G = str10;
        this.f12146H = z10;
        this.f12147I = j13;
        this.f12148J = i7;
        this.f12149K = str11;
        this.f12150L = i8;
        this.f12151M = j14;
        this.f12152N = str12;
        this.f12153O = str13;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f12154b, false);
        SafeParcelWriter.writeString(parcel, 3, this.f12155e, false);
        SafeParcelWriter.writeString(parcel, 4, this.f12156f, false);
        SafeParcelWriter.writeString(parcel, 5, this.f12157j, false);
        SafeParcelWriter.writeLong(parcel, 6, this.f12158m);
        SafeParcelWriter.writeLong(parcel, 7, this.f12159n);
        SafeParcelWriter.writeString(parcel, 8, this.f12160p, false);
        SafeParcelWriter.writeBoolean(parcel, 9, this.f12161q);
        SafeParcelWriter.writeBoolean(parcel, 10, this.f12162r);
        SafeParcelWriter.writeLong(parcel, 11, this.f12163s);
        SafeParcelWriter.writeString(parcel, 12, this.f12164t, false);
        SafeParcelWriter.writeLong(parcel, 13, this.f12165u);
        SafeParcelWriter.writeLong(parcel, 14, this.f12166v);
        SafeParcelWriter.writeInt(parcel, 15, this.f12167w);
        SafeParcelWriter.writeBoolean(parcel, 16, this.f12168x);
        SafeParcelWriter.writeBoolean(parcel, 18, this.f12169y);
        SafeParcelWriter.writeString(parcel, 19, this.f12170z, false);
        SafeParcelWriter.writeBooleanObject(parcel, 21, this.f12139A, false);
        SafeParcelWriter.writeLong(parcel, 22, this.f12140B);
        SafeParcelWriter.writeStringList(parcel, 23, this.f12141C, false);
        SafeParcelWriter.writeString(parcel, 24, this.f12142D, false);
        SafeParcelWriter.writeString(parcel, 25, this.f12143E, false);
        SafeParcelWriter.writeString(parcel, 26, this.f12144F, false);
        SafeParcelWriter.writeString(parcel, 27, this.f12145G, false);
        SafeParcelWriter.writeBoolean(parcel, 28, this.f12146H);
        SafeParcelWriter.writeLong(parcel, 29, this.f12147I);
        SafeParcelWriter.writeInt(parcel, 30, this.f12148J);
        SafeParcelWriter.writeString(parcel, 31, this.f12149K, false);
        SafeParcelWriter.writeInt(parcel, 32, this.f12150L);
        SafeParcelWriter.writeLong(parcel, 34, this.f12151M);
        SafeParcelWriter.writeString(parcel, 35, this.f12152N, false);
        SafeParcelWriter.writeString(parcel, 36, this.f12153O, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zzn(String str, String str2, String str3, String str4, long j7, long j8, String str5, boolean z6, boolean z7, long j9, String str6, long j10, long j11, int i2, boolean z8, boolean z9, String str7, Boolean bool, long j12, ArrayList arrayList, String str8, String str9, String str10, String str11, boolean z10, long j13, int i7, String str12, int i8, long j14, String str13, String str14) {
        this.f12154b = str;
        this.f12155e = str2;
        this.f12156f = str3;
        this.f12163s = j9;
        this.f12157j = str4;
        this.f12158m = j7;
        this.f12159n = j8;
        this.f12160p = str5;
        this.f12161q = z6;
        this.f12162r = z7;
        this.f12164t = str6;
        this.f12165u = j10;
        this.f12166v = j11;
        this.f12167w = i2;
        this.f12168x = z8;
        this.f12169y = z9;
        this.f12170z = str7;
        this.f12139A = bool;
        this.f12140B = j12;
        this.f12141C = arrayList;
        this.f12142D = str8;
        this.f12143E = str9;
        this.f12144F = str10;
        this.f12145G = str11;
        this.f12146H = z10;
        this.f12147I = j13;
        this.f12148J = i7;
        this.f12149K = str12;
        this.f12150L = i8;
        this.f12151M = j14;
        this.f12152N = str13;
        this.f12153O = str14;
    }
}
