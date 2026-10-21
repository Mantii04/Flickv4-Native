package androidx.datastore.core;

import A5.d;
import U5.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import y5.InterfaceC1944c;

/* loaded from: classes.dex */
public final class SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2 implements c {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f5633b;

    @d(c = "androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2", f = "SingleProcessDataStore.kt", l = {137}, m = "emit")
    /* renamed from: androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f5634b;

        /* renamed from: e, reason: collision with root package name */
        public int f5635e;

        public AnonymousClass1(InterfaceC1944c interfaceC1944c) {
            super(interfaceC1944c);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f5634b = obj;
            this.f5635e |= Integer.MIN_VALUE;
            return SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2.this.emit(null, this);
        }
    }

    public SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2(c cVar) {
        this.f5633b = cVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // U5.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object emit(java.lang.Object r5, y5.InterfaceC1944c r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1 r0 = (androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2.AnonymousClass1) r0
            int r1 = r0.f5635e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f5635e = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1 r0 = new androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f5634b
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f5635e
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.b.throwOnFailure(r6)
            goto L53
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.b.throwOnFailure(r6)
            Y.p r5 = (Y.p) r5
            boolean r6 = r5 instanceof Y.h
            if (r6 != 0) goto L6f
            boolean r6 = r5 instanceof Y.f
            if (r6 != 0) goto L68
            boolean r6 = r5 instanceof Y.b
            if (r6 == 0) goto L56
            Y.b r5 = (Y.b) r5
            java.lang.Object r5 = r5.getValue()
            r0.f5635e = r3
            U5.c r6 = r4.f5633b
            java.lang.Object r5 = r6.emit(r5, r0)
            if (r5 != r1) goto L53
            return r1
        L53:
            u5.j r5 = u5.C1711j.f20329a
            return r5
        L56:
            boolean r5 = r5 instanceof Y.q
            if (r5 == 0) goto L62
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"
            r5.<init>(r6)
            throw r5
        L62:
            kotlin.NoWhenBranchMatchedException r5 = new kotlin.NoWhenBranchMatchedException
            r5.<init>()
            throw r5
        L68:
            Y.f r5 = (Y.f) r5
            java.lang.Throwable r5 = r5.getFinalException()
            throw r5
        L6f:
            Y.h r5 = (Y.h) r5
            java.lang.Throwable r5 = r5.getReadException()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2.emit(java.lang.Object, y5.c):java.lang.Object");
    }
}
