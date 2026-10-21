package com.google.android.gms.common;

import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
abstract class zzl extends zzj {

    /* renamed from: c, reason: collision with root package name */
    public static final WeakReference f11066c = new WeakReference(null);

    /* renamed from: b, reason: collision with root package name */
    public WeakReference f11067b;

    public zzl(byte[] bArr) {
        super(bArr);
        this.f11067b = f11066c;
    }

    @Override // com.google.android.gms.common.zzj
    public final byte[] a() {
        byte[] bArr;
        synchronized (this) {
            try {
                bArr = (byte[]) this.f11067b.get();
                if (bArr == null) {
                    bArr = zzb();
                    this.f11067b = new WeakReference(bArr);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArr;
    }

    public abstract byte[] zzb();
}
