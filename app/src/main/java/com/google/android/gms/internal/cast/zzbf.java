package com.google.android.gms.internal.cast;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.support.v4.media.session.MediaSessionCompat;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import f1.C0904k0;
import f1.L;
import f1.M;
import f1.U;
import f1.X;
import f1.m0;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbf extends zzal {
    private static final Logger zza = new Logger("MediaRouterProxy");
    private final X zzb;
    private final CastOptions zzc;
    private final Map zzd = new HashMap();
    private zzbn zze;
    private boolean zzf;

    public zzbf(Context context, X x6, final CastOptions castOptions, com.google.android.gms.cast.internal.zzn zznVar) {
        this.zzb = x6;
        this.zzc = castOptions;
        if (Build.VERSION.SDK_INT <= 32) {
            zza.i("Don't need to set MediaRouterParams for Android S v2 or below", new Object[0]);
            return;
        }
        zza.d("Set up MediaRouterParams based on module flag and CastOptions for Android T or above", new Object[0]);
        this.zze = new zzbn(castOptions);
        Intent intent = new Intent(context, (Class<?>) m0.class);
        intent.setPackage(context.getPackageName());
        boolean isEmpty = context.getPackageManager().queryBroadcastReceivers(intent, 0).isEmpty();
        this.zzf = !isEmpty;
        if (!isEmpty) {
            zzo.zzd(zzml.CAST_OUTPUT_SWITCHER_ENABLED);
        }
        zznVar.zza(new String[]{"com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED"}).addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.gms.internal.cast.zzbc
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                zzbf.this.zzp(castOptions, task);
            }
        });
    }

    private final void zzt(L l7, int i2) {
        Set set = (Set) this.zzd.get(l7);
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            this.zzb.addCallback(l7, (M) it.next(), i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzu, reason: merged with bridge method [inline-methods] */
    public final void zzq(L l7) {
        Set set = (Set) this.zzd.get(l7);
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            this.zzb.removeCallback((M) it.next());
        }
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final Bundle zzb(String str) {
        for (U u6 : this.zzb.getRoutes()) {
            if (u6.getId().equals(str)) {
                return u6.getExtras();
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final String zzc() {
        return this.zzb.getSelectedRoute().getId();
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final void zzd(Bundle bundle, final int i2) {
        final L fromBundle = L.fromBundle(bundle);
        if (fromBundle == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            zzt(fromBundle, i2);
        } else {
            new zzed(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzbe
                @Override // java.lang.Runnable
                public final void run() {
                    zzbf.this.zzo(fromBundle, i2);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final void zze(Bundle bundle, zzao zzaoVar) {
        L fromBundle = L.fromBundle(bundle);
        if (fromBundle == null) {
            return;
        }
        if (!this.zzd.containsKey(fromBundle)) {
            this.zzd.put(fromBundle, new HashSet());
        }
        ((Set) this.zzd.get(fromBundle)).add(new zzat(zzaoVar));
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final void zzf() {
        Iterator it = this.zzd.values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((Set) it.next()).iterator();
            while (it2.hasNext()) {
                this.zzb.removeCallback((M) it2.next());
            }
        }
        this.zzd.clear();
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final void zzg(Bundle bundle) {
        final L fromBundle = L.fromBundle(bundle);
        if (fromBundle == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            zzq(fromBundle);
        } else {
            new zzed(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzbd
                @Override // java.lang.Runnable
                public final void run() {
                    zzbf.this.zzq(fromBundle);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final void zzh() {
        X x6 = this.zzb;
        x6.selectRoute(x6.getDefaultRoute());
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final void zzi(String str) {
        zza.d("select route with routeId = %s", str);
        for (U u6 : this.zzb.getRoutes()) {
            if (u6.getId().equals(str)) {
                zza.d("media route is found and selected", new Object[0]);
                this.zzb.selectRoute(u6);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final void zzj(int i2) {
        this.zzb.unselect(i2);
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final boolean zzk() {
        U bluetoothRoute = this.zzb.getBluetoothRoute();
        return bluetoothRoute != null && this.zzb.getSelectedRoute().getId().equals(bluetoothRoute.getId());
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final boolean zzl() {
        U defaultRoute = this.zzb.getDefaultRoute();
        return defaultRoute != null && this.zzb.getSelectedRoute().getId().equals(defaultRoute.getId());
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final boolean zzm(Bundle bundle, int i2) {
        L fromBundle = L.fromBundle(bundle);
        if (fromBundle == null) {
            return false;
        }
        return this.zzb.isRouteAvailable(fromBundle, i2);
    }

    public final zzbn zzn() {
        return this.zze;
    }

    public final /* synthetic */ void zzo(L l7, int i2) {
        synchronized (this.zzd) {
            zzt(l7, i2);
        }
    }

    public final /* synthetic */ void zzp(CastOptions castOptions, Task task) {
        boolean z6;
        X x6;
        CastOptions castOptions2;
        if (task.isSuccessful()) {
            Bundle bundle = (Bundle) task.getResult();
            boolean z7 = bundle != null && bundle.containsKey("com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED");
            zza.d("The module-to-client output switcher flag %s", true != z7 ? "not existed" : "existed");
            if (z7) {
                z6 = bundle.getBoolean("com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED");
                Logger logger = zza;
                logger.i("Set up output switcher flags: %b (from module), %b (from CastOptions)", Boolean.valueOf(z6), Boolean.valueOf(castOptions.zzh()));
                boolean z8 = !z6 && castOptions.zzh();
                x6 = this.zzb;
                if (x6 != null || (castOptions2 = this.zzc) == null) {
                }
                boolean zzf = castOptions2.zzf();
                boolean zze = castOptions2.zze();
                x6.setRouterParams(new C0904k0().setMediaTransferReceiverEnabled(z8).setTransferToLocalEnabled(zzf).setOutputSwitcherEnabled(zze).build());
                logger.i("media transfer = %b, session transfer = %b, transfer to local = %b, in-app output switcher = %b", Boolean.valueOf(this.zzf), Boolean.valueOf(z8), Boolean.valueOf(zzf), Boolean.valueOf(zze));
                if (zzf) {
                    this.zzb.setOnPrepareTransferListener(new zzbb((zzbn) Preconditions.checkNotNull(this.zze)));
                    zzo.zzd(zzml.CAST_TRANSFER_TO_LOCAL_ENABLED);
                    return;
                }
                return;
            }
        }
        z6 = true;
        Logger logger2 = zza;
        logger2.i("Set up output switcher flags: %b (from module), %b (from CastOptions)", Boolean.valueOf(z6), Boolean.valueOf(castOptions.zzh()));
        if (z6) {
        }
        x6 = this.zzb;
        if (x6 != null) {
        }
    }

    public final void zzr(MediaSessionCompat mediaSessionCompat) {
        this.zzb.setMediaSessionCompat(mediaSessionCompat);
    }

    public final boolean zzs() {
        return this.zzf;
    }
}
