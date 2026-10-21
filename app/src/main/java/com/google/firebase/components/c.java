package com.google.firebase.components;

import com.google.firebase.FirebaseApp;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.installations.local.IidStore;

/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Provider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13224a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f13225b;

    public /* synthetic */ c(Object obj, int i2) {
        this.f13224a = i2;
        this.f13225b = obj;
    }

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        ComponentRegistrar instantiate;
        IidStore lambda$new$0;
        switch (this.f13224a) {
            case 0:
                instantiate = ComponentDiscovery.instantiate((String) this.f13225b);
                return instantiate;
            default:
                lambda$new$0 = FirebaseInstallations.lambda$new$0((FirebaseApp) this.f13225b);
                return lambda$new$0;
        }
    }
}
