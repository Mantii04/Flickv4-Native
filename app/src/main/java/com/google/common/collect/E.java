package com.google.common.collect;

import Q3.Y;
import Q3.Z;

/* loaded from: classes2.dex */
public final class E extends Y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13057a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Z f13058b;

    public E(Z z6, int i2) {
        this.f13057a = i2;
        this.f13058b = z6;
    }

    @Override // Q3.Y
    public <K, V> Q3.G build() {
        return F.newListMultimap(this.f13058b.a(), new MultimapBuilder$ArrayListSupplier(this.f13057a));
    }
}
