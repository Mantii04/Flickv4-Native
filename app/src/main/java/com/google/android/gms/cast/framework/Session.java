package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class Session {

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f9873b = new Logger("Session");

    /* renamed from: a, reason: collision with root package name */
    public final zzaw f9874a;

    public Session(Context context, String str, String str2) {
        this.f9874a = com.google.android.gms.internal.cast.zzag.zzd(context, str, str2, new zzbi(this));
    }

    public abstract void end(boolean z6);

    public long getSessionRemainingTimeMs() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return 0L;
    }

    public boolean isConnected() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzaw zzawVar = this.f9874a;
        if (zzawVar != null) {
            try {
                return zzawVar.zzp();
            } catch (RemoteException e3) {
                f9873b.d(e3, "Unable to call %s on %s.", "isConnected", "zzaw");
            }
        }
        return false;
    }

    public boolean isConnecting() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzaw zzawVar = this.f9874a;
        if (zzawVar != null) {
            try {
                return zzawVar.zzq();
            } catch (RemoteException e3) {
                f9873b.d(e3, "Unable to call %s on %s.", "isConnecting", "zzaw");
            }
        }
        return false;
    }

    public boolean isResuming() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzaw zzawVar = this.f9874a;
        if (zzawVar != null) {
            try {
                return zzawVar.zzt();
            } catch (RemoteException e3) {
                f9873b.d(e3, "Unable to call %s on %s.", "isResuming", "zzaw");
            }
        }
        return false;
    }

    public final void notifyFailedToResumeSession(int i2) {
        zzaw zzawVar = this.f9874a;
        if (zzawVar == null) {
            return;
        }
        try {
            zzawVar.zzj(i2);
        } catch (RemoteException e3) {
            f9873b.d(e3, "Unable to call %s on %s.", "notifyFailedToResumeSession", "zzaw");
        }
    }

    public final void notifyFailedToStartSession(int i2) {
        zzaw zzawVar = this.f9874a;
        if (zzawVar == null) {
            return;
        }
        try {
            zzawVar.zzk(i2);
        } catch (RemoteException e3) {
            f9873b.d(e3, "Unable to call %s on %s.", "notifyFailedToStartSession", "zzaw");
        }
    }

    public final void notifySessionEnded(int i2) {
        zzaw zzawVar = this.f9874a;
        if (zzawVar == null) {
            return;
        }
        try {
            zzawVar.zzl(i2);
        } catch (RemoteException e3) {
            f9873b.d(e3, "Unable to call %s on %s.", "notifySessionEnded", "zzaw");
        }
    }

    public void onResuming(Bundle bundle) {
    }

    public void onStarting(Bundle bundle) {
    }

    public abstract void resume(Bundle bundle);

    public abstract void start(Bundle bundle);

    public void zzk(Bundle bundle) {
    }

    public final int zzm() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzaw zzawVar = this.f9874a;
        if (zzawVar != null) {
            try {
                if (zzawVar.zze() >= 211100000) {
                    return zzawVar.zzf();
                }
            } catch (RemoteException e3) {
                f9873b.d(e3, "Unable to call %s on %s.", "getSessionStartType", "zzaw");
            }
        }
        return 0;
    }

    public final IObjectWrapper zzn() {
        zzaw zzawVar = this.f9874a;
        if (zzawVar != null) {
            try {
                return zzawVar.zzg();
            } catch (RemoteException e3) {
                f9873b.d(e3, "Unable to call %s on %s.", "getWrappedObject", "zzaw");
            }
        }
        return null;
    }
}
