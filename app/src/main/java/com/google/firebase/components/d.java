package com.google.firebase.components;

import com.google.firebase.components.ComponentRuntime;
import com.google.firebase.inject.Provider;

/* loaded from: classes2.dex */
public final /* synthetic */ class d implements Provider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13226a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ComponentRegistrar f13227b;

    public /* synthetic */ d(ComponentRegistrar componentRegistrar, int i2) {
        this.f13226a = i2;
        this.f13227b = componentRegistrar;
    }

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        ComponentRegistrar lambda$toProviders$1;
        ComponentRegistrar lambda$addComponentRegistrar$0;
        switch (this.f13226a) {
            case 0:
                lambda$toProviders$1 = ComponentRuntime.lambda$toProviders$1(this.f13227b);
                return lambda$toProviders$1;
            default:
                lambda$addComponentRegistrar$0 = ComponentRuntime.Builder.lambda$addComponentRegistrar$0(this.f13227b);
                return lambda$addComponentRegistrar$0;
        }
    }
}
