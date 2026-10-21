package com.google.firebase.sessions.settings;

import A5.d;
import H5.p;
import android.util.Log;
import kotlin.b;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$2", f = "RemoteSettings.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class RemoteSettings$updateSettings$2$2 extends SuspendLambda implements p {
    /* synthetic */ Object L$0;
    int label;

    public RemoteSettings$updateSettings$2$2(InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        RemoteSettings$updateSettings$2$2 remoteSettings$updateSettings$2$2 = new RemoteSettings$updateSettings$2$2(interfaceC1944c);
        remoteSettings$updateSettings$2$2.L$0 = obj;
        return remoteSettings$updateSettings$2$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractC2008a.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        b.throwOnFailure(obj);
        Log.e(RemoteSettings.TAG, "Error failing to fetch the remote configs: " + ((String) this.L$0));
        return C1711j.f20329a;
    }

    @Override // H5.p
    public final Object invoke(String str, InterfaceC1944c interfaceC1944c) {
        return ((RemoteSettings$updateSettings$2$2) create(str, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }
}
