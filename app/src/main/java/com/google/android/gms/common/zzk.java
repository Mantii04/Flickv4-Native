package com.google.android.gms.common;

import java.util.Arrays;

/* loaded from: classes.dex */
final class zzk extends zzj {

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f11065b;

    public zzk(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f11065b = bArr;
    }

    @Override // com.google.android.gms.common.zzj
    public final byte[] a() {
        return this.f11065b;
    }
}
