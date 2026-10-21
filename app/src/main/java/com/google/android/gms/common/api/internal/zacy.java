package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
final class zacy implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Result f10784b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zada f10785e;

    public zacy(zada zadaVar, Result result) {
        this.f10785e = zadaVar;
        this.f10784b = result;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Result result = this.f10784b;
        zada zadaVar = this.f10785e;
        try {
            try {
                ThreadLocal<Boolean> threadLocal = BasePendingResult.zaa;
                threadLocal.set(Boolean.TRUE);
                PendingResult onSuccess = ((ResultTransform) Preconditions.checkNotNull(zadaVar.f10788a)).onSuccess(result);
                zacz zaczVar = zadaVar.f10794g;
                zaczVar.sendMessage(zaczVar.obtainMessage(0, onSuccess));
                threadLocal.set(Boolean.FALSE);
                zada.d(result);
                GoogleApiClient googleApiClient = (GoogleApiClient) zadaVar.f10793f.get();
                result = googleApiClient;
                if (googleApiClient != 0) {
                    googleApiClient.zap(zadaVar);
                }
            } catch (RuntimeException e3) {
                zacz zaczVar2 = zadaVar.f10794g;
                zaczVar2.sendMessage(zaczVar2.obtainMessage(1, e3));
                BasePendingResult.zaa.set(Boolean.FALSE);
                zada.d(result);
                GoogleApiClient googleApiClient2 = (GoogleApiClient) zadaVar.f10793f.get();
                result = googleApiClient2;
                if (googleApiClient2 != 0) {
                    googleApiClient2.zap(zadaVar);
                    result = googleApiClient2;
                }
            }
        } catch (Throwable th) {
            BasePendingResult.zaa.set(Boolean.FALSE);
            zada.d(result);
            GoogleApiClient googleApiClient3 = (GoogleApiClient) zadaVar.f10793f.get();
            if (googleApiClient3 != null) {
                googleApiClient3.zap(zadaVar);
            }
            throw th;
        }
    }
}
