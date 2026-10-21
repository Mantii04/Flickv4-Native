package com.google.firebase.sessions;

import A5.d;
import H5.q;
import U5.c;
import android.util.Log;
import b0.AbstractC0626c;
import b0.AbstractC0627d;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "com.google.firebase.sessions.SessionDatastoreImpl$firebaseSessionDataFlow$1", f = "SessionDatastore.kt", l = {75}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class SessionDatastoreImpl$firebaseSessionDataFlow$1 extends SuspendLambda implements q {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    public SessionDatastoreImpl$firebaseSessionDataFlow$1(InterfaceC1944c interfaceC1944c) {
        super(3, interfaceC1944c);
    }

    @Override // H5.q
    public final Object invoke(c cVar, Throwable th, InterfaceC1944c interfaceC1944c) {
        SessionDatastoreImpl$firebaseSessionDataFlow$1 sessionDatastoreImpl$firebaseSessionDataFlow$1 = new SessionDatastoreImpl$firebaseSessionDataFlow$1(interfaceC1944c);
        sessionDatastoreImpl$firebaseSessionDataFlow$1.L$0 = cVar;
        sessionDatastoreImpl$firebaseSessionDataFlow$1.L$1 = th;
        return sessionDatastoreImpl$firebaseSessionDataFlow$1.invokeSuspend(C1711j.f20329a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.b.throwOnFailure(obj);
            c cVar = (c) this.L$0;
            Log.e("FirebaseSessionsRepo", "Error reading stored session data.", (Throwable) this.L$1);
            AbstractC0626c createEmpty = AbstractC0627d.createEmpty();
            this.L$0 = null;
            this.label = 1;
            if (cVar.emit(createEmpty, this) == coroutine_suspended) {
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
