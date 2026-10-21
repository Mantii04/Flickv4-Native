package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.concurrent.NumberedThreadFactory;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zabj {

    /* renamed from: a, reason: collision with root package name */
    public static final ExecutorService f10716a = com.google.android.gms.internal.base.zap.zaa().zac(2, new NumberedThreadFactory("GAC_Executor"), 2);

    public static ExecutorService zaa() {
        return f10716a;
    }
}
