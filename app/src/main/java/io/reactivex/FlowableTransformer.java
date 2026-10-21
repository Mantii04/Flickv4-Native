package io.reactivex;

import io.reactivex.annotations.NonNull;
import m6.b;

/* loaded from: classes2.dex */
public interface FlowableTransformer<Upstream, Downstream> {
    @NonNull
    b apply(@NonNull Flowable<Upstream> flowable);
}
