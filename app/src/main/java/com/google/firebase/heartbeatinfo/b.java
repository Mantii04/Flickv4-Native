package com.google.firebase.heartbeatinfo;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Qualified;
import com.google.firebase.crashlytics.CrashlyticsRegistrar;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import com.google.firebase.remoteconfig.RemoteConfigRegistrar;

/* loaded from: classes2.dex */
public final /* synthetic */ class b implements ComponentFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13285a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f13286b;

    public /* synthetic */ b(Object obj, int i2) {
        this.f13285a = i2;
        this.f13286b = obj;
    }

    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        DefaultHeartBeatController lambda$component$3;
        RemoteConfigComponent lambda$getComponents$0;
        FirebaseCrashlytics buildCrashlytics;
        switch (this.f13285a) {
            case 0:
                lambda$component$3 = DefaultHeartBeatController.lambda$component$3((Qualified) this.f13286b, componentContainer);
                return lambda$component$3;
            case 1:
                lambda$getComponents$0 = RemoteConfigRegistrar.lambda$getComponents$0((Qualified) this.f13286b, componentContainer);
                return lambda$getComponents$0;
            default:
                buildCrashlytics = ((CrashlyticsRegistrar) this.f13286b).buildCrashlytics(componentContainer);
                return buildCrashlytics;
        }
    }
}
