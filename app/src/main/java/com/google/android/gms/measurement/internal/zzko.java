package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.net.URL;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzko implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final URL f11957b;

    /* renamed from: e, reason: collision with root package name */
    public final zzkp f11958e;

    /* renamed from: f, reason: collision with root package name */
    public final String f11959f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ zzkm f11960j;

    public zzko(zzkm zzkmVar, String str, URL url, byte[] bArr, Map<String, String> map, zzkp zzkpVar) {
        this.f11960j = zzkmVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(zzkpVar);
        this.f11957b = url;
        this.f11958e = zzkpVar;
        this.f11959f = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0071  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r8 = this;
            com.google.android.gms.measurement.internal.zzkm r1 = r8.f11960j
            r1.zzr()
            r5 = 0
            r2 = 0
            java.net.URL r0 = r8.f11957b     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L62
            com.google.android.gms.internal.measurement.zzcq r3 = com.google.android.gms.internal.measurement.zzcq.zza()     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L62
            java.lang.String r4 = "client-measurement"
            java.net.URLConnection r0 = r3.zza(r0, r4)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L62
            boolean r3 = r0 instanceof java.net.HttpURLConnection     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L62
            if (r3 == 0) goto L67
            r3 = r0
            java.net.HttpURLConnection r3 = (java.net.HttpURLConnection) r3     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L62
            r3.setDefaultUseCaches(r2)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L62
            r0 = 60000(0xea60, float:8.4078E-41)
            r3.setConnectTimeout(r0)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L62
            r0 = 61000(0xee48, float:8.5479E-41)
            r3.setReadTimeout(r0)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L62
            r3.setInstanceFollowRedirects(r2)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L62
            r0 = 1
            r3.setDoInput(r0)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L62
            int r4 = r3.getResponseCode()     // Catch: java.lang.Throwable -> L57 java.io.IOException -> L5a
            java.util.Map r7 = r3.getHeaderFields()     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L54
            byte[] r6 = com.google.android.gms.measurement.internal.zzkm.a(r3)     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L4f
            r3.disconnect()
            com.google.android.gms.measurement.internal.zzhh r0 = r1.zzl()
            com.google.android.gms.measurement.internal.zzkr r2 = new com.google.android.gms.measurement.internal.zzkr
            r3 = r8
            r2.<init>()
            r0.zzb(r2)
            return
        L4d:
            r0 = move-exception
            goto L6f
        L4f:
            r0 = move-exception
            goto L83
        L51:
            r0 = move-exception
        L52:
            r7 = r5
            goto L6f
        L54:
            r0 = move-exception
        L55:
            r7 = r5
            goto L83
        L57:
            r0 = move-exception
            r4 = r2
            goto L52
        L5a:
            r0 = move-exception
            r4 = r2
            goto L55
        L5d:
            r0 = move-exception
            r4 = r2
            r3 = r5
            r7 = r3
            goto L6f
        L62:
            r0 = move-exception
            r4 = r2
            r3 = r5
            r7 = r3
            goto L83
        L67:
            java.io.IOException r0 = new java.io.IOException     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L62
            java.lang.String r3 = "Failed to obtain HTTP connection"
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L62
            throw r0     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L62
        L6f:
            if (r3 == 0) goto L74
            r3.disconnect()
        L74:
            com.google.android.gms.measurement.internal.zzhh r1 = r1.zzl()
            com.google.android.gms.measurement.internal.zzkr r2 = new com.google.android.gms.measurement.internal.zzkr
            r6 = r5
            r3 = r8
            r2.<init>()
            r1.zzb(r2)
            throw r0
        L83:
            if (r3 == 0) goto L88
            r3.disconnect()
        L88:
            com.google.android.gms.measurement.internal.zzhh r1 = r1.zzl()
            com.google.android.gms.measurement.internal.zzkr r2 = new com.google.android.gms.measurement.internal.zzkr
            r3 = r8
            r6 = r5
            r5 = r0
            r2.<init>()
            r1.zzb(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzko.run():void");
    }
}
