package com.google.firebase.sessions;

import P2.f;
import R5.E;
import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.FirebaseApp;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.google.firebase.sessions.settings.SessionsSettings;
import java.util.List;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import v5.p;
import y5.InterfaceC1952k;

@Keep
/* loaded from: classes2.dex */
public final class FirebaseSessionsRegistrar implements ComponentRegistrar {

    @Deprecated
    private static final String LIBRARY_NAME = "fire-sessions";
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final Qualified<FirebaseApp> firebaseApp = Qualified.unqualified(FirebaseApp.class);

    @Deprecated
    private static final Qualified<FirebaseInstallationsApi> firebaseInstallationsApi = Qualified.unqualified(FirebaseInstallationsApi.class);

    @Deprecated
    private static final Qualified<E> backgroundDispatcher = Qualified.qualified(Background.class, E.class);

    @Deprecated
    private static final Qualified<E> blockingDispatcher = Qualified.qualified(Blocking.class, E.class);

    @Deprecated
    private static final Qualified<f> transportFactory = Qualified.unqualified(f.class);

    @Deprecated
    private static final Qualified<SessionsSettings> sessionsSettings = Qualified.unqualified(SessionsSettings.class);

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getComponents$lambda-0, reason: not valid java name */
    public static final FirebaseSessions m70getComponents$lambda0(ComponentContainer componentContainer) {
        Object obj = componentContainer.get(firebaseApp);
        j.checkNotNullExpressionValue(obj, "container[firebaseApp]");
        Object obj2 = componentContainer.get(sessionsSettings);
        j.checkNotNullExpressionValue(obj2, "container[sessionsSettings]");
        Object obj3 = componentContainer.get(backgroundDispatcher);
        j.checkNotNullExpressionValue(obj3, "container[backgroundDispatcher]");
        return new FirebaseSessions((FirebaseApp) obj, (SessionsSettings) obj2, (InterfaceC1952k) obj3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getComponents$lambda-1, reason: not valid java name */
    public static final SessionGenerator m71getComponents$lambda1(ComponentContainer componentContainer) {
        return new SessionGenerator(WallClock.INSTANCE, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getComponents$lambda-2, reason: not valid java name */
    public static final SessionFirelogPublisher m72getComponents$lambda2(ComponentContainer componentContainer) {
        Object obj = componentContainer.get(firebaseApp);
        j.checkNotNullExpressionValue(obj, "container[firebaseApp]");
        Object obj2 = componentContainer.get(firebaseInstallationsApi);
        j.checkNotNullExpressionValue(obj2, "container[firebaseInstallationsApi]");
        Object obj3 = componentContainer.get(sessionsSettings);
        j.checkNotNullExpressionValue(obj3, "container[sessionsSettings]");
        Provider provider = componentContainer.getProvider(transportFactory);
        j.checkNotNullExpressionValue(provider, "container.getProvider(transportFactory)");
        EventGDTLogger eventGDTLogger = new EventGDTLogger(provider);
        Object obj4 = componentContainer.get(backgroundDispatcher);
        j.checkNotNullExpressionValue(obj4, "container[backgroundDispatcher]");
        return new SessionFirelogPublisherImpl((FirebaseApp) obj, (FirebaseInstallationsApi) obj2, (SessionsSettings) obj3, eventGDTLogger, (InterfaceC1952k) obj4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getComponents$lambda-3, reason: not valid java name */
    public static final SessionsSettings m73getComponents$lambda3(ComponentContainer componentContainer) {
        Object obj = componentContainer.get(firebaseApp);
        j.checkNotNullExpressionValue(obj, "container[firebaseApp]");
        Object obj2 = componentContainer.get(blockingDispatcher);
        j.checkNotNullExpressionValue(obj2, "container[blockingDispatcher]");
        Object obj3 = componentContainer.get(backgroundDispatcher);
        j.checkNotNullExpressionValue(obj3, "container[backgroundDispatcher]");
        Object obj4 = componentContainer.get(firebaseInstallationsApi);
        j.checkNotNullExpressionValue(obj4, "container[firebaseInstallationsApi]");
        return new SessionsSettings((FirebaseApp) obj, (InterfaceC1952k) obj2, (InterfaceC1952k) obj3, (FirebaseInstallationsApi) obj4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getComponents$lambda-4, reason: not valid java name */
    public static final SessionDatastore m74getComponents$lambda4(ComponentContainer componentContainer) {
        Context applicationContext = ((FirebaseApp) componentContainer.get(firebaseApp)).getApplicationContext();
        j.checkNotNullExpressionValue(applicationContext, "container[firebaseApp].applicationContext");
        Object obj = componentContainer.get(backgroundDispatcher);
        j.checkNotNullExpressionValue(obj, "container[backgroundDispatcher]");
        return new SessionDatastoreImpl(applicationContext, (InterfaceC1952k) obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getComponents$lambda-5, reason: not valid java name */
    public static final SessionLifecycleServiceBinder m75getComponents$lambda5(ComponentContainer componentContainer) {
        Object obj = componentContainer.get(firebaseApp);
        j.checkNotNullExpressionValue(obj, "container[firebaseApp]");
        return new SessionLifecycleServiceBinderImpl((FirebaseApp) obj);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component<? extends Object>> getComponents() {
        final int i2 = 5;
        final int i7 = 4;
        final int i8 = 3;
        final int i9 = 2;
        final int i10 = 1;
        final int i11 = 0;
        Component.Builder name = Component.builder(FirebaseSessions.class).name(LIBRARY_NAME);
        Qualified<FirebaseApp> qualified = firebaseApp;
        Component.Builder add = name.add(Dependency.required(qualified));
        Qualified<SessionsSettings> qualified2 = sessionsSettings;
        Component.Builder add2 = add.add(Dependency.required(qualified2));
        Qualified<E> qualified3 = backgroundDispatcher;
        Component build = add2.add(Dependency.required(qualified3)).factory(new ComponentFactory() { // from class: com.google.firebase.sessions.b
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                FirebaseSessions m70getComponents$lambda0;
                SessionGenerator m71getComponents$lambda1;
                SessionFirelogPublisher m72getComponents$lambda2;
                SessionsSettings m73getComponents$lambda3;
                SessionDatastore m74getComponents$lambda4;
                SessionLifecycleServiceBinder m75getComponents$lambda5;
                switch (i11) {
                    case 0:
                        m70getComponents$lambda0 = FirebaseSessionsRegistrar.m70getComponents$lambda0(componentContainer);
                        return m70getComponents$lambda0;
                    case 1:
                        m71getComponents$lambda1 = FirebaseSessionsRegistrar.m71getComponents$lambda1(componentContainer);
                        return m71getComponents$lambda1;
                    case 2:
                        m72getComponents$lambda2 = FirebaseSessionsRegistrar.m72getComponents$lambda2(componentContainer);
                        return m72getComponents$lambda2;
                    case 3:
                        m73getComponents$lambda3 = FirebaseSessionsRegistrar.m73getComponents$lambda3(componentContainer);
                        return m73getComponents$lambda3;
                    case 4:
                        m74getComponents$lambda4 = FirebaseSessionsRegistrar.m74getComponents$lambda4(componentContainer);
                        return m74getComponents$lambda4;
                    default:
                        m75getComponents$lambda5 = FirebaseSessionsRegistrar.m75getComponents$lambda5(componentContainer);
                        return m75getComponents$lambda5;
                }
            }
        }).eagerInDefaultApp().build();
        Component build2 = Component.builder(SessionGenerator.class).name("session-generator").factory(new ComponentFactory() { // from class: com.google.firebase.sessions.b
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                FirebaseSessions m70getComponents$lambda0;
                SessionGenerator m71getComponents$lambda1;
                SessionFirelogPublisher m72getComponents$lambda2;
                SessionsSettings m73getComponents$lambda3;
                SessionDatastore m74getComponents$lambda4;
                SessionLifecycleServiceBinder m75getComponents$lambda5;
                switch (i10) {
                    case 0:
                        m70getComponents$lambda0 = FirebaseSessionsRegistrar.m70getComponents$lambda0(componentContainer);
                        return m70getComponents$lambda0;
                    case 1:
                        m71getComponents$lambda1 = FirebaseSessionsRegistrar.m71getComponents$lambda1(componentContainer);
                        return m71getComponents$lambda1;
                    case 2:
                        m72getComponents$lambda2 = FirebaseSessionsRegistrar.m72getComponents$lambda2(componentContainer);
                        return m72getComponents$lambda2;
                    case 3:
                        m73getComponents$lambda3 = FirebaseSessionsRegistrar.m73getComponents$lambda3(componentContainer);
                        return m73getComponents$lambda3;
                    case 4:
                        m74getComponents$lambda4 = FirebaseSessionsRegistrar.m74getComponents$lambda4(componentContainer);
                        return m74getComponents$lambda4;
                    default:
                        m75getComponents$lambda5 = FirebaseSessionsRegistrar.m75getComponents$lambda5(componentContainer);
                        return m75getComponents$lambda5;
                }
            }
        }).build();
        Component.Builder add3 = Component.builder(SessionFirelogPublisher.class).name("session-publisher").add(Dependency.required(qualified));
        Qualified<FirebaseInstallationsApi> qualified4 = firebaseInstallationsApi;
        return p.listOf((Object[]) new Component[]{build, build2, add3.add(Dependency.required(qualified4)).add(Dependency.required(qualified2)).add(Dependency.requiredProvider(transportFactory)).add(Dependency.required(qualified3)).factory(new ComponentFactory() { // from class: com.google.firebase.sessions.b
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                FirebaseSessions m70getComponents$lambda0;
                SessionGenerator m71getComponents$lambda1;
                SessionFirelogPublisher m72getComponents$lambda2;
                SessionsSettings m73getComponents$lambda3;
                SessionDatastore m74getComponents$lambda4;
                SessionLifecycleServiceBinder m75getComponents$lambda5;
                switch (i9) {
                    case 0:
                        m70getComponents$lambda0 = FirebaseSessionsRegistrar.m70getComponents$lambda0(componentContainer);
                        return m70getComponents$lambda0;
                    case 1:
                        m71getComponents$lambda1 = FirebaseSessionsRegistrar.m71getComponents$lambda1(componentContainer);
                        return m71getComponents$lambda1;
                    case 2:
                        m72getComponents$lambda2 = FirebaseSessionsRegistrar.m72getComponents$lambda2(componentContainer);
                        return m72getComponents$lambda2;
                    case 3:
                        m73getComponents$lambda3 = FirebaseSessionsRegistrar.m73getComponents$lambda3(componentContainer);
                        return m73getComponents$lambda3;
                    case 4:
                        m74getComponents$lambda4 = FirebaseSessionsRegistrar.m74getComponents$lambda4(componentContainer);
                        return m74getComponents$lambda4;
                    default:
                        m75getComponents$lambda5 = FirebaseSessionsRegistrar.m75getComponents$lambda5(componentContainer);
                        return m75getComponents$lambda5;
                }
            }
        }).build(), Component.builder(SessionsSettings.class).name("sessions-settings").add(Dependency.required(qualified)).add(Dependency.required(blockingDispatcher)).add(Dependency.required(qualified3)).add(Dependency.required(qualified4)).factory(new ComponentFactory() { // from class: com.google.firebase.sessions.b
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                FirebaseSessions m70getComponents$lambda0;
                SessionGenerator m71getComponents$lambda1;
                SessionFirelogPublisher m72getComponents$lambda2;
                SessionsSettings m73getComponents$lambda3;
                SessionDatastore m74getComponents$lambda4;
                SessionLifecycleServiceBinder m75getComponents$lambda5;
                switch (i8) {
                    case 0:
                        m70getComponents$lambda0 = FirebaseSessionsRegistrar.m70getComponents$lambda0(componentContainer);
                        return m70getComponents$lambda0;
                    case 1:
                        m71getComponents$lambda1 = FirebaseSessionsRegistrar.m71getComponents$lambda1(componentContainer);
                        return m71getComponents$lambda1;
                    case 2:
                        m72getComponents$lambda2 = FirebaseSessionsRegistrar.m72getComponents$lambda2(componentContainer);
                        return m72getComponents$lambda2;
                    case 3:
                        m73getComponents$lambda3 = FirebaseSessionsRegistrar.m73getComponents$lambda3(componentContainer);
                        return m73getComponents$lambda3;
                    case 4:
                        m74getComponents$lambda4 = FirebaseSessionsRegistrar.m74getComponents$lambda4(componentContainer);
                        return m74getComponents$lambda4;
                    default:
                        m75getComponents$lambda5 = FirebaseSessionsRegistrar.m75getComponents$lambda5(componentContainer);
                        return m75getComponents$lambda5;
                }
            }
        }).build(), Component.builder(SessionDatastore.class).name("sessions-datastore").add(Dependency.required(qualified)).add(Dependency.required(qualified3)).factory(new ComponentFactory() { // from class: com.google.firebase.sessions.b
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                FirebaseSessions m70getComponents$lambda0;
                SessionGenerator m71getComponents$lambda1;
                SessionFirelogPublisher m72getComponents$lambda2;
                SessionsSettings m73getComponents$lambda3;
                SessionDatastore m74getComponents$lambda4;
                SessionLifecycleServiceBinder m75getComponents$lambda5;
                switch (i7) {
                    case 0:
                        m70getComponents$lambda0 = FirebaseSessionsRegistrar.m70getComponents$lambda0(componentContainer);
                        return m70getComponents$lambda0;
                    case 1:
                        m71getComponents$lambda1 = FirebaseSessionsRegistrar.m71getComponents$lambda1(componentContainer);
                        return m71getComponents$lambda1;
                    case 2:
                        m72getComponents$lambda2 = FirebaseSessionsRegistrar.m72getComponents$lambda2(componentContainer);
                        return m72getComponents$lambda2;
                    case 3:
                        m73getComponents$lambda3 = FirebaseSessionsRegistrar.m73getComponents$lambda3(componentContainer);
                        return m73getComponents$lambda3;
                    case 4:
                        m74getComponents$lambda4 = FirebaseSessionsRegistrar.m74getComponents$lambda4(componentContainer);
                        return m74getComponents$lambda4;
                    default:
                        m75getComponents$lambda5 = FirebaseSessionsRegistrar.m75getComponents$lambda5(componentContainer);
                        return m75getComponents$lambda5;
                }
            }
        }).build(), Component.builder(SessionLifecycleServiceBinder.class).name("sessions-service-binder").add(Dependency.required(qualified)).factory(new ComponentFactory() { // from class: com.google.firebase.sessions.b
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                FirebaseSessions m70getComponents$lambda0;
                SessionGenerator m71getComponents$lambda1;
                SessionFirelogPublisher m72getComponents$lambda2;
                SessionsSettings m73getComponents$lambda3;
                SessionDatastore m74getComponents$lambda4;
                SessionLifecycleServiceBinder m75getComponents$lambda5;
                switch (i2) {
                    case 0:
                        m70getComponents$lambda0 = FirebaseSessionsRegistrar.m70getComponents$lambda0(componentContainer);
                        return m70getComponents$lambda0;
                    case 1:
                        m71getComponents$lambda1 = FirebaseSessionsRegistrar.m71getComponents$lambda1(componentContainer);
                        return m71getComponents$lambda1;
                    case 2:
                        m72getComponents$lambda2 = FirebaseSessionsRegistrar.m72getComponents$lambda2(componentContainer);
                        return m72getComponents$lambda2;
                    case 3:
                        m73getComponents$lambda3 = FirebaseSessionsRegistrar.m73getComponents$lambda3(componentContainer);
                        return m73getComponents$lambda3;
                    case 4:
                        m74getComponents$lambda4 = FirebaseSessionsRegistrar.m74getComponents$lambda4(componentContainer);
                        return m74getComponents$lambda4;
                    default:
                        m75getComponents$lambda5 = FirebaseSessionsRegistrar.m75getComponents$lambda5(componentContainer);
                        return m75getComponents$lambda5;
                }
            }
        }).build(), LibraryVersionComponent.create(LIBRARY_NAME, BuildConfig.VERSION_NAME)});
    }
}
