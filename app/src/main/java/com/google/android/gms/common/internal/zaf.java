package com.google.android.gms.common.internal;

import android.content.Intent;
import com.google.android.gms.common.api.internal.LifecycleFragment;

/* loaded from: classes.dex */
final class zaf extends zag {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Intent f10916b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LifecycleFragment f10917e;

    public zaf(Intent intent, LifecycleFragment lifecycleFragment) {
        this.f10916b = intent;
        this.f10917e = lifecycleFragment;
    }

    @Override // com.google.android.gms.common.internal.zag
    public final void zaa() {
        Intent intent = this.f10916b;
        if (intent != null) {
            this.f10917e.startActivityForResult(intent, 2);
        }
    }
}
