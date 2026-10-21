package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class LaunchOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LaunchOptions> CREATOR = new zzbw();

    /* renamed from: b, reason: collision with root package name */
    public boolean f9646b;

    /* renamed from: e, reason: collision with root package name */
    public final String f9647e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f9648f;

    /* renamed from: j, reason: collision with root package name */
    public final CredentialsData f9649j;

    public static final class Builder {
        public Builder() {
            new LaunchOptions();
        }
    }

    public LaunchOptions() {
        this(false, CastUtils.zzb(Locale.getDefault()), false, null);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LaunchOptions)) {
            return false;
        }
        LaunchOptions launchOptions = (LaunchOptions) obj;
        return this.f9646b == launchOptions.f9646b && CastUtils.zze(this.f9647e, launchOptions.f9647e) && this.f9648f == launchOptions.f9648f && CastUtils.zze(this.f9649j, launchOptions.f9649j);
    }

    public boolean getAndroidReceiverCompatible() {
        return this.f9648f;
    }

    public CredentialsData getCredentialsData() {
        return this.f9649j;
    }

    public String getLanguage() {
        return this.f9647e;
    }

    public boolean getRelaunchIfRunning() {
        return this.f9646b;
    }

    public int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.f9646b), this.f9647e, Boolean.valueOf(this.f9648f), this.f9649j);
    }

    public void setRelaunchIfRunning(boolean z6) {
        this.f9646b = z6;
    }

    public String toString() {
        return "LaunchOptions(relaunchIfRunning=" + this.f9646b + ", language=" + this.f9647e + ", androidReceiverCompatible: " + this.f9648f + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 2, getRelaunchIfRunning());
        SafeParcelWriter.writeString(parcel, 3, getLanguage(), false);
        SafeParcelWriter.writeBoolean(parcel, 4, getAndroidReceiverCompatible());
        SafeParcelWriter.writeParcelable(parcel, 5, getCredentialsData(), i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public LaunchOptions(boolean z6, String str, boolean z7, CredentialsData credentialsData) {
        this.f9646b = z6;
        this.f9647e = str;
        this.f9648f = z7;
        this.f9649j = credentialsData;
    }
}
