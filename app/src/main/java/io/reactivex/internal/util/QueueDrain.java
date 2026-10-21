package io.reactivex.internal.util;

import m6.c;

/* loaded from: classes2.dex */
public interface QueueDrain<T, U> {
    boolean accept(c cVar, T t6);

    boolean cancelled();

    boolean done();

    boolean enter();

    Throwable error();

    int leave(int i2);

    long produced(long j7);

    long requested();
}
