package androidx.lifecycle;

import R5.AbstractC0277i;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.sync.MutexImpl;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* loaded from: classes.dex */
final class RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1 implements r {

    @A5.d(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1", f = "RepeatOnLifecycle.kt", l = {171, 110}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements H5.p {

        /* renamed from: b, reason: collision with root package name */
        public a6.b f6984b;

        /* renamed from: e, reason: collision with root package name */
        public int f6985e;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
            return new AnonymousClass1(2, interfaceC1944c);
        }

        @Override // H5.p
        public final Object invoke(R5.I i2, InterfaceC1944c interfaceC1944c) {
            return ((AnonymousClass1) create(i2, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            a6.b bVar;
            Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
            int i2 = this.f6985e;
            if (i2 == 0) {
                kotlin.b.throwOnFailure(obj);
                this.f6984b = null;
                this.f6985e = 1;
                throw null;
            }
            if (i2 == 1) {
                a6.b bVar2 = this.f6984b;
                kotlin.b.throwOnFailure(obj);
                try {
                    RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 = new RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1(null, null);
                    this.f6984b = bVar2;
                    this.f6985e = 2;
                    if (R5.J.coroutineScope(repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    bVar = bVar2;
                } catch (Throwable th) {
                    th = th;
                    bVar = bVar2;
                    ((MutexImpl) bVar).unlock(null);
                    throw th;
                }
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                bVar = this.f6984b;
                try {
                    kotlin.b.throwOnFailure(obj);
                } catch (Throwable th2) {
                    th = th2;
                    ((MutexImpl) bVar).unlock(null);
                    throw th;
                }
            }
            ((MutexImpl) bVar).unlock(null);
            return C1711j.f20329a;
        }
    }

    @Override // androidx.lifecycle.r
    public final void onStateChanged(InterfaceC0561t interfaceC0561t, Lifecycle$Event event) {
        kotlin.jvm.internal.j.checkNotNullParameter(interfaceC0561t, "<anonymous parameter 0>");
        kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
        if (event == null) {
            AbstractC0277i.launch$default(null, null, null, new AnonymousClass1(2, null), 3, null);
            throw null;
        }
        if (event != Lifecycle$Event.ON_DESTROY) {
            return;
        }
        int i2 = Result.f17390b;
        Result.m103constructorimpl(C1711j.f20329a);
        throw null;
    }
}
