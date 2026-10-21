package com.google.android.gms.cast.framework;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzbj extends zzaz {

    /* renamed from: a, reason: collision with root package name */
    public final SessionManagerListener f10319a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f10320b;

    public zzbj(SessionManagerListener sessionManagerListener, Class cls) {
        this.f10319a = sessionManagerListener;
        this.f10320b = cls;
    }

    @Override // com.google.android.gms.cast.framework.zzba
    public final IObjectWrapper zzb() {
        return ObjectWrapper.wrap(this.f10319a);
    }

    @Override // com.google.android.gms.cast.framework.zzba
    public final void zzc(IObjectWrapper iObjectWrapper, int i2) throws RemoteException {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.f10320b;
        if (!cls.isInstance(session) || (sessionManagerListener = this.f10319a) == null) {
            return;
        }
        sessionManagerListener.onSessionEnded((Session) cls.cast(session), i2);
    }

    @Override // com.google.android.gms.cast.framework.zzba
    public final void zzd(IObjectWrapper iObjectWrapper) throws RemoteException {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.f10320b;
        if (!cls.isInstance(session) || (sessionManagerListener = this.f10319a) == null) {
            return;
        }
        sessionManagerListener.onSessionEnding((Session) cls.cast(session));
    }

    @Override // com.google.android.gms.cast.framework.zzba
    public final void zze(IObjectWrapper iObjectWrapper, int i2) throws RemoteException {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.f10320b;
        if (!cls.isInstance(session) || (sessionManagerListener = this.f10319a) == null) {
            return;
        }
        sessionManagerListener.onSessionResumeFailed((Session) cls.cast(session), i2);
    }

    @Override // com.google.android.gms.cast.framework.zzba
    public final void zzf(IObjectWrapper iObjectWrapper, boolean z6) throws RemoteException {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.f10320b;
        if (!cls.isInstance(session) || (sessionManagerListener = this.f10319a) == null) {
            return;
        }
        sessionManagerListener.onSessionResumed((Session) cls.cast(session), z6);
    }

    @Override // com.google.android.gms.cast.framework.zzba
    public final void zzg(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.f10320b;
        if (!cls.isInstance(session) || (sessionManagerListener = this.f10319a) == null) {
            return;
        }
        sessionManagerListener.onSessionResuming((Session) cls.cast(session), str);
    }

    @Override // com.google.android.gms.cast.framework.zzba
    public final void zzh(IObjectWrapper iObjectWrapper, int i2) throws RemoteException {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.f10320b;
        if (!cls.isInstance(session) || (sessionManagerListener = this.f10319a) == null) {
            return;
        }
        sessionManagerListener.onSessionStartFailed((Session) cls.cast(session), i2);
    }

    @Override // com.google.android.gms.cast.framework.zzba
    public final void zzi(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.f10320b;
        if (!cls.isInstance(session) || (sessionManagerListener = this.f10319a) == null) {
            return;
        }
        sessionManagerListener.onSessionStarted((Session) cls.cast(session), str);
    }

    @Override // com.google.android.gms.cast.framework.zzba
    public final void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.f10320b;
        if (!cls.isInstance(session) || (sessionManagerListener = this.f10319a) == null) {
            return;
        }
        sessionManagerListener.onSessionStarting((Session) cls.cast(session));
    }

    @Override // com.google.android.gms.cast.framework.zzba
    public final void zzk(IObjectWrapper iObjectWrapper, int i2) throws RemoteException {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.f10320b;
        if (!cls.isInstance(session) || (sessionManagerListener = this.f10319a) == null) {
            return;
        }
        sessionManagerListener.onSessionSuspended((Session) cls.cast(session), i2);
    }
}
