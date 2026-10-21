package com.google.firebase.sessions;

import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import com.google.firebase.sessions.SessionGenerator;
import com.google.firebase.sessions.settings.SessionsSettings;
import java.util.ArrayList;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import org.apache.commons.lang3.ClassUtils;

/* loaded from: classes2.dex */
public final class SessionLifecycleService extends Service {
    public static final int BACKGROUNDED = 2;
    private static final int CLIENT_BOUND = 4;
    public static final String CLIENT_CALLBACK_MESSENGER = "ClientCallbackMessenger";
    public static final Companion Companion = new Companion(null);
    public static final int FOREGROUNDED = 1;
    public static final int SESSION_UPDATED = 3;
    public static final String SESSION_UPDATE_EXTRA = "SessionUpdateExtra";
    public static final String TAG = "SessionLifecycleService";
    private final HandlerThread handlerThread = new HandlerThread("FirebaseSessions_HandlerThread");
    private MessageHandler messageHandler;
    private Messenger messenger;

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        private Companion() {
        }
    }

    public static final class MessageHandler extends Handler {
        private final ArrayList<Messenger> boundClients;
        private boolean hasForegrounded;
        private long lastMsgTimeMs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MessageHandler(Looper looper) {
            super(looper);
            j.checkNotNullParameter(looper, "looper");
            this.boundClients = new ArrayList<>();
        }

        private final void broadcastSession() {
            StringBuilder sb = new StringBuilder("Broadcasting new session: ");
            SessionGenerator.Companion companion = SessionGenerator.Companion;
            sb.append(companion.getInstance().getCurrentSession());
            Log.d(SessionLifecycleService.TAG, sb.toString());
            SessionFirelogPublisher.Companion.getInstance().logSession(companion.getInstance().getCurrentSession());
            for (Messenger it : new ArrayList(this.boundClients)) {
                j.checkNotNullExpressionValue(it, "it");
                maybeSendSessionToClient(it);
            }
        }

        private final void handleBackgrounding(Message message) {
            Log.d(SessionLifecycleService.TAG, "Activity backgrounding at " + message.getWhen());
            this.lastMsgTimeMs = message.getWhen();
        }

        private final void handleClientBound(Message message) {
            this.boundClients.add(message.replyTo);
            Messenger messenger = message.replyTo;
            j.checkNotNullExpressionValue(messenger, "msg.replyTo");
            maybeSendSessionToClient(messenger);
            Log.d(SessionLifecycleService.TAG, "Client " + message.replyTo + " bound at " + message.getWhen() + ". Clients: " + this.boundClients.size());
        }

        private final void handleForegrounding(Message message) {
            Log.d(SessionLifecycleService.TAG, "Activity foregrounding at " + message.getWhen() + ClassUtils.PACKAGE_SEPARATOR_CHAR);
            if (!this.hasForegrounded) {
                Log.d(SessionLifecycleService.TAG, "Cold start detected.");
                this.hasForegrounded = true;
                newSession();
            } else if (isSessionRestart(message.getWhen())) {
                Log.d(SessionLifecycleService.TAG, "Session too long in background. Creating new session.");
                newSession();
            }
            this.lastMsgTimeMs = message.getWhen();
        }

        private final boolean isSessionRestart(long j7) {
            return j7 - this.lastMsgTimeMs > Q5.b.m11getInWholeMillisecondsimpl(SessionsSettings.Companion.getInstance().m79getSessionRestartTimeoutUwyO8pc());
        }

        private final void maybeSendSessionToClient(Messenger messenger) {
            if (this.hasForegrounded) {
                sendSessionToClient(messenger, SessionGenerator.Companion.getInstance().getCurrentSession().getSessionId());
                return;
            }
            String currentSessionId = SessionDatastore.Companion.getInstance().getCurrentSessionId();
            Log.d(SessionLifecycleService.TAG, "App has not yet foregrounded. Using previously stored session: " + currentSessionId);
            if (currentSessionId != null) {
                sendSessionToClient(messenger, currentSessionId);
            }
        }

        private final void newSession() {
            SessionGenerator.Companion companion = SessionGenerator.Companion;
            companion.getInstance().generateNewSession();
            Log.d(SessionLifecycleService.TAG, "Generated new session " + companion.getInstance().getCurrentSession().getSessionId());
            broadcastSession();
            SessionDatastore.Companion.getInstance().updateSessionId(companion.getInstance().getCurrentSession().getSessionId());
        }

        private final void sendSessionToClient(Messenger messenger, String str) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString(SessionLifecycleService.SESSION_UPDATE_EXTRA, str);
                Message obtain = Message.obtain(null, 3, 0, 0);
                obtain.setData(bundle);
                messenger.send(obtain);
            } catch (DeadObjectException unused) {
                Log.d(SessionLifecycleService.TAG, "Removing dead client from list: " + messenger);
                this.boundClients.remove(messenger);
            } catch (Exception e3) {
                Log.w(SessionLifecycleService.TAG, "Unable to push new session to " + messenger + ClassUtils.PACKAGE_SEPARATOR_CHAR, e3);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            j.checkNotNullParameter(msg, "msg");
            if (this.lastMsgTimeMs > msg.getWhen()) {
                Log.d(SessionLifecycleService.TAG, "Ignoring old message from " + msg.getWhen() + " which is older than " + this.lastMsgTimeMs + ClassUtils.PACKAGE_SEPARATOR_CHAR);
                return;
            }
            int i2 = msg.what;
            if (i2 == 1) {
                handleForegrounding(msg);
                return;
            }
            if (i2 == 2) {
                handleBackgrounding(msg);
                return;
            }
            if (i2 == 4) {
                handleClientBound(msg);
                return;
            }
            Log.w(SessionLifecycleService.TAG, "Received unexpected event from the SessionLifecycleClient: " + msg);
            super.handleMessage(msg);
        }
    }

    private final Messenger getClientCallback(Intent intent) {
        Object parcelableExtra;
        if (Build.VERSION.SDK_INT < 33) {
            return (Messenger) intent.getParcelableExtra(CLIENT_CALLBACK_MESSENGER);
        }
        parcelableExtra = intent.getParcelableExtra(CLIENT_CALLBACK_MESSENGER, Messenger.class);
        return (Messenger) parcelableExtra;
    }

    public final HandlerThread getHandlerThread$com_google_firebase_firebase_sessions() {
        return this.handlerThread;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (intent == null) {
            Log.d(TAG, "Service bound with null intent. Ignoring.");
            return null;
        }
        Log.d(TAG, "Service bound to new client on process " + intent.getAction());
        Messenger clientCallback = getClientCallback(intent);
        if (clientCallback != null) {
            Message obtain = Message.obtain(null, 4, 0, 0);
            obtain.replyTo = clientCallback;
            MessageHandler messageHandler = this.messageHandler;
            if (messageHandler != null) {
                messageHandler.sendMessage(obtain);
            }
        }
        Messenger messenger = this.messenger;
        if (messenger != null) {
            return messenger.getBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.handlerThread.start();
        Looper looper = this.handlerThread.getLooper();
        j.checkNotNullExpressionValue(looper, "handlerThread.looper");
        this.messageHandler = new MessageHandler(looper);
        this.messenger = new Messenger(this.messageHandler);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.handlerThread.quit();
    }
}
