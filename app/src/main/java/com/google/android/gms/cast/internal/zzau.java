package com.google.android.gms.cast.internal;

import android.os.Looper;
import androidx.media3.common.PlaybackException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.cast.zzed;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zzau {

    /* renamed from: j, reason: collision with root package name */
    public static final Object f10376j = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Logger f10377a;

    /* renamed from: b, reason: collision with root package name */
    public final long f10378b;

    /* renamed from: c, reason: collision with root package name */
    public final String f10379c;

    /* renamed from: h, reason: collision with root package name */
    public zzas f10384h;

    /* renamed from: i, reason: collision with root package name */
    public zzat f10385i;

    /* renamed from: e, reason: collision with root package name */
    public final Clock f10381e = DefaultClock.getInstance();

    /* renamed from: f, reason: collision with root package name */
    public long f10382f = -1;

    /* renamed from: g, reason: collision with root package name */
    public long f10383g = 0;

    /* renamed from: d, reason: collision with root package name */
    public final zzed f10380d = new zzed(Looper.getMainLooper());

    public zzau(long j7, String str) {
        this.f10378b = j7;
        this.f10379c = str;
        this.f10377a = new Logger("RequestTracker", str);
    }

    public static /* synthetic */ void zza(zzau zzauVar) {
        synchronized (f10376j) {
            try {
                if (zzauVar.zzf()) {
                    zzauVar.b(15);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(String str, int i2, Object obj) {
        this.f10377a.d(str, new Object[0]);
        Object obj2 = f10376j;
        synchronized (obj2) {
            try {
                if (this.f10384h != null) {
                    ((zzas) Preconditions.checkNotNull(this.f10384h)).zza(this.f10379c, this.f10382f, i2, obj, this.f10383g, this.f10381e.currentTimeMillis());
                }
                this.f10382f = -1L;
                this.f10384h = null;
                synchronized (obj2) {
                    zzat zzatVar = this.f10385i;
                    if (zzatVar != null) {
                        this.f10380d.removeCallbacks(zzatVar);
                        this.f10385i = null;
                    }
                }
            } catch (Throwable th) {
                throw th;
            } finally {
            }
        }
    }

    public final boolean b(int i2) {
        synchronized (f10376j) {
            try {
                if (!zzf()) {
                    return false;
                }
                Locale locale = Locale.ROOT;
                a("clearing request " + this.f10382f, i2, null);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v4, types: [com.google.android.gms.cast.internal.zzat, java.lang.Runnable] */
    public final void zzb(long j7, zzas zzasVar) {
        zzas zzasVar2;
        long j8;
        long j9;
        long currentTimeMillis = this.f10381e.currentTimeMillis();
        Object obj = f10376j;
        synchronized (obj) {
            zzasVar2 = this.f10384h;
            j8 = this.f10382f;
            j9 = this.f10383g;
            this.f10382f = j7;
            this.f10384h = zzasVar;
            this.f10383g = currentTimeMillis;
        }
        if (zzasVar2 != null) {
            zzasVar2.zzb(this.f10379c, j8, j9, currentTimeMillis);
        }
        synchronized (obj) {
            try {
                zzat zzatVar = this.f10385i;
                if (zzatVar != null) {
                    this.f10380d.removeCallbacks(zzatVar);
                }
                ?? r11 = new Runnable() { // from class: com.google.android.gms.cast.internal.zzat
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzau.zza(zzau.this);
                    }
                };
                this.f10385i = r11;
                this.f10380d.postDelayed(r11, this.f10378b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzc(int i2) {
        return b(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT);
    }

    public final boolean zzd(long j7, int i2, Object obj) {
        synchronized (f10376j) {
            try {
                if (!zze(j7)) {
                    return false;
                }
                Locale locale = Locale.ROOT;
                a("request " + j7 + " completed", i2, obj);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zze(long j7) {
        boolean z6;
        synchronized (f10376j) {
            long j8 = this.f10382f;
            z6 = false;
            if (j8 != -1 && j8 == j7) {
                z6 = true;
            }
        }
        return z6;
    }

    public final boolean zzf() {
        boolean z6;
        synchronized (f10376j) {
            z6 = this.f10382f != -1;
        }
        return z6;
    }
}
