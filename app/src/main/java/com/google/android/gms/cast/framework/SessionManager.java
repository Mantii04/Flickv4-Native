package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public class SessionManager {

    /* renamed from: c, reason: collision with root package name */
    public static final Logger f9875c = new Logger("SessionManager");

    /* renamed from: a, reason: collision with root package name */
    public final zzay f9876a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f9877b;

    public SessionManager(zzay zzayVar, Context context) {
        this.f9876a = zzayVar;
        this.f9877b = context;
    }

    public <T extends Session> void addSessionManagerListener(SessionManagerListener<T> sessionManagerListener, Class<T> cls) throws NullPointerException {
        if (sessionManagerListener == null) {
            throw new NullPointerException("SessionManagerListener can't be null");
        }
        Preconditions.checkNotNull(cls);
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            this.f9876a.zzi(new zzbj(sessionManagerListener, cls));
        } catch (RemoteException e3) {
            f9875c.d(e3, "Unable to call %s on %s.", "addSessionManagerListener", "zzay");
        }
    }

    public void endCurrentSession(boolean z6) {
        Logger logger = f9875c;
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            logger.i("End session for %s", this.f9877b.getPackageName());
            this.f9876a.zzj(true, z6);
        } catch (RemoteException e3) {
            logger.d(e3, "Unable to call %s on %s.", "endCurrentSession", "zzay");
        }
    }

    public CastSession getCurrentCastSession() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        Session currentSession = getCurrentSession();
        if (currentSession == null || !(currentSession instanceof CastSession)) {
            return null;
        }
        return (CastSession) currentSession;
    }

    public Session getCurrentSession() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return (Session) ObjectWrapper.unwrap(this.f9876a.zzf());
        } catch (RemoteException e3) {
            f9875c.d(e3, "Unable to call %s on %s.", "getWrappedCurrentSession", "zzay");
            return null;
        }
    }

    public <T extends Session> void removeSessionManagerListener(SessionManagerListener<T> sessionManagerListener, Class<T> cls) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (sessionManagerListener == null) {
            return;
        }
        try {
            this.f9876a.zzl(new zzbj(sessionManagerListener, cls));
        } catch (RemoteException e3) {
            f9875c.d(e3, "Unable to call %s on %s.", "removeSessionManagerListener", "zzay");
        }
    }

    public final IObjectWrapper zzb() {
        try {
            return this.f9876a.zzg();
        } catch (RemoteException e3) {
            f9875c.d(e3, "Unable to call %s on %s.", "getWrappedThis", "zzay");
            return null;
        }
    }
}
