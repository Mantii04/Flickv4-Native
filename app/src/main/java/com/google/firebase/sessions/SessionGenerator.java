package com.google.firebase.sessions;

import P5.p;
import com.google.firebase.Firebase;
import com.google.firebase.FirebaseKt;
import java.util.Locale;
import java.util.UUID;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class SessionGenerator {
    public static final Companion Companion = new Companion(null);
    private SessionDetails currentSession;
    private final String firstSessionId;
    private int sessionIndex;
    private final TimeProvider timeProvider;
    private final H5.a uuidGenerator;

    /* renamed from: com.google.firebase.sessions.SessionGenerator$1, reason: invalid class name */
    public /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements H5.a {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(0, UUID.class, "randomUUID", "randomUUID()Ljava/util/UUID;", 0);
        }

        @Override // H5.a
        public final UUID invoke() {
            return UUID.randomUUID();
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final SessionGenerator getInstance() {
            Object obj = FirebaseKt.getApp(Firebase.INSTANCE).get(SessionGenerator.class);
            j.checkNotNullExpressionValue(obj, "Firebase.app[SessionGenerator::class.java]");
            return (SessionGenerator) obj;
        }

        private Companion() {
        }
    }

    public SessionGenerator(TimeProvider timeProvider, H5.a uuidGenerator) {
        j.checkNotNullParameter(timeProvider, "timeProvider");
        j.checkNotNullParameter(uuidGenerator, "uuidGenerator");
        this.timeProvider = timeProvider;
        this.uuidGenerator = uuidGenerator;
        this.firstSessionId = generateSessionId();
        this.sessionIndex = -1;
    }

    private final String generateSessionId() {
        String uuid = ((UUID) this.uuidGenerator.invoke()).toString();
        j.checkNotNullExpressionValue(uuid, "uuidGenerator().toString()");
        String lowerCase = p.replace$default(uuid, "-", "", false, 4, (Object) null).toLowerCase(Locale.ROOT);
        j.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return lowerCase;
    }

    public final SessionDetails generateNewSession() {
        int i2 = this.sessionIndex + 1;
        this.sessionIndex = i2;
        this.currentSession = new SessionDetails(i2 == 0 ? this.firstSessionId : generateSessionId(), this.firstSessionId, this.sessionIndex, this.timeProvider.currentTimeUs());
        return getCurrentSession();
    }

    public final SessionDetails getCurrentSession() {
        SessionDetails sessionDetails = this.currentSession;
        if (sessionDetails != null) {
            return sessionDetails;
        }
        j.throwUninitializedPropertyAccessException("currentSession");
        return null;
    }

    public final boolean getHasGenerateSession() {
        return this.currentSession != null;
    }

    public /* synthetic */ SessionGenerator(TimeProvider timeProvider, H5.a aVar, int i2, g gVar) {
        this(timeProvider, (i2 & 2) != 0 ? AnonymousClass1.INSTANCE : aVar);
    }
}
