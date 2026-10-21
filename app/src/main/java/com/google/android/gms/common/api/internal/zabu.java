package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.Set;

/* loaded from: classes.dex */
final class zabu implements BaseGmsClient.ConnectionProgressReportCallbacks, zacs {

    /* renamed from: a, reason: collision with root package name */
    public final Api.Client f10741a;

    /* renamed from: b, reason: collision with root package name */
    public final ApiKey f10742b;

    /* renamed from: c, reason: collision with root package name */
    public IAccountAccessor f10743c = null;

    /* renamed from: d, reason: collision with root package name */
    public Set f10744d = null;

    /* renamed from: e, reason: collision with root package name */
    public boolean f10745e = false;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ GoogleApiManager f10746f;

    public zabu(GoogleApiManager googleApiManager, Api.Client client, ApiKey<?> apiKey) {
        this.f10746f = googleApiManager;
        this.f10741a = client;
        this.f10742b = apiKey;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void onReportServiceBinding(ConnectionResult connectionResult) {
        this.f10746f.f10641w.post(new zabt(this, connectionResult));
    }

    @Override // com.google.android.gms.common.api.internal.zacs
    public final void zae(ConnectionResult connectionResult) {
        zabq zabqVar = (zabq) this.f10746f.f10637s.get(this.f10742b);
        if (zabqVar != null) {
            zabqVar.zas(connectionResult);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zacs
    public final void zaf(IAccountAccessor iAccountAccessor, Set<Scope> set) {
        if (iAccountAccessor == null || set == null) {
            Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
            zae(new ConnectionResult(4));
            return;
        }
        this.f10743c = iAccountAccessor;
        this.f10744d = set;
        if (this.f10745e) {
            this.f10741a.getRemoteService(iAccountAccessor, set);
        }
    }
}
