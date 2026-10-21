package y5;

import H5.p;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import u5.C1711j;

/* renamed from: y5.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1948g {
    public static final <R, T> void startCoroutine(p pVar, R r6, InterfaceC1944c completion) {
        kotlin.jvm.internal.j.checkNotNullParameter(pVar, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(completion, "completion");
        InterfaceC1944c intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(pVar, r6, completion));
        int i2 = Result.f17390b;
        intercepted.resumeWith(Result.m103constructorimpl(C1711j.f20329a));
    }
}
