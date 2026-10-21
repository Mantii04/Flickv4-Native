package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.cast.zzev;
import com.google.android.gms.internal.cast.zzez;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class CastOptions extends AbstractSafeParcelable {

    /* renamed from: B, reason: collision with root package name */
    public static final CastMediaOptions f9831B;
    public static final Parcelable.Creator<CastOptions> CREATOR;

    /* renamed from: b, reason: collision with root package name */
    public final String f9833b;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f9834e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f9835f;

    /* renamed from: j, reason: collision with root package name */
    public final LaunchOptions f9836j;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f9837m;

    /* renamed from: n, reason: collision with root package name */
    public final CastMediaOptions f9838n;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f9839p;

    /* renamed from: q, reason: collision with root package name */
    public final double f9840q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f9841r;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f9842s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f9843t;

    /* renamed from: u, reason: collision with root package name */
    public final ArrayList f9844u;

    /* renamed from: v, reason: collision with root package name */
    public final boolean f9845v;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f9846w;

    /* renamed from: x, reason: collision with root package name */
    public final zzj f9847x;

    /* renamed from: y, reason: collision with root package name */
    public zzl f9848y;

    /* renamed from: z, reason: collision with root package name */
    public static final zzj f9832z = new zzj(false);

    /* renamed from: A, reason: collision with root package name */
    public static final zzl f9830A = new zzl(0);

    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public String f9849a;

        /* renamed from: b, reason: collision with root package name */
        public final ArrayList f9850b = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        public final LaunchOptions f9851c = new LaunchOptions();

        /* renamed from: d, reason: collision with root package name */
        public final boolean f9852d = true;

        /* renamed from: e, reason: collision with root package name */
        public zzev f9853e = zzev.zzb();

        /* renamed from: f, reason: collision with root package name */
        public final boolean f9854f = true;

        /* renamed from: g, reason: collision with root package name */
        public final double f9855g = 0.05000000074505806d;

        /* renamed from: h, reason: collision with root package name */
        public final ArrayList f9856h = new ArrayList();

        /* renamed from: i, reason: collision with root package name */
        public final boolean f9857i = true;

        public Builder() {
            zzev.zzb();
            zzev.zzb();
        }

        public CastOptions build() {
            Object zza = this.f9853e.zza(CastOptions.f9831B);
            zzj zzjVar = CastOptions.f9832z;
            zzez.zzc(zzjVar, "use Optional.orNull() instead of Optional.or(null)");
            zzl zzlVar = CastOptions.f9830A;
            zzez.zzc(zzlVar, "use Optional.orNull() instead of Optional.or(null)");
            ArrayList arrayList = this.f9856h;
            return new CastOptions(this.f9849a, this.f9850b, false, this.f9851c, this.f9852d, (CastMediaOptions) zza, this.f9854f, this.f9855g, false, false, false, arrayList, this.f9857i, false, zzjVar, zzlVar);
        }

        public Builder setCastMediaOptions(CastMediaOptions castMediaOptions) {
            this.f9853e = zzev.zzc(castMediaOptions);
            return this;
        }

        public Builder setReceiverApplicationId(String str) {
            this.f9849a = str;
            return this;
        }
    }

    static {
        CastMediaOptions.Builder builder = new CastMediaOptions.Builder();
        builder.setMediaSessionEnabled(false);
        builder.setNotificationOptions(null);
        f9831B = builder.build();
        CREATOR = new zzn();
    }

    public CastOptions(String str, ArrayList arrayList, boolean z6, LaunchOptions launchOptions, boolean z7, CastMediaOptions castMediaOptions, boolean z8, double d7, boolean z9, boolean z10, boolean z11, ArrayList arrayList2, boolean z12, boolean z13, zzj zzjVar, zzl zzlVar) {
        this.f9833b = true == TextUtils.isEmpty(str) ? "" : str;
        int size = arrayList == null ? 0 : arrayList.size();
        ArrayList arrayList3 = new ArrayList(size);
        this.f9834e = arrayList3;
        if (size > 0) {
            arrayList3.addAll(arrayList);
        }
        this.f9835f = z6;
        this.f9836j = launchOptions == null ? new LaunchOptions() : launchOptions;
        this.f9837m = z7;
        this.f9838n = castMediaOptions;
        this.f9839p = z8;
        this.f9840q = d7;
        this.f9841r = z9;
        this.f9842s = z10;
        this.f9843t = z11;
        this.f9844u = arrayList2;
        this.f9845v = z12;
        this.f9846w = z13;
        this.f9847x = zzjVar;
        this.f9848y = zzlVar;
    }

    public CastMediaOptions getCastMediaOptions() {
        return this.f9838n;
    }

    public boolean getEnableReconnectionService() {
        return this.f9839p;
    }

    public LaunchOptions getLaunchOptions() {
        return this.f9836j;
    }

    public String getReceiverApplicationId() {
        return this.f9833b;
    }

    public boolean getResumeSavedSession() {
        return this.f9837m;
    }

    public boolean getStopReceiverApplicationWhenEndingSession() {
        return this.f9835f;
    }

    public List<String> getSupportedNamespaces() {
        return Collections.unmodifiableList(this.f9834e);
    }

    @Deprecated
    public double getVolumeDeltaBeforeIceCreamSandwich() {
        return this.f9840q;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getReceiverApplicationId(), false);
        SafeParcelWriter.writeStringList(parcel, 3, getSupportedNamespaces(), false);
        SafeParcelWriter.writeBoolean(parcel, 4, getStopReceiverApplicationWhenEndingSession());
        SafeParcelWriter.writeParcelable(parcel, 5, getLaunchOptions(), i2, false);
        SafeParcelWriter.writeBoolean(parcel, 6, getResumeSavedSession());
        SafeParcelWriter.writeParcelable(parcel, 7, getCastMediaOptions(), i2, false);
        SafeParcelWriter.writeBoolean(parcel, 8, getEnableReconnectionService());
        SafeParcelWriter.writeDouble(parcel, 9, getVolumeDeltaBeforeIceCreamSandwich());
        SafeParcelWriter.writeBoolean(parcel, 10, this.f9841r);
        SafeParcelWriter.writeBoolean(parcel, 11, this.f9842s);
        SafeParcelWriter.writeBoolean(parcel, 12, this.f9843t);
        SafeParcelWriter.writeStringList(parcel, 13, Collections.unmodifiableList(this.f9844u), false);
        SafeParcelWriter.writeBoolean(parcel, 14, this.f9845v);
        SafeParcelWriter.writeInt(parcel, 15, 0);
        SafeParcelWriter.writeBoolean(parcel, 16, this.f9846w);
        SafeParcelWriter.writeParcelable(parcel, 17, this.f9847x, i2, false);
        SafeParcelWriter.writeParcelable(parcel, 18, this.f9848y, i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @ShowFirstParty
    public final List zza() {
        return Collections.unmodifiableList(this.f9844u);
    }

    @ShowFirstParty
    public final void zzb(zzl zzlVar) {
        this.f9848y = zzlVar;
    }

    public final boolean zze() {
        return this.f9842s;
    }

    public final boolean zzf() {
        return this.f9843t;
    }

    public final boolean zzg() {
        return this.f9846w;
    }

    public final boolean zzh() {
        return this.f9845v;
    }
}
