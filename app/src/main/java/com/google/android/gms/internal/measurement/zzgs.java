package com.google.android.gms.internal.measurement;

import P3.C;
import android.content.Context;
import b.c;

/* loaded from: classes2.dex */
final class zzgs extends zzhr {
    private final Context zza;
    private final C zzb;

    public zzgs(Context context, C c7) {
        if (context == null) {
            throw new NullPointerException("Null context");
        }
        this.zza = context;
        this.zzb = c7;
    }

    public final boolean equals(Object obj) {
        C c7;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzhr) {
            zzhr zzhrVar = (zzhr) obj;
            if (this.zza.equals(zzhrVar.zza()) && ((c7 = this.zzb) != null ? c7.equals(zzhrVar.zzb()) : zzhrVar.zzb() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.zza.hashCode() ^ 1000003) * 1000003;
        C c7 = this.zzb;
        return hashCode ^ (c7 == null ? 0 : c7.hashCode());
    }

    public final String toString() {
        return c.m("FlagsContext{context=", String.valueOf(this.zza), ", hermeticFileOverrides=", String.valueOf(this.zzb), "}");
    }

    @Override // com.google.android.gms.internal.measurement.zzhr
    public final Context zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzhr
    public final C zzb() {
        return this.zzb;
    }
}
