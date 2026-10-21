package io.reactivex.internal.operators.parallel;

import io.reactivex.parallel.ParallelFlowable;
import m6.b;
import m6.c;

/* loaded from: classes2.dex */
public final class ParallelFromArray<T> extends ParallelFlowable<T> {
    final b[] sources;

    public ParallelFromArray(b[] bVarArr) {
        this.sources = bVarArr;
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public int parallelism() {
        return this.sources.length;
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public void subscribe(c[] cVarArr) {
        if (validate(cVarArr)) {
            int length = cVarArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.sources[i2].subscribe(cVarArr[i2]);
            }
        }
    }
}
