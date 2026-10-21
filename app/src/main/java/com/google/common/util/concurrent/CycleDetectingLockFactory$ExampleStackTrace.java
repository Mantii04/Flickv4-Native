package com.google.common.util.concurrent;

import V3.r;
import V3.s;
import com.google.common.collect.ImmutableSet;

/* loaded from: classes2.dex */
abstract class CycleDetectingLockFactory$ExampleStackTrace extends IllegalStateException {
    static {
        ImmutableSet.of(s.class.getName(), CycleDetectingLockFactory$ExampleStackTrace.class.getName(), r.class.getName());
    }
}
