package com.google.android.gms.internal.cast;

import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
final class zztd implements zzwq {
    private final zztc zza;

    private zztd(zztc zztcVar) {
        byte[] bArr = zzty.zzd;
        this.zza = zztcVar;
        zztcVar.zza = this;
    }

    public static zztd zza(zztc zztcVar) {
        zztd zztdVar = zztcVar.zza;
        return zztdVar != null ? zztdVar : new zztd(zztcVar);
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzA(int i2, List list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                zztc zztcVar = this.zza;
                int intValue = ((Integer) list.get(i7)).intValue();
                zztcVar.zzp(i2, (intValue >> 31) ^ (intValue + intValue));
                i7++;
            }
            return;
        }
        this.zza.zzo(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            int intValue2 = ((Integer) list.get(i9)).intValue();
            i8 += zztc.zzx((intValue2 >> 31) ^ (intValue2 + intValue2));
        }
        this.zza.zzq(i8);
        while (i7 < list.size()) {
            zztc zztcVar2 = this.zza;
            int intValue3 = ((Integer) list.get(i7)).intValue();
            zztcVar2.zzq((intValue3 >> 31) ^ (intValue3 + intValue3));
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzB(int i2, long j7) throws IOException {
        this.zza.zzr(i2, (j7 >> 63) ^ (j7 + j7));
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzC(int i2, List list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                zztc zztcVar = this.zza;
                long longValue = ((Long) list.get(i7)).longValue();
                zztcVar.zzr(i2, (longValue >> 63) ^ (longValue + longValue));
                i7++;
            }
            return;
        }
        this.zza.zzo(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            long longValue2 = ((Long) list.get(i9)).longValue();
            i8 += zztc.zzy((longValue2 >> 63) ^ (longValue2 + longValue2));
        }
        this.zza.zzq(i8);
        while (i7 < list.size()) {
            zztc zztcVar2 = this.zza;
            long longValue3 = ((Long) list.get(i7)).longValue();
            zztcVar2.zzs((longValue3 >> 63) ^ (longValue3 + longValue3));
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzD(int i2, String str) throws IOException {
        this.zza.zzm(i2, str);
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzE(int i2, List list) throws IOException {
        int i7 = 0;
        if (!(list instanceof zzuf)) {
            while (i7 < list.size()) {
                this.zza.zzm(i2, (String) list.get(i7));
                i7++;
            }
            return;
        }
        zzuf zzufVar = (zzuf) list;
        while (i7 < list.size()) {
            Object zze = zzufVar.zze(i7);
            if (zze instanceof String) {
                this.zza.zzm(i2, (String) zze);
            } else {
                this.zza.zze(i2, (zzsu) zze);
            }
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzF(int i2, int i7) throws IOException {
        this.zza.zzp(i2, i7);
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzG(int i2, List list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzp(i2, ((Integer) list.get(i7)).intValue());
                i7++;
            }
            return;
        }
        this.zza.zzo(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zztc.zzx(((Integer) list.get(i9)).intValue());
        }
        this.zza.zzq(i8);
        while (i7 < list.size()) {
            this.zza.zzq(((Integer) list.get(i7)).intValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzH(int i2, long j7) throws IOException {
        this.zza.zzr(i2, j7);
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzI(int i2, List list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzr(i2, ((Long) list.get(i7)).longValue());
                i7++;
            }
            return;
        }
        this.zza.zzo(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zztc.zzy(((Long) list.get(i9)).longValue());
        }
        this.zza.zzq(i8);
        while (i7 < list.size()) {
            this.zza.zzs(((Long) list.get(i7)).longValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzb(int i2, boolean z6) throws IOException {
        this.zza.zzd(i2, z6);
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzc(int i2, List list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzd(i2, ((Boolean) list.get(i7)).booleanValue());
                i7++;
            }
            return;
        }
        this.zza.zzo(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            ((Boolean) list.get(i9)).getClass();
            i8++;
        }
        this.zza.zzq(i8);
        while (i7 < list.size()) {
            this.zza.zzb(((Boolean) list.get(i7)).booleanValue() ? (byte) 1 : (byte) 0);
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzd(int i2, zzsu zzsuVar) throws IOException {
        this.zza.zze(i2, zzsuVar);
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zze(int i2, List list) throws IOException {
        for (int i7 = 0; i7 < list.size(); i7++) {
            this.zza.zze(i2, (zzsu) list.get(i7));
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzf(int i2, double d7) throws IOException {
        this.zza.zzh(i2, Double.doubleToRawLongBits(d7));
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzg(int i2, List list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzh(i2, Double.doubleToRawLongBits(((Double) list.get(i7)).doubleValue()));
                i7++;
            }
            return;
        }
        this.zza.zzo(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            ((Double) list.get(i9)).getClass();
            i8 += 8;
        }
        this.zza.zzq(i8);
        while (i7 < list.size()) {
            this.zza.zzi(Double.doubleToRawLongBits(((Double) list.get(i7)).doubleValue()));
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzh(int i2, int i7) throws IOException {
        this.zza.zzj(i2, i7);
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzi(int i2, List list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzj(i2, ((Integer) list.get(i7)).intValue());
                i7++;
            }
            return;
        }
        this.zza.zzo(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zztc.zzu(((Integer) list.get(i9)).intValue());
        }
        this.zza.zzq(i8);
        while (i7 < list.size()) {
            this.zza.zzk(((Integer) list.get(i7)).intValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzj(int i2, int i7) throws IOException {
        this.zza.zzf(i2, i7);
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzk(int i2, List list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzf(i2, ((Integer) list.get(i7)).intValue());
                i7++;
            }
            return;
        }
        this.zza.zzo(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            ((Integer) list.get(i9)).getClass();
            i8 += 4;
        }
        this.zza.zzq(i8);
        while (i7 < list.size()) {
            this.zza.zzg(((Integer) list.get(i7)).intValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzl(int i2, long j7) throws IOException {
        this.zza.zzh(i2, j7);
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzm(int i2, List list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzh(i2, ((Long) list.get(i7)).longValue());
                i7++;
            }
            return;
        }
        this.zza.zzo(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            ((Long) list.get(i9)).getClass();
            i8 += 8;
        }
        this.zza.zzq(i8);
        while (i7 < list.size()) {
            this.zza.zzi(((Long) list.get(i7)).longValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzn(int i2, float f3) throws IOException {
        this.zza.zzf(i2, Float.floatToRawIntBits(f3));
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzo(int i2, List list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzf(i2, Float.floatToRawIntBits(((Float) list.get(i7)).floatValue()));
                i7++;
            }
            return;
        }
        this.zza.zzo(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            ((Float) list.get(i9)).getClass();
            i8 += 4;
        }
        this.zza.zzq(i8);
        while (i7 < list.size()) {
            this.zza.zzg(Float.floatToRawIntBits(((Float) list.get(i7)).floatValue()));
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzp(int i2, Object obj, zzvi zzviVar) throws IOException {
        zztc zztcVar = this.zza;
        zztcVar.zzo(i2, 3);
        zzviVar.zzf((zzux) obj, zztcVar.zza);
        zztcVar.zzo(i2, 4);
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzq(int i2, int i7) throws IOException {
        this.zza.zzj(i2, i7);
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzr(int i2, List list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzj(i2, ((Integer) list.get(i7)).intValue());
                i7++;
            }
            return;
        }
        this.zza.zzo(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zztc.zzu(((Integer) list.get(i9)).intValue());
        }
        this.zza.zzq(i8);
        while (i7 < list.size()) {
            this.zza.zzk(((Integer) list.get(i7)).intValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzs(int i2, long j7) throws IOException {
        this.zza.zzr(i2, j7);
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzt(int i2, List list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzr(i2, ((Long) list.get(i7)).longValue());
                i7++;
            }
            return;
        }
        this.zza.zzo(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zztc.zzy(((Long) list.get(i9)).longValue());
        }
        this.zza.zzq(i8);
        while (i7 < list.size()) {
            this.zza.zzs(((Long) list.get(i7)).longValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzu(int i2, Object obj, zzvi zzviVar) throws IOException {
        zzux zzuxVar = (zzux) obj;
        zzsz zzszVar = (zzsz) this.zza;
        zzszVar.zzq((i2 << 3) | 2);
        zzszVar.zzq(((zzsh) zzuxVar).zzq(zzviVar));
        zzviVar.zzf(zzuxVar, zzszVar.zza);
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzv(int i2, int i7) throws IOException {
        this.zza.zzf(i2, i7);
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzw(int i2, List list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzf(i2, ((Integer) list.get(i7)).intValue());
                i7++;
            }
            return;
        }
        this.zza.zzo(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            ((Integer) list.get(i9)).getClass();
            i8 += 4;
        }
        this.zza.zzq(i8);
        while (i7 < list.size()) {
            this.zza.zzg(((Integer) list.get(i7)).intValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzx(int i2, long j7) throws IOException {
        this.zza.zzh(i2, j7);
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzy(int i2, List list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzh(i2, ((Long) list.get(i7)).longValue());
                i7++;
            }
            return;
        }
        this.zza.zzo(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            ((Long) list.get(i9)).getClass();
            i8 += 8;
        }
        this.zza.zzq(i8);
        while (i7 < list.size()) {
            this.zza.zzi(((Long) list.get(i7)).longValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwq
    public final void zzz(int i2, int i7) throws IOException {
        this.zza.zzp(i2, (i7 >> 31) ^ (i7 + i7));
    }
}
