package com.google.common.collect;

import java.util.Collection;

/* loaded from: classes2.dex */
class EmptyImmutableListMultimap extends ImmutableListMultimap<Object, Object> {

    /* renamed from: p, reason: collision with root package name */
    public static final EmptyImmutableListMultimap f13059p = new EmptyImmutableListMultimap();
    private static final long serialVersionUID = 0;

    private EmptyImmutableListMultimap() {
        super(ImmutableMap.of(), 0);
    }

    @Override // com.google.common.collect.ImmutableMultimap, Q3.AbstractC0237g, Q3.W
    public ImmutableMap<Object, Collection<Object>> asMap() {
        return super.asMap();
    }
}
