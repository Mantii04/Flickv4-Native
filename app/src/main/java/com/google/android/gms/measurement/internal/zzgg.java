package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzgg implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final zzgh f11581b;

    /* renamed from: e, reason: collision with root package name */
    public final int f11582e;

    /* renamed from: f, reason: collision with root package name */
    public final IOException f11583f;

    /* renamed from: j, reason: collision with root package name */
    public final byte[] f11584j;

    /* renamed from: m, reason: collision with root package name */
    public final String f11585m;

    /* renamed from: n, reason: collision with root package name */
    public final Map f11586n;

    public zzgg(String str, zzgh zzghVar, int i2, IOException iOException, byte[] bArr, Map map) {
        Preconditions.checkNotNull(zzghVar);
        this.f11581b = zzghVar;
        this.f11582e = i2;
        this.f11583f = iOException;
        this.f11584j = bArr;
        this.f11585m = str;
        this.f11586n = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11581b.zza(this.f11585m, this.f11582e, this.f11583f, this.f11584j, this.f11586n);
    }
}
