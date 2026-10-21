package org.koin.androidx.scope;

import androidx.lifecycle.AbstractC0547e;
import androidx.lifecycle.InterfaceC0548f;
import androidx.lifecycle.InterfaceC0561t;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class ComponentActivityExtKt$registerScopeForLifecycle$1 implements InterfaceC0548f {
    @Override // androidx.lifecycle.InterfaceC0548f
    public final /* synthetic */ void onCreate(InterfaceC0561t interfaceC0561t) {
        AbstractC0547e.a(this, interfaceC0561t);
    }

    @Override // androidx.lifecycle.InterfaceC0548f
    public void onDestroy(InterfaceC0561t owner) {
        j.checkNotNullParameter(owner, "owner");
        AbstractC0547e.b(this, owner);
        throw null;
    }

    @Override // androidx.lifecycle.InterfaceC0548f
    public final /* synthetic */ void onPause(InterfaceC0561t interfaceC0561t) {
        AbstractC0547e.c(this, interfaceC0561t);
    }

    @Override // androidx.lifecycle.InterfaceC0548f
    public final /* synthetic */ void onResume(InterfaceC0561t interfaceC0561t) {
        AbstractC0547e.d(this, interfaceC0561t);
    }

    @Override // androidx.lifecycle.InterfaceC0548f
    public final /* synthetic */ void onStart(InterfaceC0561t interfaceC0561t) {
        AbstractC0547e.e(this, interfaceC0561t);
    }

    @Override // androidx.lifecycle.InterfaceC0548f
    public final /* synthetic */ void onStop(InterfaceC0561t interfaceC0561t) {
        AbstractC0547e.f(this, interfaceC0561t);
    }
}
