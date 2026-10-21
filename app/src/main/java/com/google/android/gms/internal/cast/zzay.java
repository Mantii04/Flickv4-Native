package com.google.android.gms.internal.cast;

import A.i;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.cast.CastMediaControlIntent;
import com.google.android.gms.cast.internal.Logger;
import f1.K;
import f1.L;
import f1.M;
import f1.U;
import f1.X;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzay extends M {
    private static final Logger zzb = new Logger("MRDiscoveryCallback");
    private final zzbg zzf;
    private final Map zzd = Collections.synchronizedMap(new HashMap());
    private final LinkedHashSet zze = new LinkedHashSet();
    private final Set zzc = Collections.synchronizedSet(new LinkedHashSet());
    public final zzax zza = new zzax(this);

    public zzay(Context context) {
        this.zzf = new zzbg(context);
    }

    @Override // f1.M
    public final void onRouteAdded(X x6, U u6) {
        zzb.d("MediaRouterDiscoveryCallback.onRouteAdded.", new Object[0]);
        zzf(u6, true);
    }

    @Override // f1.M
    public final void onRouteChanged(X x6, U u6) {
        zzb.d("MediaRouterDiscoveryCallback.onRouteChanged.", new Object[0]);
        zzf(u6, true);
    }

    @Override // f1.M
    public final void onRouteRemoved(X x6, U u6) {
        zzb.d("MediaRouterDiscoveryCallback.onRouteRemoved.", new Object[0]);
        zzf(u6, false);
    }

    public final void zza(List list) {
        zzb.d(i.g(list.size(), "SetRouteDiscovery for ", " IDs"), new Object[0]);
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(zzes.zza((String) it.next()));
        }
        Map map = this.zzd;
        zzb.d("resetting routes. appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(map.keySet())), new Object[0]);
        HashMap hashMap = new HashMap();
        synchronized (this.zzd) {
            try {
                for (String str : linkedHashSet) {
                    zzaw zzawVar = (zzaw) this.zzd.get(zzes.zza(str));
                    if (zzawVar != null) {
                        hashMap.put(str, zzawVar);
                    }
                }
                this.zzd.clear();
                this.zzd.putAll(hashMap);
            } catch (Throwable th) {
                throw th;
            }
        }
        Map map2 = this.zzd;
        zzb.d("Routes reset. appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(map2.keySet())), new Object[0]);
        synchronized (this.zze) {
            this.zze.clear();
            this.zze.addAll(linkedHashSet);
        }
        zzb();
    }

    public final void zzb() {
        LinkedHashSet linkedHashSet = this.zze;
        Logger logger = zzb;
        logger.d(i.g(linkedHashSet.size(), "Starting RouteDiscovery with ", " IDs"), new Object[0]);
        logger.d("appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(this.zzd.keySet())), new Object[0]);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            zzc();
        } else {
            new zzed(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzav
                @Override // java.lang.Runnable
                public final void run() {
                    zzay.this.zzc();
                }
            });
        }
    }

    public final void zzc() {
        this.zzf.zzb(this);
        synchronized (this.zze) {
            try {
                Iterator it = this.zze.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    L build = new K().addControlCategory(CastMediaControlIntent.categoryForCast(str)).build();
                    if (((zzaw) this.zzd.get(str)) == null) {
                        this.zzd.put(str, new zzaw(build));
                    }
                    zzb.d("Adding mediaRouter callback for control category " + CastMediaControlIntent.categoryForCast(str), new Object[0]);
                    this.zzf.zza().addCallback(build, this, 4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzb.d("appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(this.zzd.keySet())), new Object[0]);
    }

    public final void zzd() {
        zzb.d("Stopping RouteDiscovery.", new Object[0]);
        this.zzd.clear();
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.zzf.zzb(this);
        } else {
            new zzed(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzau
                @Override // java.lang.Runnable
                public final void run() {
                    zzay.this.zze();
                }
            });
        }
    }

    public final void zze() {
        this.zzf.zzb(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0154, code lost:
    
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x015b, code lost:
    
        throw r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzf(f1.U r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzay.zzf(f1.U, boolean):void");
    }
}
