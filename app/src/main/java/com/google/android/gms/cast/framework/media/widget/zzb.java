package com.google.android.gms.cast.framework.media.widget;

/* loaded from: classes.dex */
public final class zzb {

    /* renamed from: a, reason: collision with root package name */
    public final int f10228a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10229b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f10230c;

    public zzb(int i2, int i7, boolean z6) {
        this.f10228a = i2;
        this.f10229b = i7;
        this.f10230c = z6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzb) && this.f10228a == ((zzb) obj).f10228a;
    }

    public final int hashCode() {
        return Integer.valueOf(this.f10228a).hashCode();
    }
}
