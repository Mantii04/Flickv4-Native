package com.google.firebase.sessions.settings;

import A5.d;
import H5.p;
import androidx.datastore.preferences.core.MutablePreferences;
import b0.C0624a;
import kotlin.b;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "com.google.firebase.sessions.settings.SettingsCache$updateConfigValue$2", f = "SettingsCache.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class SettingsCache$updateConfigValue$2 extends SuspendLambda implements p {
    final /* synthetic */ C0624a $key;
    final /* synthetic */ T $value;
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SettingsCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsCache$updateConfigValue$2(T t6, C0624a c0624a, SettingsCache settingsCache, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.$value = t6;
        this.$key = c0624a;
        this.this$0 = settingsCache;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        SettingsCache$updateConfigValue$2 settingsCache$updateConfigValue$2 = new SettingsCache$updateConfigValue$2(this.$value, this.$key, this.this$0, interfaceC1944c);
        settingsCache$updateConfigValue$2.L$0 = obj;
        return settingsCache$updateConfigValue$2;
    }

    @Override // H5.p
    public final Object invoke(MutablePreferences mutablePreferences, InterfaceC1944c interfaceC1944c) {
        return ((SettingsCache$updateConfigValue$2) create(mutablePreferences, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractC2008a.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        b.throwOnFailure(obj);
        MutablePreferences mutablePreferences = (MutablePreferences) this.L$0;
        T t6 = this.$value;
        if (t6 != 0) {
            mutablePreferences.set(this.$key, t6);
        } else {
            mutablePreferences.remove(this.$key);
        }
        this.this$0.updateSessionConfigs(mutablePreferences);
        return C1711j.f20329a;
    }
}
