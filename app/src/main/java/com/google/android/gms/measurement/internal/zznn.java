package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
public final class zznn {

    /* renamed from: a, reason: collision with root package name */
    public final Context f12225a;

    public zznn(Context context) {
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.f12225a = applicationContext;
    }
}
