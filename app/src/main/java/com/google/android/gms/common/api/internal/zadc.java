package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class zadc {

    /* renamed from: a, reason: collision with root package name */
    public final Set f10796a = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));

    static {
        new Status(8, "The connection to Google Play services was lost");
    }
}
