package com.google.firebase.sessions;

import P2.f;
import P5.c;
import S2.F;
import S2.G;
import android.util.Log;
import com.google.firebase.inject.Provider;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class EventGDTLogger implements EventGDTLoggerInterface {
    private static final String AQS_LOG_SOURCE = "FIREBASE_APPQUALITY_SESSION";
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "EventGDTLogger";
    private final Provider<f> transportFactoryProvider;

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        private Companion() {
        }
    }

    public EventGDTLogger(Provider<f> transportFactoryProvider) {
        j.checkNotNullParameter(transportFactoryProvider, "transportFactoryProvider");
        this.transportFactoryProvider = transportFactoryProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final byte[] encode(SessionEvent sessionEvent) {
        String encode = SessionEvents.INSTANCE.getSESSION_EVENT_ENCODER$com_google_firebase_firebase_sessions().encode(sessionEvent);
        j.checkNotNullExpressionValue(encode, "SessionEvents.SESSION_EVENT_ENCODER.encode(value)");
        Log.d(TAG, "Session Event: " + encode);
        byte[] bytes = encode.getBytes(c.f2725b);
        j.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    @Override // com.google.firebase.sessions.EventGDTLoggerInterface
    public void log(SessionEvent sessionEvent) {
        j.checkNotNullParameter(sessionEvent, "sessionEvent");
        ((G) ((F) this.transportFactoryProvider.get()).getTransport(AQS_LOG_SOURCE, SessionEvent.class, P2.b.of("json"), new A0.a(this, 29))).send(P2.c.ofData(sessionEvent));
    }
}
