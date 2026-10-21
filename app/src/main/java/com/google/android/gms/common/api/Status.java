package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;

@SafeParcelable.Class
/* loaded from: classes.dex */
public final class Status extends AbstractSafeParcelable implements Result, ReflectedParcelable {
    public static final Parcelable.Creator<Status> CREATOR;

    /* renamed from: m, reason: collision with root package name */
    public static final Status f10605m;

    /* renamed from: n, reason: collision with root package name */
    public static final Status f10606n;

    /* renamed from: p, reason: collision with root package name */
    public static final Status f10607p;

    /* renamed from: q, reason: collision with root package name */
    public static final Status f10608q;

    /* renamed from: r, reason: collision with root package name */
    public static final Status f10609r;

    /* renamed from: b, reason: collision with root package name */
    public final int f10610b;

    /* renamed from: e, reason: collision with root package name */
    public final String f10611e;

    /* renamed from: f, reason: collision with root package name */
    public final PendingIntent f10612f;

    /* renamed from: j, reason: collision with root package name */
    public final ConnectionResult f10613j;

    static {
        new Status(-1);
        f10605m = new Status(0);
        f10606n = new Status(14);
        f10607p = new Status(8);
        f10608q = new Status(15);
        f10609r = new Status(16);
        new Status(17);
        new Status(18);
        CREATOR = new zzb();
    }

    public Status(int i2, String str, PendingIntent pendingIntent, ConnectionResult connectionResult) {
        this.f10610b = i2;
        this.f10611e = str;
        this.f10612f = pendingIntent;
        this.f10613j = connectionResult;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f10610b == status.f10610b && Objects.equal(this.f10611e, status.f10611e) && Objects.equal(this.f10612f, status.f10612f) && Objects.equal(this.f10613j, status.f10613j);
    }

    public ConnectionResult getConnectionResult() {
        return this.f10613j;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this;
    }

    @ResultIgnorabilityUnspecified
    public int getStatusCode() {
        return this.f10610b;
    }

    public String getStatusMessage() {
        return this.f10611e;
    }

    public boolean hasResolution() {
        return this.f10612f != null;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f10610b), this.f10611e, this.f10612f, this.f10613j);
    }

    public boolean isSuccess() {
        return this.f10610b <= 0;
    }

    public void startResolutionForResult(Activity activity, int i2) throws IntentSender.SendIntentException {
        if (hasResolution()) {
            PendingIntent pendingIntent = this.f10612f;
            Preconditions.checkNotNull(pendingIntent);
            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i2, null, 0, 0, 0);
        }
    }

    public String toString() {
        Objects.ToStringHelper stringHelper = Objects.toStringHelper(this);
        stringHelper.add("statusCode", zza());
        stringHelper.add("resolution", this.f10612f);
        return stringHelper.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getStatusCode());
        SafeParcelWriter.writeString(parcel, 2, getStatusMessage(), false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f10612f, i2, false);
        SafeParcelWriter.writeParcelable(parcel, 4, getConnectionResult(), i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final String zza() {
        String str = this.f10611e;
        return str != null ? str : CommonStatusCodes.getStatusCodeString(this.f10610b);
    }

    public Status(int i2) {
        this(i2, (String) null);
    }

    public Status(ConnectionResult connectionResult, String str) {
        this(connectionResult, str, 17);
    }

    public Status(int i2, String str) {
        this(i2, str, (PendingIntent) null);
    }

    @KeepForSdk
    @Deprecated
    public Status(ConnectionResult connectionResult, String str, int i2) {
        this(i2, str, connectionResult.getResolution(), connectionResult);
    }

    public Status(int i2, String str, PendingIntent pendingIntent) {
        this(i2, str, pendingIntent, null);
    }
}
