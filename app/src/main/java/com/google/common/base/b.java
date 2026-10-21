package com.google.common.base;

import P3.v;
import P3.w;
import java.util.Arrays;

/* loaded from: classes2.dex */
public abstract class b {
    public static <T> w alwaysTrue() {
        return Predicates$ObjectPredicate.f13019b;
    }

    public static <T> w and(w wVar, w wVar2) {
        return new Predicates$AndPredicate(Arrays.asList((w) v.checkNotNull(wVar), (w) v.checkNotNull(wVar2)));
    }
}
