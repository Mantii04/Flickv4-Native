package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.net.URL;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzgi implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final URL f11587b;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f11588e;

    /* renamed from: f, reason: collision with root package name */
    public final zzgh f11589f;

    /* renamed from: j, reason: collision with root package name */
    public final String f11590j;

    /* renamed from: m, reason: collision with root package name */
    public final Map f11591m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ zzge f11592n;

    public zzgi(zzge zzgeVar, String str, URL url, byte[] bArr, Map<String, String> map, zzgh zzghVar) {
        this.f11592n = zzgeVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(zzghVar);
        this.f11587b = url;
        this.f11588e = bArr;
        this.f11589f = zzghVar;
        this.f11590j = str;
        this.f11591m = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x012a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r16v1, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v6 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgi.run():void");
    }
}
