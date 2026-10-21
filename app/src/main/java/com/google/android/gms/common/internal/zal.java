package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;

/* loaded from: classes.dex */
public final class zal {

    /* renamed from: a, reason: collision with root package name */
    public final SparseIntArray f10920a;

    /* renamed from: b, reason: collision with root package name */
    public final GoogleApiAvailabilityLight f10921b;

    public zal() {
        this(GoogleApiAvailability.getInstance());
    }

    public final int zaa(Context context, int i2) {
        return this.f10920a.get(i2, -1);
    }

    public final int zab(Context context, Api.Client client) {
        SparseIntArray sparseIntArray;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(client);
        int i2 = 0;
        if (!client.requiresGooglePlayServices()) {
            return 0;
        }
        int minApkVersion = client.getMinApkVersion();
        int zaa = zaa(context, minApkVersion);
        if (zaa != -1) {
            return zaa;
        }
        int i7 = 0;
        while (true) {
            sparseIntArray = this.f10920a;
            if (i7 >= sparseIntArray.size()) {
                i2 = -1;
                break;
            }
            int keyAt = sparseIntArray.keyAt(i7);
            if (keyAt > minApkVersion && sparseIntArray.get(keyAt) == 0) {
                break;
            }
            i7++;
        }
        if (i2 == -1) {
            i2 = this.f10921b.isGooglePlayServicesAvailable(context, minApkVersion);
        }
        sparseIntArray.put(minApkVersion, i2);
        return i2;
    }

    public final void zac() {
        this.f10920a.clear();
    }

    public zal(GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        this.f10920a = new SparseIntArray();
        Preconditions.checkNotNull(googleApiAvailabilityLight);
        this.f10921b = googleApiAvailabilityLight;
    }
}
