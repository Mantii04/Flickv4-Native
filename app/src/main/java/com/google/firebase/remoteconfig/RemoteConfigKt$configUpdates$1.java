package com.google.firebase.remoteconfig;

import H5.p;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.channels.ProduceKt;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@A5.d(c = "com.google.firebase.remoteconfig.RemoteConfigKt$configUpdates$1", f = "RemoteConfig.kt", l = {76}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class RemoteConfigKt$configUpdates$1 extends SuspendLambda implements p {
    final /* synthetic */ FirebaseRemoteConfig $this_configUpdates;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteConfigKt$configUpdates$1(FirebaseRemoteConfig firebaseRemoteConfig, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.$this_configUpdates = firebaseRemoteConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        RemoteConfigKt$configUpdates$1 remoteConfigKt$configUpdates$1 = new RemoteConfigKt$configUpdates$1(this.$this_configUpdates, interfaceC1944c);
        remoteConfigKt$configUpdates$1.L$0 = obj;
        return remoteConfigKt$configUpdates$1;
    }

    @Override // H5.p
    public final Object invoke(T5.p pVar, InterfaceC1944c interfaceC1944c) {
        return ((RemoteConfigKt$configUpdates$1) create(pVar, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.b.throwOnFailure(obj);
            T5.p pVar = (T5.p) this.L$0;
            FirebaseRemoteConfig firebaseRemoteConfig = this.$this_configUpdates;
            final ConfigUpdateListenerRegistration addOnConfigUpdateListener = firebaseRemoteConfig.addOnConfigUpdateListener(new RemoteConfigKt$configUpdates$1$registration$1(firebaseRemoteConfig, pVar));
            j.checkNotNullExpressionValue(addOnConfigUpdateListener, "FirebaseRemoteConfig.con…      }\n        }\n      )");
            H5.a aVar = new H5.a() { // from class: com.google.firebase.remoteconfig.RemoteConfigKt$configUpdates$1.1
                {
                    super(0);
                }

                @Override // H5.a
                public /* bridge */ /* synthetic */ Object invoke() {
                    m67invoke();
                    return C1711j.f20329a;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m67invoke() {
                    ConfigUpdateListenerRegistration.this.remove();
                }
            };
            this.label = 1;
            if (ProduceKt.awaitClose(pVar, aVar, this) == coroutine_suspended) {
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
