package com.google.firebase;

import R5.AbstractC0276h0;
import R5.E;
import android.content.Context;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import java.lang.annotation.Annotation;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class FirebaseKt {
    public static final FirebaseApp app(Firebase firebase, String name) {
        j.checkNotNullParameter(firebase, "<this>");
        j.checkNotNullParameter(name, "name");
        FirebaseApp firebaseApp = FirebaseApp.getInstance(name);
        j.checkNotNullExpressionValue(firebaseApp, "getInstance(name)");
        return firebaseApp;
    }

    private static final /* synthetic */ <T extends Annotation> Component<E> coroutineDispatcher() {
        j.reifiedOperationMarker(4, "T");
        Component.Builder builder = Component.builder(Qualified.qualified(Annotation.class, E.class));
        j.reifiedOperationMarker(4, "T");
        Component.Builder add = builder.add(Dependency.required((Qualified<?>) Qualified.qualified(Annotation.class, Executor.class)));
        j.needClassReification();
        Component<E> build = add.factory(new ComponentFactory() { // from class: com.google.firebase.FirebaseKt$coroutineDispatcher$1
            @Override // com.google.firebase.components.ComponentFactory
            public final E create(ComponentContainer componentContainer) {
                j.reifiedOperationMarker(4, "T");
                Object obj = componentContainer.get(Qualified.qualified(Annotation.class, Executor.class));
                j.checkNotNullExpressionValue(obj, "c.get(Qualified.qualifie…a, Executor::class.java))");
                return AbstractC0276h0.from((Executor) obj);
            }
        }).build();
        j.checkNotNullExpressionValue(build, "builder(Qualified.qualif…cher()\n    }\n    .build()");
        return build;
    }

    public static final FirebaseApp getApp(Firebase firebase) {
        j.checkNotNullParameter(firebase, "<this>");
        FirebaseApp firebaseApp = FirebaseApp.getInstance();
        j.checkNotNullExpressionValue(firebaseApp, "getInstance()");
        return firebaseApp;
    }

    public static final FirebaseOptions getOptions(Firebase firebase) {
        j.checkNotNullParameter(firebase, "<this>");
        FirebaseOptions options = getApp(Firebase.INSTANCE).getOptions();
        j.checkNotNullExpressionValue(options, "Firebase.app.options");
        return options;
    }

    public static final FirebaseApp initialize(Firebase firebase, Context context) {
        j.checkNotNullParameter(firebase, "<this>");
        j.checkNotNullParameter(context, "context");
        return FirebaseApp.initializeApp(context);
    }

    public static final FirebaseApp initialize(Firebase firebase, Context context, FirebaseOptions options) {
        j.checkNotNullParameter(firebase, "<this>");
        j.checkNotNullParameter(context, "context");
        j.checkNotNullParameter(options, "options");
        FirebaseApp initializeApp = FirebaseApp.initializeApp(context, options);
        j.checkNotNullExpressionValue(initializeApp, "initializeApp(context, options)");
        return initializeApp;
    }

    public static final FirebaseApp initialize(Firebase firebase, Context context, FirebaseOptions options, String name) {
        j.checkNotNullParameter(firebase, "<this>");
        j.checkNotNullParameter(context, "context");
        j.checkNotNullParameter(options, "options");
        j.checkNotNullParameter(name, "name");
        FirebaseApp initializeApp = FirebaseApp.initializeApp(context, options, name);
        j.checkNotNullExpressionValue(initializeApp, "initializeApp(context, options, name)");
        return initializeApp;
    }
}
