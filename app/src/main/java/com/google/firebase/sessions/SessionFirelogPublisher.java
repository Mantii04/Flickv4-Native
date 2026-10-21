package com.google.firebase.sessions;

import com.google.firebase.Firebase;
import com.google.firebase.FirebaseKt;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public interface SessionFirelogPublisher {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final SessionFirelogPublisher getInstance() {
            Object obj = FirebaseKt.getApp(Firebase.INSTANCE).get(SessionFirelogPublisher.class);
            j.checkNotNullExpressionValue(obj, "Firebase.app[SessionFirelogPublisher::class.java]");
            return (SessionFirelogPublisher) obj;
        }
    }

    void logSession(SessionDetails sessionDetails);
}
