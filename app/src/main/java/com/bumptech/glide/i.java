package com.bumptech.glide;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final Map f9162a;

    public i(L0.f fVar) {
        this.f9162a = Collections.unmodifiableMap(new HashMap((HashMap) fVar.f1833a));
    }

    public boolean isEnabled(Class<Object> cls) {
        return this.f9162a.containsKey(cls);
    }
}
