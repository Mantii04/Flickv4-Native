package androidx.core.view;

import A5.d;
import H5.p;
import O5.f;
import android.view.View;
import cz.msebera.android.httpclient.HttpStatus;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;

@d(c = "androidx.core.view.ViewKt$allViews$1", f = "View.kt", l = {HttpStatus.SC_CONFLICT, HttpStatus.SC_LENGTH_REQUIRED}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ViewKt$allViews$1 extends RestrictedSuspendLambda implements p {

    /* renamed from: e, reason: collision with root package name */
    public int f5562e;

    /* renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f5563f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ View f5564j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewKt$allViews$1(View view, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.f5564j = view;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        ViewKt$allViews$1 viewKt$allViews$1 = new ViewKt$allViews$1(this.f5564j, interfaceC1944c);
        viewKt$allViews$1.f5563f = obj;
        return viewKt$allViews$1;
    }

    @Override // H5.p
    public final Object invoke(f fVar, InterfaceC1944c interfaceC1944c) {
        return ((ViewKt$allViews$1) create(fVar, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004a, code lost:
    
        if (r1.yieldAll(r6, r5) == r0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004c, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0034, code lost:
    
        if (r1.yield(r2, r5) == r0) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r1 = r5.f5562e
            android.view.View r2 = r5.f5564j
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L24
            if (r1 == r4) goto L1c
            if (r1 != r3) goto L14
            kotlin.b.throwOnFailure(r6)
            goto L4d
        L14:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1c:
            java.lang.Object r1 = r5.f5563f
            O5.f r1 = (O5.f) r1
            kotlin.b.throwOnFailure(r6)
            goto L37
        L24:
            kotlin.b.throwOnFailure(r6)
            java.lang.Object r6 = r5.f5563f
            r1 = r6
            O5.f r1 = (O5.f) r1
            r5.f5563f = r1
            r5.f5562e = r4
            java.lang.Object r6 = r1.yield(r2, r5)
            if (r6 != r0) goto L37
            goto L4c
        L37:
            boolean r6 = r2 instanceof android.view.ViewGroup
            if (r6 == 0) goto L4d
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            O5.d r6 = androidx.core.view.ViewGroupKt.getDescendants(r2)
            r2 = 0
            r5.f5563f = r2
            r5.f5562e = r3
            java.lang.Object r6 = r1.yieldAll(r6, r5)
            if (r6 != r0) goto L4d
        L4c:
            return r0
        L4d:
            u5.j r6 = u5.C1711j.f20329a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.ViewKt$allViews$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
