package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class ApplicationMetadata extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ApplicationMetadata> CREATOR = new zzd();

    /* renamed from: b, reason: collision with root package name */
    public final String f9593b;

    /* renamed from: e, reason: collision with root package name */
    public final String f9594e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f9595f;

    /* renamed from: j, reason: collision with root package name */
    public final String f9596j;

    /* renamed from: m, reason: collision with root package name */
    public final Uri f9597m;

    /* renamed from: n, reason: collision with root package name */
    public final String f9598n;

    /* renamed from: p, reason: collision with root package name */
    public final String f9599p;

    /* renamed from: q, reason: collision with root package name */
    public final Boolean f9600q;

    /* renamed from: r, reason: collision with root package name */
    public final Boolean f9601r;

    private ApplicationMetadata() {
        this.f9595f = new ArrayList();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApplicationMetadata)) {
            return false;
        }
        ApplicationMetadata applicationMetadata = (ApplicationMetadata) obj;
        return CastUtils.zze(this.f9593b, applicationMetadata.f9593b) && CastUtils.zze(this.f9594e, applicationMetadata.f9594e) && CastUtils.zze(this.f9595f, applicationMetadata.f9595f) && CastUtils.zze(this.f9596j, applicationMetadata.f9596j) && CastUtils.zze(this.f9597m, applicationMetadata.f9597m) && CastUtils.zze(this.f9598n, applicationMetadata.f9598n) && CastUtils.zze(this.f9599p, applicationMetadata.f9599p);
    }

    public String getApplicationId() {
        return this.f9593b;
    }

    public String getIconUrl() {
        return this.f9598n;
    }

    @Deprecated
    public List<WebImage> getImages() {
        return null;
    }

    public String getName() {
        return this.f9594e;
    }

    public String getSenderAppIdentifier() {
        return this.f9596j;
    }

    public List<String> getSupportedNamespaces() {
        return Collections.unmodifiableList(this.f9595f);
    }

    public int hashCode() {
        return Objects.hashCode(this.f9593b, this.f9594e, this.f9595f, this.f9596j, this.f9597m, this.f9598n);
    }

    public String toString() {
        ArrayList arrayList = this.f9595f;
        return "applicationId: " + this.f9593b + ", name: " + this.f9594e + ", namespaces.count: " + (arrayList == null ? 0 : arrayList.size()) + ", senderAppIdentifier: " + this.f9596j + ", senderAppLaunchUrl: " + String.valueOf(this.f9597m) + ", iconUrl: " + this.f9598n + ", type: " + this.f9599p;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getApplicationId(), false);
        SafeParcelWriter.writeString(parcel, 3, getName(), false);
        SafeParcelWriter.writeTypedList(parcel, 4, getImages(), false);
        SafeParcelWriter.writeStringList(parcel, 5, getSupportedNamespaces(), false);
        SafeParcelWriter.writeString(parcel, 6, getSenderAppIdentifier(), false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.f9597m, i2, false);
        SafeParcelWriter.writeString(parcel, 8, getIconUrl(), false);
        SafeParcelWriter.writeString(parcel, 9, this.f9599p, false);
        SafeParcelWriter.writeBooleanObject(parcel, 10, this.f9600q, false);
        SafeParcelWriter.writeBooleanObject(parcel, 11, this.f9601r, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public ApplicationMetadata(String str, String str2, ArrayList arrayList, String str3, Uri uri, String str4, String str5, Boolean bool, Boolean bool2) {
        this.f9593b = str;
        this.f9594e = str2;
        this.f9595f = arrayList;
        this.f9596j = str3;
        this.f9597m = uri;
        this.f9598n = str4;
        this.f9599p = str5;
        this.f9600q = bool;
        this.f9601r = bool2;
    }
}
