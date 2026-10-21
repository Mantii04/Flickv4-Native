package com.google.android.gms.common.internal;

import android.util.Log;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class zzc {

    /* renamed from: a, reason: collision with root package name */
    public Object f10945a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f10946b = false;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BaseGmsClient f10947c;

    public zzc(BaseGmsClient baseGmsClient, Object obj) {
        this.f10947c = baseGmsClient;
        this.f10945a = obj;
    }

    public abstract void zza(Object obj);

    public abstract void zzc();

    public final void zze() {
        Object obj;
        synchronized (this) {
            try {
                obj = this.f10945a;
                if (this.f10946b) {
                    Log.w("GmsClient", "Callback proxy " + toString() + " being reused. This is not safe.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (obj != null) {
            zza(obj);
        }
        synchronized (this) {
            this.f10946b = true;
        }
        zzg();
    }

    public final void zzf() {
        synchronized (this) {
            this.f10945a = null;
        }
    }

    public final void zzg() {
        ArrayList arrayList;
        ArrayList arrayList2;
        zzf();
        arrayList = this.f10947c.zzt;
        synchronized (arrayList) {
            arrayList2 = this.f10947c.zzt;
            arrayList2.remove(this);
        }
    }
}
