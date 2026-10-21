package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.BackgroundDetector;

/* loaded from: classes.dex */
final class zabl implements BackgroundDetector.BackgroundStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ GoogleApiManager f10718a;

    public zabl(GoogleApiManager googleApiManager) {
        this.f10718a = googleApiManager;
    }

    @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    public final void onBackgroundStateChanged(boolean z6) {
        com.google.android.gms.internal.base.zaq zaqVar = this.f10718a.f10641w;
        zaqVar.sendMessage(zaqVar.obtainMessage(1, Boolean.valueOf(z6)));
    }
}
