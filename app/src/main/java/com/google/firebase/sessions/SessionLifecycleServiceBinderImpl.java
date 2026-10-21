package com.google.firebase.sessions;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Messenger;
import android.os.Process;
import android.util.Log;
import com.google.firebase.FirebaseApp;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class SessionLifecycleServiceBinderImpl implements SessionLifecycleServiceBinder {
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "LifecycleServiceBinder";
    private final FirebaseApp firebaseApp;

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        private Companion() {
        }
    }

    public SessionLifecycleServiceBinderImpl(FirebaseApp firebaseApp) {
        j.checkNotNullParameter(firebaseApp, "firebaseApp");
        this.firebaseApp = firebaseApp;
    }

    @Override // com.google.firebase.sessions.SessionLifecycleServiceBinder
    public void bindToService(Messenger callback, ServiceConnection serviceConnection) {
        boolean z6;
        j.checkNotNullParameter(callback, "callback");
        j.checkNotNullParameter(serviceConnection, "serviceConnection");
        Context applicationContext = this.firebaseApp.getApplicationContext().getApplicationContext();
        Intent intent = new Intent(applicationContext, (Class<?>) SessionLifecycleService.class);
        Log.d(TAG, "Binding service to application.");
        intent.setAction(String.valueOf(Process.myPid()));
        intent.putExtra(SessionLifecycleService.CLIENT_CALLBACK_MESSENGER, callback);
        try {
            z6 = applicationContext.bindService(intent, serviceConnection, 65);
        } catch (SecurityException e3) {
            Log.w(TAG, "Failed to bind session lifecycle service to application.", e3);
            z6 = false;
        }
        if (z6) {
            return;
        }
        applicationContext.unbindService(serviceConnection);
        Log.i(TAG, "Session lifecycle service binding failed.");
    }
}
