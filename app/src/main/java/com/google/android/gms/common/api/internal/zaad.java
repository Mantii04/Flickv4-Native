package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class zaad {

    /* renamed from: a, reason: collision with root package name */
    public final Map f10679a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b, reason: collision with root package name */
    public final Map f10680b = Collections.synchronizedMap(new WeakHashMap());

    public final void a(boolean z6, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f10679a) {
            hashMap = new HashMap(this.f10679a);
        }
        synchronized (this.f10680b) {
            hashMap2 = new HashMap(this.f10680b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z6 || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).forceFailureUnlessReady(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z6 || ((Boolean) entry2.getValue()).booleanValue()) {
                ((TaskCompletionSource) entry2.getKey()).trySetException(new ApiException(status));
            }
        }
    }

    public final void zaf() {
        a(false, GoogleApiManager.f10626y);
    }
}
