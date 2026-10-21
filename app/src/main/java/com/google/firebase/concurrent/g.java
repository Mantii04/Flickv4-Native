package com.google.firebase.concurrent;

import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.inject.Provider;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final /* synthetic */ class g implements Provider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13260a;

    public /* synthetic */ g(int i2) {
        this.f13260a = i2;
    }

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        ScheduledExecutorService lambda$static$0;
        ScheduledExecutorService lambda$static$1;
        ScheduledExecutorService lambda$static$2;
        ScheduledExecutorService lambda$static$3;
        AnalyticsConnector lambda$getFetchHandler$0;
        switch (this.f13260a) {
            case 0:
                lambda$static$0 = ExecutorsRegistrar.lambda$static$0();
                return lambda$static$0;
            case 1:
                lambda$static$1 = ExecutorsRegistrar.lambda$static$1();
                return lambda$static$1;
            case 2:
                lambda$static$2 = ExecutorsRegistrar.lambda$static$2();
                return lambda$static$2;
            case 3:
                lambda$static$3 = ExecutorsRegistrar.lambda$static$3();
                return lambda$static$3;
            default:
                lambda$getFetchHandler$0 = RemoteConfigComponent.lambda$getFetchHandler$0();
                return lambda$getFetchHandler$0;
        }
    }
}
