package androidx.lifecycle;

import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@A5.d(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1", f = "RepeatOnLifecycle.kt", l = {111}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 extends SuspendLambda implements H5.p {

    /* renamed from: b, reason: collision with root package name */
    public int f6986b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f6987e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ H5.p f6988f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1(H5.p pVar, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.f6988f = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 = new RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1(this.f6988f, interfaceC1944c);
        repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1.f6987e = obj;
        return repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1;
    }

    @Override // H5.p
    public final Object invoke(R5.I i2, InterfaceC1944c interfaceC1944c) {
        return ((RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1) create(i2, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.f6986b;
        if (i2 == 0) {
            kotlin.b.throwOnFailure(obj);
            R5.I i7 = (R5.I) this.f6987e;
            this.f6986b = 1;
            if (this.f6988f.invoke(i7, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.b.throwOnFailure(obj);
        }
        return C1711j.f20329a;
    }
}
