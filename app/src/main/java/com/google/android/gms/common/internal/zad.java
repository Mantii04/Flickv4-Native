package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;

/* loaded from: classes.dex */
final class zad extends zag {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Intent f10913b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Activity f10914e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f10915f;

    public zad(Activity activity, Intent intent, int i2) {
        this.f10913b = intent;
        this.f10914e = activity;
        this.f10915f = i2;
    }

    @Override // com.google.android.gms.common.internal.zag
    public final void zaa() {
        Intent intent = this.f10913b;
        if (intent != null) {
            this.f10914e.startActivityForResult(intent, this.f10915f);
        }
    }
}
