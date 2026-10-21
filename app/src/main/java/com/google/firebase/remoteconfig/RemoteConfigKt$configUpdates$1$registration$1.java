package com.google.firebase.remoteconfig;

import R5.J;
import T5.l;
import T5.p;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class RemoteConfigKt$configUpdates$1$registration$1 implements ConfigUpdateListener {
    final /* synthetic */ p $$this$callbackFlow;
    final /* synthetic */ FirebaseRemoteConfig $this_configUpdates;

    public RemoteConfigKt$configUpdates$1$registration$1(FirebaseRemoteConfig firebaseRemoteConfig, p pVar) {
        this.$this_configUpdates = firebaseRemoteConfig;
        this.$$this$callbackFlow = pVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onUpdate$lambda$0(p $this$callbackFlow, ConfigUpdate configUpdate) {
        j.checkNotNullParameter($this$callbackFlow, "$$this$callbackFlow");
        j.checkNotNullParameter(configUpdate, "$configUpdate");
        l.trySendBlocking($this$callbackFlow, configUpdate);
    }

    @Override // com.google.firebase.remoteconfig.ConfigUpdateListener
    public void onError(FirebaseRemoteConfigException error) {
        j.checkNotNullParameter(error, "error");
        J.cancel(this.$$this$callbackFlow, "Error listening for config updates.", error);
    }

    @Override // com.google.firebase.remoteconfig.ConfigUpdateListener
    public void onUpdate(ConfigUpdate configUpdate) {
        j.checkNotNullParameter(configUpdate, "configUpdate");
        this.$this_configUpdates.schedule(new d(this.$$this$callbackFlow, configUpdate, 0));
    }
}
