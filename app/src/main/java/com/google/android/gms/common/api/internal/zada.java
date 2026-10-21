package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zada<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {

    /* renamed from: f, reason: collision with root package name */
    public final WeakReference f10793f;

    /* renamed from: g, reason: collision with root package name */
    public final zacz f10794g;

    /* renamed from: a, reason: collision with root package name */
    public ResultTransform f10788a = null;

    /* renamed from: b, reason: collision with root package name */
    public zada f10789b = null;

    /* renamed from: c, reason: collision with root package name */
    public PendingResult f10790c = null;

    /* renamed from: d, reason: collision with root package name */
    public final Object f10791d = new Object();

    /* renamed from: e, reason: collision with root package name */
    public Status f10792e = null;

    /* renamed from: h, reason: collision with root package name */
    public boolean f10795h = false;

    public zada(WeakReference<GoogleApiClient> weakReference) {
        Preconditions.checkNotNull(weakReference, "GoogleApiClient reference must not be null");
        this.f10793f = weakReference;
        GoogleApiClient googleApiClient = weakReference.get();
        this.f10794g = new zacz(this, googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
    }

    public static final void d(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e3) {
                Log.w("TransformedResultImpl", "Unable to release ".concat(String.valueOf(result)), e3);
            }
        }
    }

    public final void a(Status status) {
        synchronized (this.f10791d) {
            this.f10792e = status;
            c(status);
        }
    }

    public final void b() {
        if (this.f10788a == null) {
            return;
        }
        GoogleApiClient googleApiClient = (GoogleApiClient) this.f10793f.get();
        if (!this.f10795h && this.f10788a != null && googleApiClient != null) {
            googleApiClient.zao(this);
            this.f10795h = true;
        }
        Status status = this.f10792e;
        if (status != null) {
            c(status);
            return;
        }
        PendingResult pendingResult = this.f10790c;
        if (pendingResult != null) {
            pendingResult.setResultCallback(this);
        }
    }

    public final void c(Status status) {
        synchronized (this.f10791d) {
            try {
                ResultTransform resultTransform = this.f10788a;
                if (resultTransform != null) {
                    ((zada) Preconditions.checkNotNull(this.f10789b)).a((Status) Preconditions.checkNotNull(resultTransform.onFailure(status), "onFailure must not return null"));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final void onResult(R r6) {
        synchronized (this.f10791d) {
            try {
                if (!r6.getStatus().isSuccess()) {
                    a(r6.getStatus());
                    d(r6);
                } else if (this.f10788a != null) {
                    zaco.zaa().submit(new zacy(this, r6));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        zada zadaVar;
        synchronized (this.f10791d) {
            Preconditions.checkState(this.f10788a == null, "Cannot call then() twice.");
            Preconditions.checkState(true, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.f10788a = resultTransform;
            zadaVar = new zada(this.f10793f);
            this.f10789b = zadaVar;
            b();
        }
        return zadaVar;
    }

    public final void zai(PendingResult<?> pendingResult) {
        synchronized (this.f10791d) {
            this.f10790c = pendingResult;
            b();
        }
    }
}
