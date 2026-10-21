package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Set;

/* loaded from: classes.dex */
public final class zact extends com.google.android.gms.signin.internal.zac implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: h, reason: collision with root package name */
    public static final Api.AbstractClientBuilder f10775h = com.google.android.gms.signin.zad.f12294a;

    /* renamed from: a, reason: collision with root package name */
    public final Context f10776a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f10777b;

    /* renamed from: c, reason: collision with root package name */
    public final Api.AbstractClientBuilder f10778c;

    /* renamed from: d, reason: collision with root package name */
    public final Set f10779d;

    /* renamed from: e, reason: collision with root package name */
    public final ClientSettings f10780e;

    /* renamed from: f, reason: collision with root package name */
    public com.google.android.gms.signin.zae f10781f;

    /* renamed from: g, reason: collision with root package name */
    public zacs f10782g;

    public zact(Context context, Handler handler, ClientSettings clientSettings) {
        Api.AbstractClientBuilder abstractClientBuilder = f10775h;
        this.f10776a = context;
        this.f10777b = handler;
        this.f10780e = (ClientSettings) Preconditions.checkNotNull(clientSettings, "ClientSettings must not be null");
        this.f10779d = clientSettings.getRequiredScopes();
        this.f10778c = abstractClientBuilder;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.f10781f.zad(this);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.f10782g.zae(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i2) {
        this.f10781f.disconnect();
    }

    @Override // com.google.android.gms.signin.internal.zac, com.google.android.gms.signin.internal.zae
    public final void zab(com.google.android.gms.signin.internal.zak zakVar) {
        this.f10777b.post(new zacr(this, zakVar));
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.common.api.Api$Client, com.google.android.gms.signin.zae] */
    public final void zae(zacs zacsVar) {
        com.google.android.gms.signin.zae zaeVar = this.f10781f;
        if (zaeVar != null) {
            zaeVar.disconnect();
        }
        Integer valueOf = Integer.valueOf(System.identityHashCode(this));
        ClientSettings clientSettings = this.f10780e;
        clientSettings.zae(valueOf);
        Api.AbstractClientBuilder abstractClientBuilder = this.f10778c;
        Handler handler = this.f10777b;
        this.f10781f = abstractClientBuilder.buildClient(this.f10776a, handler.getLooper(), clientSettings, (ClientSettings) clientSettings.zaa(), (GoogleApiClient.ConnectionCallbacks) this, (GoogleApiClient.OnConnectionFailedListener) this);
        this.f10782g = zacsVar;
        Set set = this.f10779d;
        if (set == null || set.isEmpty()) {
            handler.post(new zacq(this));
        } else {
            this.f10781f.zab();
        }
    }

    public final void zaf() {
        com.google.android.gms.signin.zae zaeVar = this.f10781f;
        if (zaeVar != null) {
            zaeVar.disconnect();
        }
    }
}
