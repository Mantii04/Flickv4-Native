package com.google.common.collect;

import Q3.Z;
import java.util.Map;

/* loaded from: classes2.dex */
public final class D extends Z {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13056a;

    public D(int i2) {
        this.f13056a = i2;
    }

    @Override // Q3.Z
    public final Map a() {
        return CompactHashMap.createWithExpectedSize(this.f13056a);
    }
}
