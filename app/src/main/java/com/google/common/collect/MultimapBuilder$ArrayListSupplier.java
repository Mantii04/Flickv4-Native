package com.google.common.collect;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
final class MultimapBuilder$ArrayListSupplier<V> implements P3.C, Serializable {

    /* renamed from: b, reason: collision with root package name */
    public final int f13090b;

    public MultimapBuilder$ArrayListSupplier(int i2) {
        V3.r.b(i2, "expectedValuesPerKey");
        this.f13090b = i2;
    }

    @Override // P3.C
    public List<V> get() {
        return new ArrayList(this.f13090b);
    }
}
