package io.reactivex.internal.operators.parallel;

import io.reactivex.functions.Function;
import io.reactivex.internal.operators.flowable.FlowableFlatMap;
import io.reactivex.parallel.ParallelFlowable;
import m6.b;
import m6.c;

/* loaded from: classes2.dex */
public final class ParallelFlatMap<T, R> extends ParallelFlowable<R> {
    final boolean delayError;
    final Function<? super T, ? extends b> mapper;
    final int maxConcurrency;
    final int prefetch;
    final ParallelFlowable<T> source;

    public ParallelFlatMap(ParallelFlowable<T> parallelFlowable, Function<? super T, ? extends b> function, boolean z6, int i2, int i7) {
        this.source = parallelFlowable;
        this.mapper = function;
        this.delayError = z6;
        this.maxConcurrency = i2;
        this.prefetch = i7;
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public int parallelism() {
        return this.source.parallelism();
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public void subscribe(c[] cVarArr) {
        if (validate(cVarArr)) {
            int length = cVarArr.length;
            c[] cVarArr2 = new c[length];
            for (int i2 = 0; i2 < length; i2++) {
                cVarArr2[i2] = FlowableFlatMap.subscribe(cVarArr[i2], this.mapper, this.delayError, this.maxConcurrency, this.prefetch);
            }
            this.source.subscribe(cVarArr2);
        }
    }
}
