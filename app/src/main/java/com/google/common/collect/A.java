package com.google.common.collect;

import Q3.u0;
import java.util.AbstractList;
import java.util.ListIterator;

/* loaded from: classes2.dex */
public final class A extends u0 {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f13029e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AbstractList f13030f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ A(AbstractList abstractList, ListIterator listIterator, int i2) {
        super(listIterator);
        this.f13029e = i2;
        this.f13030f = abstractList;
    }

    @Override // Q3.t0
    public final Object a(Object obj) {
        switch (this.f13029e) {
            case 0:
                return ((Lists$TransformingRandomAccessList) this.f13030f).f13087e.apply(obj);
            default:
                return ((Lists$TransformingSequentialList) this.f13030f).f13089e.apply(obj);
        }
    }
}
