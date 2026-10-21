package com.google.common.collect;

import java.util.Collection;

/* loaded from: classes2.dex */
class EmptyImmutableSetMultimap extends ImmutableSetMultimap<Object, Object> {

    /* renamed from: r, reason: collision with root package name */
    public static final EmptyImmutableSetMultimap f13060r = new EmptyImmutableSetMultimap();
    private static final long serialVersionUID = 0;

    private EmptyImmutableSetMultimap() {
        super(ImmutableMap.of(), 0);
    }

    @Override // com.google.common.collect.ImmutableMultimap, Q3.AbstractC0237g, Q3.W
    public ImmutableMap<Object, Collection<Object>> asMap() {
        return super.asMap();
    }
}
