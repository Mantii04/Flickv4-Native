package com.google.android.gms.cast.framework;

import com.google.android.gms.cast.framework.Session;

/* loaded from: classes.dex */
public interface SessionManagerListener<T extends Session> {
    void onSessionEnded(T t6, int i2);

    void onSessionEnding(T t6);

    void onSessionResumeFailed(T t6, int i2);

    void onSessionResumed(T t6, boolean z6);

    void onSessionResuming(T t6, String str);

    void onSessionStartFailed(T t6, int i2);

    void onSessionStarted(T t6, String str);

    void onSessionStarting(T t6);

    void onSessionSuspended(T t6, int i2);
}
