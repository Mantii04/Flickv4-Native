package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.auth.api.signin.internal.HashAccumulator;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;

@SafeParcelable.Class
/* loaded from: classes.dex */
public class GoogleSignInOptions extends AbstractSafeParcelable implements Api.ApiOptions.Optional, ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;

    /* renamed from: t, reason: collision with root package name */
    public static final Scope f9543t = new Scope("profile");

    /* renamed from: u, reason: collision with root package name */
    public static final Scope f9544u;

    /* renamed from: v, reason: collision with root package name */
    public static final Scope f9545v;

    /* renamed from: w, reason: collision with root package name */
    public static final Scope f9546w;

    /* renamed from: b, reason: collision with root package name */
    public final int f9547b;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f9548e;

    /* renamed from: f, reason: collision with root package name */
    public final Account f9549f;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f9550j;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f9551m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f9552n;

    /* renamed from: p, reason: collision with root package name */
    public final String f9553p;

    /* renamed from: q, reason: collision with root package name */
    public final String f9554q;

    /* renamed from: r, reason: collision with root package name */
    public final ArrayList f9555r;

    /* renamed from: s, reason: collision with root package name */
    public final String f9556s;

    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final HashSet f9557a = new HashSet();

        /* renamed from: b, reason: collision with root package name */
        public final HashMap f9558b = new HashMap();

        public GoogleSignInOptions build() {
            HashSet hashSet = this.f9557a;
            if (hashSet.contains(GoogleSignInOptions.f9546w)) {
                Scope scope = GoogleSignInOptions.f9545v;
                if (hashSet.contains(scope)) {
                    hashSet.remove(scope);
                }
            }
            return new GoogleSignInOptions(3, new ArrayList(hashSet), null, false, false, false, null, null, this.f9558b, null);
        }

        public Builder requestId() {
            this.f9557a.add(GoogleSignInOptions.f9544u);
            return this;
        }

        public Builder requestProfile() {
            this.f9557a.add(GoogleSignInOptions.f9543t);
            return this;
        }

        public Builder requestScopes(Scope scope, Scope... scopeArr) {
            HashSet hashSet = this.f9557a;
            hashSet.add(scope);
            hashSet.addAll(Arrays.asList(scopeArr));
            return this;
        }
    }

    static {
        new Scope("email");
        f9544u = new Scope("openid");
        Scope scope = new Scope("https://www.googleapis.com/auth/games_lite");
        f9545v = scope;
        f9546w = new Scope("https://www.googleapis.com/auth/games");
        Builder builder = new Builder();
        builder.requestId();
        builder.requestProfile();
        builder.build();
        Builder builder2 = new Builder();
        builder2.requestScopes(scope, new Scope[0]);
        builder2.build();
        CREATOR = new zae();
        new zac();
    }

    public GoogleSignInOptions(int i2, ArrayList arrayList, Account account, boolean z6, boolean z7, boolean z8, String str, String str2, HashMap hashMap, String str3) {
        this.f9547b = i2;
        this.f9548e = arrayList;
        this.f9549f = account;
        this.f9550j = z6;
        this.f9551m = z7;
        this.f9552n = z8;
        this.f9553p = str;
        this.f9554q = str2;
        this.f9555r = new ArrayList(hashMap.values());
        this.f9556s = str3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0048, code lost:
    
        if (r1.equals(r6.getAccount()) != false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.String r0 = r5.f9553p
            java.util.ArrayList r1 = r5.f9548e
            r2 = 0
            if (r6 != 0) goto L8
            return r2
        L8:
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r6 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r6     // Catch: java.lang.ClassCastException -> L8c
            java.util.ArrayList r3 = r5.f9555r     // Catch: java.lang.ClassCastException -> L8c
            int r3 = r3.size()     // Catch: java.lang.ClassCastException -> L8c
            if (r3 > 0) goto L8c
            java.util.ArrayList r3 = r6.f9555r     // Catch: java.lang.ClassCastException -> L8c
            int r3 = r3.size()     // Catch: java.lang.ClassCastException -> L8c
            if (r3 <= 0) goto L1c
            goto L8c
        L1c:
            int r3 = r1.size()     // Catch: java.lang.ClassCastException -> L8c
            java.util.ArrayList r4 = r6.getScopes()     // Catch: java.lang.ClassCastException -> L8c
            int r4 = r4.size()     // Catch: java.lang.ClassCastException -> L8c
            if (r3 != r4) goto L8c
            java.util.ArrayList r3 = r6.getScopes()     // Catch: java.lang.ClassCastException -> L8c
            boolean r1 = r1.containsAll(r3)     // Catch: java.lang.ClassCastException -> L8c
            if (r1 != 0) goto L35
            goto L8c
        L35:
            android.accounts.Account r1 = r5.f9549f     // Catch: java.lang.ClassCastException -> L8c
            if (r1 != 0) goto L40
            android.accounts.Account r1 = r6.getAccount()     // Catch: java.lang.ClassCastException -> L8c
            if (r1 != 0) goto L8c
            goto L4a
        L40:
            android.accounts.Account r3 = r6.getAccount()     // Catch: java.lang.ClassCastException -> L8c
            boolean r1 = r1.equals(r3)     // Catch: java.lang.ClassCastException -> L8c
            if (r1 == 0) goto L8c
        L4a:
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.ClassCastException -> L8c
            if (r1 == 0) goto L5b
            java.lang.String r0 = r6.getServerClientId()     // Catch: java.lang.ClassCastException -> L8c
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.ClassCastException -> L8c
            if (r0 == 0) goto L8c
            goto L66
        L5b:
            java.lang.String r1 = r6.getServerClientId()     // Catch: java.lang.ClassCastException -> L8c
            boolean r0 = r0.equals(r1)     // Catch: java.lang.ClassCastException -> L8c
            if (r0 != 0) goto L66
            goto L8c
        L66:
            boolean r0 = r5.f9552n     // Catch: java.lang.ClassCastException -> L8c
            boolean r1 = r6.isForceCodeForRefreshToken()     // Catch: java.lang.ClassCastException -> L8c
            if (r0 != r1) goto L8c
            boolean r0 = r5.f9550j     // Catch: java.lang.ClassCastException -> L8c
            boolean r1 = r6.isIdTokenRequested()     // Catch: java.lang.ClassCastException -> L8c
            if (r0 != r1) goto L8c
            boolean r0 = r5.f9551m     // Catch: java.lang.ClassCastException -> L8c
            boolean r1 = r6.isServerAuthCodeRequested()     // Catch: java.lang.ClassCastException -> L8c
            if (r0 != r1) goto L8c
            java.lang.String r0 = r5.f9556s     // Catch: java.lang.ClassCastException -> L8c
            java.lang.String r6 = r6.getLogSessionId()     // Catch: java.lang.ClassCastException -> L8c
            boolean r6 = android.text.TextUtils.equals(r0, r6)     // Catch: java.lang.ClassCastException -> L8c
            if (r6 == 0) goto L8c
            r6 = 1
            return r6
        L8c:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    @KeepForSdk
    public Account getAccount() {
        return this.f9549f;
    }

    @KeepForSdk
    public ArrayList<GoogleSignInOptionsExtensionParcelable> getExtensions() {
        return this.f9555r;
    }

    @KeepForSdk
    public String getLogSessionId() {
        return this.f9556s;
    }

    @KeepForSdk
    public ArrayList<Scope> getScopes() {
        return new ArrayList<>(this.f9548e);
    }

    @KeepForSdk
    public String getServerClientId() {
        return this.f9553p;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f9548e;
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(((Scope) arrayList2.get(i2)).getScopeUri());
        }
        Collections.sort(arrayList);
        HashAccumulator hashAccumulator = new HashAccumulator();
        hashAccumulator.addObject(arrayList);
        hashAccumulator.addObject(this.f9549f);
        hashAccumulator.addObject(this.f9553p);
        hashAccumulator.zaa(this.f9552n);
        hashAccumulator.zaa(this.f9550j);
        hashAccumulator.zaa(this.f9551m);
        hashAccumulator.addObject(this.f9556s);
        return hashAccumulator.hash();
    }

    @KeepForSdk
    public boolean isForceCodeForRefreshToken() {
        return this.f9552n;
    }

    @KeepForSdk
    public boolean isIdTokenRequested() {
        return this.f9550j;
    }

    @KeepForSdk
    public boolean isServerAuthCodeRequested() {
        return this.f9551m;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f9547b);
        SafeParcelWriter.writeTypedList(parcel, 2, getScopes(), false);
        SafeParcelWriter.writeParcelable(parcel, 3, getAccount(), i2, false);
        SafeParcelWriter.writeBoolean(parcel, 4, isIdTokenRequested());
        SafeParcelWriter.writeBoolean(parcel, 5, isServerAuthCodeRequested());
        SafeParcelWriter.writeBoolean(parcel, 6, isForceCodeForRefreshToken());
        SafeParcelWriter.writeString(parcel, 7, getServerClientId(), false);
        SafeParcelWriter.writeString(parcel, 8, this.f9554q, false);
        SafeParcelWriter.writeTypedList(parcel, 9, getExtensions(), false);
        SafeParcelWriter.writeString(parcel, 10, getLogSessionId(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
