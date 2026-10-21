package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zaaw implements zabf {

    /* renamed from: a, reason: collision with root package name */
    public ConnectionResult f10698a;

    /* renamed from: b, reason: collision with root package name */
    public int f10699b;

    /* renamed from: c, reason: collision with root package name */
    public int f10700c;

    /* renamed from: d, reason: collision with root package name */
    public int f10701d;

    /* renamed from: e, reason: collision with root package name */
    public com.google.android.gms.signin.zae f10702e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f10703f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f10704g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f10705h;

    /* renamed from: i, reason: collision with root package name */
    public IAccountAccessor f10706i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f10707j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f10708k;

    public final void a(boolean z6) {
        com.google.android.gms.signin.zae zaeVar = this.f10702e;
        if (zaeVar != null) {
            if (zaeVar.isConnected() && z6) {
                zaeVar.zaa();
            }
            zaeVar.disconnect();
            this.f10706i = null;
        }
    }

    public final void b() {
        throw null;
    }

    public final void c(ConnectionResult connectionResult) {
        throw null;
    }

    public final void d() {
        if (this.f10701d != 0) {
            return;
        }
        if (!this.f10704g || this.f10705h) {
            new ArrayList();
            this.f10700c = 1;
            throw null;
        }
    }

    public final boolean e(int i2) {
        if (this.f10700c == i2) {
            return true;
        }
        throw null;
    }

    public final boolean f() {
        int i2 = this.f10701d - 1;
        this.f10701d = i2;
        if (i2 > 0) {
            return false;
        }
        if (i2 < 0) {
            throw null;
        }
        if (this.f10698a == null) {
            return true;
        }
        throw null;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zad() {
        throw null;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zag(Bundle bundle) {
        if (e(1)) {
            if (bundle != null) {
                throw null;
            }
            if (f()) {
                b();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zah(ConnectionResult connectionResult, Api<?> api, boolean z6) {
        if (e(1)) {
            int priority = api.zac().getPriority();
            if (z6 && !connectionResult.hasResolution()) {
                connectionResult.getErrorCode();
                throw null;
            }
            if (this.f10698a == null || priority < this.f10699b) {
                this.f10698a = connectionResult;
                this.f10699b = priority;
            }
            throw null;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zai(int i2) {
        c(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final boolean zaj() {
        throw null;
    }
}
