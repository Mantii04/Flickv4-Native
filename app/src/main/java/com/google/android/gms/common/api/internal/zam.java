package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
final class zam {

    /* renamed from: a, reason: collision with root package name */
    public final int f10804a;

    /* renamed from: b, reason: collision with root package name */
    public final ConnectionResult f10805b;

    public zam(ConnectionResult connectionResult, int i2) {
        Preconditions.checkNotNull(connectionResult);
        this.f10805b = connectionResult;
        this.f10804a = i2;
    }
}
