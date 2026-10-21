package com.google.android.gms.internal.cast;

import A.i;

/* loaded from: classes2.dex */
final class zzfa extends zzev {
    private final Object zza;

    public zzfa(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzfa) {
            return this.zza.equals(((zzfa) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        return i.l("Optional.of(", this.zza.toString(), ")");
    }

    @Override // com.google.android.gms.internal.cast.zzev
    public final Object zza(Object obj) {
        zzez.zzc(obj, "use Optional.orNull() instead of Optional.or(null)");
        return this.zza;
    }
}
