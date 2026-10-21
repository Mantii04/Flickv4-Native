package X3;

import P2.f;
import com.google.firebase.abt.component.AbtComponent;
import com.google.firebase.abt.component.AbtRegistrar;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.datatransport.TransportRegistrar;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import com.google.firebase.platforminfo.DefaultUserAgentPublisher;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements ComponentFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4234a;

    public /* synthetic */ a(int i2) {
        this.f4234a = i2;
    }

    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        AbtComponent lambda$getComponents$0;
        f lambda$getComponents$02;
        ScheduledExecutorService lambda$getComponents$4;
        ScheduledExecutorService lambda$getComponents$5;
        ScheduledExecutorService lambda$getComponents$6;
        Executor lambda$getComponents$7;
        FirebaseInstallationsApi lambda$getComponents$03;
        UserAgentPublisher lambda$component$0;
        switch (this.f4234a) {
            case 0:
                lambda$getComponents$0 = AbtRegistrar.lambda$getComponents$0(componentContainer);
                return lambda$getComponents$0;
            case 1:
                lambda$getComponents$02 = TransportRegistrar.lambda$getComponents$0(componentContainer);
                return lambda$getComponents$02;
            case 2:
                lambda$getComponents$4 = ExecutorsRegistrar.lambda$getComponents$4(componentContainer);
                return lambda$getComponents$4;
            case 3:
                lambda$getComponents$5 = ExecutorsRegistrar.lambda$getComponents$5(componentContainer);
                return lambda$getComponents$5;
            case 4:
                lambda$getComponents$6 = ExecutorsRegistrar.lambda$getComponents$6(componentContainer);
                return lambda$getComponents$6;
            case 5:
                lambda$getComponents$7 = ExecutorsRegistrar.lambda$getComponents$7(componentContainer);
                return lambda$getComponents$7;
            case 6:
                lambda$getComponents$03 = FirebaseInstallationsRegistrar.lambda$getComponents$0(componentContainer);
                return lambda$getComponents$03;
            default:
                lambda$component$0 = DefaultUserAgentPublisher.lambda$component$0(componentContainer);
                return lambda$component$0;
        }
    }
}
