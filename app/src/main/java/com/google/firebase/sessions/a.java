package com.google.firebase.sessions;

import com.google.firebase.FirebaseAppLifecycleListener;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.sessions.FirebaseSessions;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements FirebaseAppLifecycleListener {
    @Override // com.google.firebase.FirebaseAppLifecycleListener
    public final void onDeleted(String str, FirebaseOptions firebaseOptions) {
        FirebaseSessions.AnonymousClass1.m69invokeSuspend$lambda1(str, firebaseOptions);
    }
}
