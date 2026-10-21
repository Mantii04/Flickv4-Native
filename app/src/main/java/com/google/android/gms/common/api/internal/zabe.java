package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Set;

/* loaded from: classes.dex */
public final class zabe extends GoogleApiClient implements zabz {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f10710c = 0;

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f10711a;

    /* renamed from: b, reason: collision with root package name */
    public Set f10712b;

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println((Object) null);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.f10711a);
        printWriter.append(" mWorkQueue.size()=");
        throw null;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t6) {
        t6.getApi();
        t6.getClientKey();
        throw null;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Looper getLooper() {
        return null;
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void zaa(ConnectionResult connectionResult) {
        connectionResult.getErrorCode();
        throw null;
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void zab(Bundle bundle) {
        throw null;
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void zac(int i2, boolean z6) {
        if (i2 != 1) {
            throw null;
        }
        if (z6) {
            throw null;
        }
        if (this.f10711a) {
            throw null;
        }
        this.f10711a = true;
        throw null;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zao(zada zadaVar) {
        throw null;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zap(zada zadaVar) {
        throw null;
    }
}
