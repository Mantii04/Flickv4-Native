package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes.dex */
public final class zzo {

    /* renamed from: d, reason: collision with root package name */
    public static final Uri f10960d = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority("com.google.android.gms.chimera").build();

    /* renamed from: a, reason: collision with root package name */
    public final String f10961a;

    /* renamed from: b, reason: collision with root package name */
    public final String f10962b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f10963c;

    public zzo(String str, String str2, int i2, boolean z6) {
        Preconditions.checkNotEmpty(str);
        this.f10961a = str;
        Preconditions.checkNotEmpty(str2);
        this.f10962b = str2;
        this.f10963c = z6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzo)) {
            return false;
        }
        zzo zzoVar = (zzo) obj;
        return Objects.equal(this.f10961a, zzoVar.f10961a) && Objects.equal(this.f10962b, zzoVar.f10962b) && Objects.equal(null, null) && this.f10963c == zzoVar.f10963c;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f10961a, this.f10962b, null, 4225, Boolean.valueOf(this.f10963c));
    }

    public final String toString() {
        String str = this.f10961a;
        if (str != null) {
            return str;
        }
        Preconditions.checkNotNull(null);
        throw null;
    }

    public final ComponentName zza() {
        return null;
    }

    public final Intent zzb(Context context) {
        Bundle bundle;
        String str = this.f10961a;
        if (str == null) {
            return new Intent().setComponent(null);
        }
        if (this.f10963c) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("serviceActionBundleKey", str);
            try {
                bundle = context.getContentResolver().call(f10960d, "serviceIntentCall", (String) null, bundle2);
            } catch (IllegalArgumentException e3) {
                Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e3.toString()));
                bundle = null;
            }
            r1 = bundle != null ? (Intent) bundle.getParcelable("serviceResponseIntentKey") : null;
            if (r1 == null) {
                Log.w("ConnectionStatusConfig", "Dynamic lookup for intent failed for action: ".concat(String.valueOf(str)));
            }
        }
        return r1 == null ? new Intent(str).setPackage(this.f10962b) : r1;
    }

    public final String zzc() {
        return this.f10962b;
    }
}
