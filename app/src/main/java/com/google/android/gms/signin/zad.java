package com.google.android.gms.signin;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;

/* loaded from: classes2.dex */
public final class zad {

    /* renamed from: a, reason: collision with root package name */
    public static final Api.AbstractClientBuilder f12294a;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        Api.ClientKey clientKey2 = new Api.ClientKey();
        zaa zaaVar = new zaa();
        f12294a = zaaVar;
        zab zabVar = new zab();
        new Scope("profile");
        new Scope("email");
        new Api("SignIn.API", zaaVar, clientKey);
        new Api("SignIn.INTERNAL_API", zabVar, clientKey2);
    }
}
