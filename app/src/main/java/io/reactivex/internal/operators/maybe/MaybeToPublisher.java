package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeSource;
import io.reactivex.functions.Function;
import m6.b;

/* loaded from: classes2.dex */
public enum MaybeToPublisher implements Function<MaybeSource<Object>, b> {
    INSTANCE;

    public static <T> Function<MaybeSource<T>, b> instance() {
        return INSTANCE;
    }

    @Override // io.reactivex.functions.Function
    public b apply(MaybeSource<Object> maybeSource) throws Exception {
        return new MaybeToFlowable(maybeSource);
    }
}
