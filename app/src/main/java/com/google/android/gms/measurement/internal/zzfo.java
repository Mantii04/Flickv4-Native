package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
public final class zzfo<V> {

    /* renamed from: g, reason: collision with root package name */
    public static final Object f11524g = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final String f11525a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfm f11526b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f11527c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f11528d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f11529e = new Object();

    /* renamed from: f, reason: collision with root package name */
    public volatile Object f11530f = null;

    public zzfo(String str, Object obj, Object obj2, zzfm zzfmVar) {
        this.f11525a = str;
        this.f11527c = obj;
        this.f11528d = obj2;
        this.f11526b = zzfmVar;
    }

    public final V zza(V v6) {
        synchronized (this.f11529e) {
        }
        if (v6 != null) {
            return v6;
        }
        if (zzfp.f11531a == null) {
            return (V) this.f11527c;
        }
        synchronized (f11524g) {
            try {
                if (zzad.zza()) {
                    return this.f11530f == null ? (V) this.f11527c : (V) this.f11530f;
                }
                try {
                    for (zzfo zzfoVar : zzbh.f11314a) {
                        if (zzad.zza()) {
                            throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                        }
                        Object obj = null;
                        try {
                            zzfm zzfmVar = zzfoVar.f11526b;
                            if (zzfmVar != null) {
                                obj = zzfmVar.zza();
                            }
                        } catch (IllegalStateException unused) {
                        }
                        synchronized (f11524g) {
                            zzfoVar.f11530f = obj;
                        }
                    }
                } catch (SecurityException unused2) {
                }
                zzfm zzfmVar2 = this.f11526b;
                if (zzfmVar2 == null) {
                    return (V) this.f11527c;
                }
                try {
                    return (V) zzfmVar2.zza();
                } catch (IllegalStateException unused3) {
                    return (V) this.f11527c;
                } catch (SecurityException unused4) {
                    return (V) this.f11527c;
                }
            } finally {
            }
        }
    }

    public final String zza() {
        return this.f11525a;
    }
}
