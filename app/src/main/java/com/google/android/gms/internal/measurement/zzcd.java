package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
final class zzcd extends zzcj {
    private final String zzb;
    private final boolean zzc;
    private final boolean zzd;
    private final zzcc zze;
    private final zzce zzf;
    private final zzcl zzg;

    public final boolean equals(Object obj) {
        zzcc zzccVar;
        zzce zzceVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzcj) {
            zzcj zzcjVar = (zzcj) obj;
            if (this.zzb.equals(zzcjVar.zzd()) && this.zzc == zzcjVar.zze() && this.zzd == zzcjVar.zzf() && ((zzccVar = this.zze) != null ? zzccVar.equals(zzcjVar.zza()) : zzcjVar.zza() == null) && ((zzceVar = this.zzf) != null ? zzceVar.equals(zzcjVar.zzb()) : zzcjVar.zzb() == null) && this.zzg.equals(zzcjVar.zzc())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (((((this.zzb.hashCode() ^ 1000003) * 1000003) ^ (this.zzc ? 1231 : 1237)) * 1000003) ^ (this.zzd ? 1231 : 1237)) * 1000003;
        zzcc zzccVar = this.zze;
        int hashCode2 = (hashCode ^ (zzccVar == null ? 0 : zzccVar.hashCode())) * 1000003;
        zzce zzceVar = this.zzf;
        return ((hashCode2 ^ (zzceVar != null ? zzceVar.hashCode() : 0)) * 1000003) ^ this.zzg.hashCode();
    }

    public final String toString() {
        return "FileComplianceOptions{fileOwner=" + this.zzb + ", hasDifferentDmaOwner=" + this.zzc + ", skipChecks=" + this.zzd + ", dataForwardingNotAllowedResolver=" + String.valueOf(this.zze) + ", multipleProductIdGroupsResolver=" + String.valueOf(this.zzf) + ", filePurpose=" + String.valueOf(this.zzg) + "}";
    }

    @Override // com.google.android.gms.internal.measurement.zzcj
    public final zzcc zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.measurement.zzcj
    public final zzce zzb() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzcj
    public final zzcl zzc() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.measurement.zzcj
    public final String zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzcj
    public final boolean zze() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzcj
    public final boolean zzf() {
        return this.zzd;
    }

    private zzcd(String str, boolean z6, boolean z7, zzcc zzccVar, zzce zzceVar, zzcl zzclVar) {
        this.zzb = str;
        this.zzc = z6;
        this.zzd = z7;
        this.zze = null;
        this.zzf = null;
        this.zzg = zzclVar;
    }
}
