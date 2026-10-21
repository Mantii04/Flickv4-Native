package com.google.android.gms.common;

import com.google.android.gms.internal.common.zzag;

/* loaded from: classes.dex */
final class zzz {

    /* renamed from: a, reason: collision with root package name */
    public String f11095a = null;

    /* renamed from: b, reason: collision with root package name */
    public long f11096b = -1;

    /* renamed from: c, reason: collision with root package name */
    public zzag f11097c = zzag.zzl();

    /* renamed from: d, reason: collision with root package name */
    public zzag f11098d = zzag.zzl();

    public final void a() {
        if (this.f11095a == null) {
            throw new IllegalStateException("packageName must be defined");
        }
        if (this.f11096b < 0) {
            throw new IllegalStateException("minimumStampedVersionNumber must be greater than or equal to 0");
        }
        if (this.f11097c.isEmpty() && this.f11098d.isEmpty()) {
            throw new IllegalStateException("Either orderedTestCerts or orderedProdCerts must have at least one cert");
        }
    }
}
