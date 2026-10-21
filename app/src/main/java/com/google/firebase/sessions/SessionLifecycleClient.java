package com.google.firebase.sessions;

import R5.AbstractC0277i;
import R5.InterfaceC0294q0;
import R5.J;
import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class SessionLifecycleClient {
    public static final Companion Companion = new Companion(null);
    private static final int MAX_QUEUED_MESSAGES = 20;
    public static final String TAG = "SessionLifecycleClient";
    private final InterfaceC1952k backgroundDispatcher;
    private final LinkedBlockingDeque<Message> queuedMessages;
    private Messenger service;
    private boolean serviceBound;
    private final SessionLifecycleClient$serviceConnection$1 serviceConnection;

    public static final class ClientUpdateHandler extends Handler {
        private final InterfaceC1952k backgroundDispatcher;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ClientUpdateHandler(InterfaceC1952k backgroundDispatcher) {
            super(Looper.getMainLooper());
            j.checkNotNullParameter(backgroundDispatcher, "backgroundDispatcher");
            this.backgroundDispatcher = backgroundDispatcher;
        }

        private final void handleSessionUpdate(String str) {
            Log.d(SessionLifecycleClient.TAG, "Session update received: " + str);
            AbstractC0277i.launch$default(J.CoroutineScope(this.backgroundDispatcher), null, null, new SessionLifecycleClient$ClientUpdateHandler$handleSessionUpdate$1(str, null), 3, null);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            String str;
            j.checkNotNullParameter(msg, "msg");
            if (msg.what != 3) {
                Log.w(SessionLifecycleClient.TAG, "Received unexpected event from the SessionLifecycleService: " + msg);
                super.handleMessage(msg);
                return;
            }
            Bundle data = msg.getData();
            if (data == null || (str = data.getString(SessionLifecycleService.SESSION_UPDATE_EXTRA)) == null) {
                str = "";
            }
            handleSessionUpdate(str);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [com.google.firebase.sessions.SessionLifecycleClient$serviceConnection$1] */
    public SessionLifecycleClient(InterfaceC1952k backgroundDispatcher) {
        j.checkNotNullParameter(backgroundDispatcher, "backgroundDispatcher");
        this.backgroundDispatcher = backgroundDispatcher;
        this.queuedMessages = new LinkedBlockingDeque<>(20);
        this.serviceConnection = new ServiceConnection() { // from class: com.google.firebase.sessions.SessionLifecycleClient$serviceConnection$1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                LinkedBlockingDeque linkedBlockingDeque;
                List drainQueue;
                StringBuilder sb = new StringBuilder("Connected to SessionLifecycleService. Queue size ");
                linkedBlockingDeque = SessionLifecycleClient.this.queuedMessages;
                sb.append(linkedBlockingDeque.size());
                Log.d(SessionLifecycleClient.TAG, sb.toString());
                SessionLifecycleClient.this.service = new Messenger(iBinder);
                SessionLifecycleClient.this.serviceBound = true;
                SessionLifecycleClient sessionLifecycleClient = SessionLifecycleClient.this;
                drainQueue = sessionLifecycleClient.drainQueue();
                sessionLifecycleClient.sendLifecycleEvents(drainQueue);
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.d(SessionLifecycleClient.TAG, "Disconnected from SessionLifecycleService");
                SessionLifecycleClient.this.service = null;
                SessionLifecycleClient.this.serviceBound = false;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Message> drainQueue() {
        ArrayList arrayList = new ArrayList();
        this.queuedMessages.drainTo(arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Message getLatestByCode(List<Message> list, int i2) {
        Object obj;
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (((Message) obj2).what == i2) {
                arrayList.add(obj2);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                long when = ((Message) next).getWhen();
                do {
                    Object next2 = it.next();
                    long when2 = ((Message) next2).getWhen();
                    if (when < when2) {
                        next = next2;
                        when = when2;
                    }
                } while (it.hasNext());
            }
            obj = next;
        } else {
            obj = null;
        }
        return (Message) obj;
    }

    private final void queueMessage(Message message) {
        if (!this.queuedMessages.offer(message)) {
            Log.d(TAG, "Failed to enqueue message " + message.what + ". Dropping.");
            return;
        }
        Log.d(TAG, "Queued message " + message.what + ". Queue size " + this.queuedMessages.size());
    }

    private final void sendLifecycleEvent(int i2) {
        List<Message> drainQueue = drainQueue();
        Message obtain = Message.obtain(null, i2, 0, 0);
        j.checkNotNullExpressionValue(obtain, "obtain(null, messageCode, 0, 0)");
        drainQueue.add(obtain);
        sendLifecycleEvents(drainQueue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InterfaceC0294q0 sendLifecycleEvents(List<Message> list) {
        InterfaceC0294q0 launch$default;
        launch$default = AbstractC0277i.launch$default(J.CoroutineScope(this.backgroundDispatcher), null, null, new SessionLifecycleClient$sendLifecycleEvents$1(this, list, null), 3, null);
        return launch$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendMessageToServer(Message message) {
        if (this.service == null) {
            queueMessage(message);
            return;
        }
        try {
            Log.d(TAG, "Sending lifecycle " + message.what + " to service");
            Messenger messenger = this.service;
            if (messenger != null) {
                messenger.send(message);
            }
        } catch (RemoteException e3) {
            Log.w(TAG, "Unable to deliver message: " + message.what, e3);
            queueMessage(message);
        }
    }

    public final void backgrounded() {
        sendLifecycleEvent(2);
    }

    public final void bindToService() {
        SessionLifecycleServiceBinder.Companion.getInstance().bindToService(new Messenger(new ClientUpdateHandler(this.backgroundDispatcher)), this.serviceConnection);
    }

    public final void foregrounded() {
        sendLifecycleEvent(1);
    }
}
