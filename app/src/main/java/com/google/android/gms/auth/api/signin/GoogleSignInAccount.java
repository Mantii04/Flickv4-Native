package com.google.android.gms.auth.api.signin;

import A.i;
import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class
/* loaded from: classes.dex */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new zab();

    /* renamed from: w, reason: collision with root package name */
    public static final Clock f9529w = DefaultClock.getInstance();

    /* renamed from: b, reason: collision with root package name */
    public final int f9530b;

    /* renamed from: e, reason: collision with root package name */
    public final String f9531e;

    /* renamed from: f, reason: collision with root package name */
    public final String f9532f;

    /* renamed from: j, reason: collision with root package name */
    public final String f9533j;

    /* renamed from: m, reason: collision with root package name */
    public final String f9534m;

    /* renamed from: n, reason: collision with root package name */
    public final Uri f9535n;

    /* renamed from: p, reason: collision with root package name */
    public String f9536p;

    /* renamed from: q, reason: collision with root package name */
    public final long f9537q;

    /* renamed from: r, reason: collision with root package name */
    public final String f9538r;

    /* renamed from: s, reason: collision with root package name */
    public final ArrayList f9539s;

    /* renamed from: t, reason: collision with root package name */
    public final String f9540t;

    /* renamed from: u, reason: collision with root package name */
    public final String f9541u;

    /* renamed from: v, reason: collision with root package name */
    public final HashSet f9542v = new HashSet();

    public GoogleSignInAccount(int i2, String str, String str2, String str3, String str4, Uri uri, String str5, long j7, String str6, ArrayList arrayList, String str7, String str8) {
        this.f9530b = i2;
        this.f9531e = str;
        this.f9532f = str2;
        this.f9533j = str3;
        this.f9534m = str4;
        this.f9535n = uri;
        this.f9536p = str5;
        this.f9537q = j7;
        this.f9538r = str6;
        this.f9539s = arrayList;
        this.f9540t = str7;
        this.f9541u = str8;
    }

    public static GoogleSignInAccount zaa(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l7, String str7, Set<Scope> set) {
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l7.longValue(), Preconditions.checkNotEmpty(str7), new ArrayList((Collection) Preconditions.checkNotNull(set)), str5, str6);
    }

    public static GoogleSignInAccount zab(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl");
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            hashSet.add(new Scope(jSONArray.getString(i2)));
        }
        GoogleSignInAccount zaa = zaa(jSONObject.optString("id"), jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null, jSONObject.has("email") ? jSONObject.optString("email") : null, jSONObject.has("displayName") ? jSONObject.optString("displayName") : null, jSONObject.has("givenName") ? jSONObject.optString("givenName") : null, jSONObject.has("familyName") ? jSONObject.optString("familyName") : null, parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        zaa.f9536p = jSONObject.has("serverAuthCode") ? jSONObject.optString("serverAuthCode") : null;
        return zaa;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.f9538r.equals(this.f9538r) && googleSignInAccount.getRequestedScopes().equals(getRequestedScopes());
    }

    public Account getAccount() {
        String str = this.f9533j;
        if (str == null) {
            return null;
        }
        return new Account(str, "com.google");
    }

    public String getDisplayName() {
        return this.f9534m;
    }

    public String getEmail() {
        return this.f9533j;
    }

    public String getFamilyName() {
        return this.f9541u;
    }

    public String getGivenName() {
        return this.f9540t;
    }

    public String getId() {
        return this.f9531e;
    }

    public String getIdToken() {
        return this.f9532f;
    }

    public Uri getPhotoUrl() {
        return this.f9535n;
    }

    @KeepForSdk
    public Set<Scope> getRequestedScopes() {
        HashSet hashSet = new HashSet(this.f9539s);
        hashSet.addAll(this.f9542v);
        return hashSet;
    }

    public String getServerAuthCode() {
        return this.f9536p;
    }

    public int hashCode() {
        return getRequestedScopes().hashCode() + i.b(527, 31, this.f9538r);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f9530b);
        SafeParcelWriter.writeString(parcel, 2, getId(), false);
        SafeParcelWriter.writeString(parcel, 3, getIdToken(), false);
        SafeParcelWriter.writeString(parcel, 4, getEmail(), false);
        SafeParcelWriter.writeString(parcel, 5, getDisplayName(), false);
        SafeParcelWriter.writeParcelable(parcel, 6, getPhotoUrl(), i2, false);
        SafeParcelWriter.writeString(parcel, 7, getServerAuthCode(), false);
        SafeParcelWriter.writeLong(parcel, 8, this.f9537q);
        SafeParcelWriter.writeString(parcel, 9, this.f9538r, false);
        SafeParcelWriter.writeTypedList(parcel, 10, this.f9539s, false);
        SafeParcelWriter.writeString(parcel, 11, getGivenName(), false);
        SafeParcelWriter.writeString(parcel, 12, getFamilyName(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
