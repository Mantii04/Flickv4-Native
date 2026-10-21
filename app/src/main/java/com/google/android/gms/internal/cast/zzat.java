package com.google.android.gms.internal.cast;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import f1.M;
import f1.U;
import f1.X;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class zzat extends M {
    private static final Logger zza = new Logger("MediaRouterCallback");
    private final zzao zzb;

    public zzat(zzao zzaoVar) {
        this.zzb = (zzao) Preconditions.checkNotNull(zzaoVar);
    }

    @Override // f1.M
    public final void onRouteAdded(X x6, U u6) {
        try {
            this.zzb.zzf(u6.getId(), u6.getExtras());
        } catch (RemoteException e3) {
            zza.d(e3, "Unable to call %s on %s.", "onRouteAdded", "zzao");
        }
    }

    @Override // f1.M
    public final void onRouteChanged(X x6, U u6) {
        try {
            this.zzb.zzg(u6.getId(), u6.getExtras());
        } catch (RemoteException e3) {
            zza.d(e3, "Unable to call %s on %s.", "onRouteChanged", "zzao");
        }
    }

    @Override // f1.M
    public final void onRouteRemoved(X x6, U u6) {
        try {
            this.zzb.zzh(u6.getId(), u6.getExtras());
        } catch (RemoteException e3) {
            zza.d(e3, "Unable to call %s on %s.", "onRouteRemoved", "zzao");
        }
    }

    @Override // f1.M
    public final void onRouteSelected(X x6, U u6, int i2) {
        CastDevice fromBundle;
        CastDevice fromBundle2;
        zza.i("onRouteSelected with reason = %d, routeId = %s", Integer.valueOf(i2), u6.getId());
        if (u6.getPlaybackType() != 1) {
            return;
        }
        try {
            String id = u6.getId();
            String id2 = u6.getId();
            if (id2 != null && id2.endsWith("-groupRoute") && (fromBundle = CastDevice.getFromBundle(u6.getExtras())) != null) {
                String deviceId = fromBundle.getDeviceId();
                Iterator<U> it = x6.getRoutes().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    U next = it.next();
                    String id3 = next.getId();
                    if (id3 != null && !id3.endsWith("-groupRoute") && (fromBundle2 = CastDevice.getFromBundle(next.getExtras())) != null && TextUtils.equals(fromBundle2.getDeviceId(), deviceId)) {
                        zza.d("routeId is changed from %s to %s", id2, next.getId());
                        id2 = next.getId();
                        break;
                    }
                }
            }
            if (this.zzb.zze() >= 220400000) {
                this.zzb.zzj(id2, id, u6.getExtras());
            } else {
                this.zzb.zzi(id2, u6.getExtras());
            }
        } catch (RemoteException e3) {
            zza.d(e3, "Unable to call %s on %s.", "onRouteSelected", "zzao");
        }
    }

    @Override // f1.M
    public final void onRouteUnselected(X x6, U u6, int i2) {
        Logger logger = zza;
        logger.i("onRouteUnselected with reason = %d, routeId = %s", Integer.valueOf(i2), u6.getId());
        if (u6.getPlaybackType() != 1) {
            logger.d("skip route unselection for non-cast route", new Object[0]);
            return;
        }
        try {
            this.zzb.zzk(u6.getId(), u6.getExtras(), i2);
        } catch (RemoteException e3) {
            zza.d(e3, "Unable to call %s on %s.", "onRouteUnselected", "zzao");
        }
    }
}
