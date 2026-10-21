package com.google.firebase.sessions.settings;

import A5.d;
import H5.p;
import R5.I;
import kotlin.b;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "com.google.firebase.sessions.settings.RemoteSettings$clearCachedSettings$1", f = "RemoteSettings.kt", l = {151}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class RemoteSettings$clearCachedSettings$1 extends SuspendLambda implements p {
    int label;
    final /* synthetic */ RemoteSettings this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteSettings$clearCachedSettings$1(RemoteSettings remoteSettings, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.this$0 = remoteSettings;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        return new RemoteSettings$clearCachedSettings$1(this.this$0, interfaceC1944c);
    }

    @Override // H5.p
    public final Object invoke(I i2, InterfaceC1944c interfaceC1944c) {
        return ((RemoteSettings$clearCachedSettings$1) create(i2, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SettingsCache settingsCache;
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.label;
        if (i2 == 0) {
            b.throwOnFailure(obj);
            settingsCache = this.this$0.settingsCache;
            this.label = 1;
            if (settingsCache.removeConfigs$com_google_firebase_firebase_sessions(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            b.throwOnFailure(obj);
        }
        return C1711j.f20329a;
    }
}
