package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
final class zaaa implements zaca {

    /* renamed from: a, reason: collision with root package name */
    public Bundle f10670a;

    /* renamed from: b, reason: collision with root package name */
    public ConnectionResult f10671b;

    /* renamed from: c, reason: collision with root package name */
    public ConnectionResult f10672c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f10673d;

    /* renamed from: e, reason: collision with root package name */
    public int f10674e;

    public static void b(zaaa zaaaVar) {
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        ConnectionResult connectionResult3 = zaaaVar.f10671b;
        if (!(connectionResult3 != null && connectionResult3.isSuccess())) {
            if (zaaaVar.f10671b != null && (connectionResult = zaaaVar.f10672c) != null && connectionResult.isSuccess()) {
                throw null;
            }
            if (zaaaVar.f10671b != null && zaaaVar.f10672c != null) {
                throw null;
            }
            return;
        }
        ConnectionResult connectionResult4 = zaaaVar.f10672c;
        if ((connectionResult4 != null && connectionResult4.isSuccess()) || ((connectionResult2 = zaaaVar.f10672c) != null && connectionResult2.getErrorCode() == 4)) {
            int i2 = zaaaVar.f10674e;
            if (i2 != 1) {
                if (i2 != 2) {
                    Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                    zaaaVar.f10674e = 0;
                    return;
                }
                ((zabe) Preconditions.checkNotNull(null)).zab(zaaaVar.f10670a);
            }
            zaaaVar.a();
            zaaaVar.f10674e = 0;
            return;
        }
        if (zaaaVar.f10672c != null) {
            if (zaaaVar.f10674e == 1) {
                zaaaVar.a();
                return;
            }
            int i7 = zaaaVar.f10674e;
            if (i7 == 1) {
                zaaaVar.a();
            } else {
                if (i7 == 2) {
                    throw null;
                }
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
            }
            zaaaVar.f10674e = 0;
            throw null;
        }
    }

    public final void a() {
        throw null;
    }
}
