package com.google.android.gms.internal.measurement;

import androidx.media3.common.util.Log;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
final class zzix extends zziu {
    private final byte[] zzd;
    private final boolean zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;

    private final void zzaa() {
        int i2 = this.zzf + this.zzg;
        this.zzf = i2;
        int i7 = i2 - this.zzi;
        int i8 = this.zzk;
        if (i7 <= i8) {
            this.zzg = 0;
            return;
        }
        int i9 = i7 - i8;
        this.zzg = i9;
        this.zzf = i2 - i9;
    }

    private final byte zzv() throws IOException {
        int i2 = this.zzh;
        if (i2 == this.zzf) {
            throw zzkb.zzh();
        }
        byte[] bArr = this.zzd;
        this.zzh = i2 + 1;
        return bArr[i2];
    }

    private final int zzw() throws IOException {
        int i2 = this.zzh;
        if (this.zzf - i2 < 4) {
            throw zzkb.zzh();
        }
        byte[] bArr = this.zzd;
        this.zzh = i2 + 4;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    private final int zzx() throws IOException {
        int i2;
        int i7 = this.zzh;
        int i8 = this.zzf;
        if (i8 != i7) {
            byte[] bArr = this.zzd;
            int i9 = i7 + 1;
            byte b7 = bArr[i7];
            if (b7 >= 0) {
                this.zzh = i9;
                return b7;
            }
            if (i8 - i9 >= 9) {
                int i10 = i7 + 2;
                int i11 = (bArr[i9] << 7) ^ b7;
                if (i11 < 0) {
                    i2 = i11 ^ (-128);
                } else {
                    int i12 = i7 + 3;
                    int i13 = (bArr[i10] << 14) ^ i11;
                    if (i13 >= 0) {
                        i2 = i13 ^ 16256;
                    } else {
                        int i14 = i7 + 4;
                        int i15 = i13 ^ (bArr[i12] << 21);
                        if (i15 < 0) {
                            i2 = (-2080896) ^ i15;
                        } else {
                            i12 = i7 + 5;
                            byte b8 = bArr[i14];
                            int i16 = (i15 ^ (b8 << 28)) ^ 266354560;
                            if (b8 < 0) {
                                i14 = i7 + 6;
                                if (bArr[i12] < 0) {
                                    i12 = i7 + 7;
                                    if (bArr[i14] < 0) {
                                        i14 = i7 + 8;
                                        if (bArr[i12] < 0) {
                                            i12 = i7 + 9;
                                            if (bArr[i14] < 0) {
                                                int i17 = i7 + 10;
                                                if (bArr[i12] >= 0) {
                                                    i10 = i17;
                                                    i2 = i16;
                                                }
                                            }
                                        }
                                    }
                                }
                                i2 = i16;
                            }
                            i2 = i16;
                        }
                        i10 = i14;
                    }
                    i10 = i12;
                }
                this.zzh = i10;
                return i2;
            }
        }
        return (int) zzm();
    }

    private final long zzy() throws IOException {
        int i2 = this.zzh;
        if (this.zzf - i2 < 8) {
            throw zzkb.zzh();
        }
        byte[] bArr = this.zzd;
        this.zzh = i2 + 8;
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    private final long zzz() throws IOException {
        long j7;
        long j8;
        long j9;
        long j10;
        int i2 = this.zzh;
        int i7 = this.zzf;
        if (i7 != i2) {
            byte[] bArr = this.zzd;
            int i8 = i2 + 1;
            byte b7 = bArr[i2];
            if (b7 >= 0) {
                this.zzh = i8;
                return b7;
            }
            if (i7 - i8 >= 9) {
                int i9 = i2 + 2;
                int i10 = (bArr[i8] << 7) ^ b7;
                if (i10 < 0) {
                    j7 = i10 ^ (-128);
                } else {
                    int i11 = i2 + 3;
                    int i12 = (bArr[i9] << 14) ^ i10;
                    if (i12 >= 0) {
                        j7 = i12 ^ 16256;
                        i9 = i11;
                    } else {
                        int i13 = i2 + 4;
                        int i14 = i12 ^ (bArr[i11] << 21);
                        if (i14 < 0) {
                            j10 = (-2080896) ^ i14;
                        } else {
                            long j11 = i14;
                            i9 = i2 + 5;
                            long j12 = j11 ^ (bArr[i13] << 28);
                            if (j12 >= 0) {
                                j9 = 266354560;
                            } else {
                                i13 = i2 + 6;
                                long j13 = j12 ^ (bArr[i9] << 35);
                                if (j13 < 0) {
                                    j8 = -34093383808L;
                                } else {
                                    i9 = i2 + 7;
                                    j12 = j13 ^ (bArr[i13] << 42);
                                    if (j12 >= 0) {
                                        j9 = 4363953127296L;
                                    } else {
                                        i13 = i2 + 8;
                                        j13 = j12 ^ (bArr[i9] << 49);
                                        if (j13 < 0) {
                                            j8 = -558586000294016L;
                                        } else {
                                            i9 = i2 + 9;
                                            long j14 = (j13 ^ (bArr[i13] << 56)) ^ 71499008037633920L;
                                            if (j14 < 0) {
                                                int i15 = i2 + 10;
                                                if (bArr[i9] >= 0) {
                                                    i9 = i15;
                                                }
                                            }
                                            j7 = j14;
                                        }
                                    }
                                }
                                j10 = j8 ^ j13;
                            }
                            j7 = j9 ^ j12;
                        }
                        i9 = i13;
                        j7 = j10;
                    }
                }
                this.zzh = i9;
                return j7;
            }
        }
        return zzm();
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final double zza() throws IOException {
        return Double.longBitsToDouble(zzy());
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final float zzb() throws IOException {
        return Float.intBitsToFloat(zzw());
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final int zzc() {
        return this.zzh - this.zzi;
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final int zzd() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final int zze() throws IOException {
        return zzw();
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final int zzf() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final int zzg() throws IOException {
        return zzw();
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final int zzh() throws IOException {
        return zziu.zza(zzx());
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final int zzi() throws IOException {
        if (zzt()) {
            this.zzj = 0;
            return 0;
        }
        int zzx = zzx();
        this.zzj = zzx;
        if ((zzx >>> 3) != 0) {
            return zzx;
        }
        throw zzkb.zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final int zzj() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final long zzk() throws IOException {
        return zzy();
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final long zzl() throws IOException {
        return zzz();
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final long zzm() throws IOException {
        long j7 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            j7 |= (r3 & Byte.MAX_VALUE) << i2;
            if ((zzv() & 128) == 0) {
                return j7;
            }
        }
        throw zzkb.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final long zzn() throws IOException {
        return zzy();
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final long zzo() throws IOException {
        return zziu.zza(zzz());
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final long zzp() throws IOException {
        return zzz();
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final zzij zzq() throws IOException {
        byte[] bArr;
        int zzx = zzx();
        if (zzx > 0) {
            int i2 = this.zzf;
            int i7 = this.zzh;
            if (zzx <= i2 - i7) {
                zzij zza = zzij.zza(this.zzd, i7, zzx);
                this.zzh += zzx;
                return zza;
            }
        }
        if (zzx == 0) {
            return zzij.zza;
        }
        if (zzx > 0) {
            int i8 = this.zzf;
            int i9 = this.zzh;
            if (zzx <= i8 - i9) {
                int i10 = zzx + i9;
                this.zzh = i10;
                bArr = Arrays.copyOfRange(this.zzd, i9, i10);
                return zzij.zza(bArr);
            }
        }
        if (zzx > 0) {
            throw zzkb.zzh();
        }
        if (zzx != 0) {
            throw zzkb.zzf();
        }
        bArr = zzjw.zzb;
        return zzij.zza(bArr);
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final String zzr() throws IOException {
        int zzx = zzx();
        if (zzx > 0) {
            int i2 = this.zzf;
            int i7 = this.zzh;
            if (zzx <= i2 - i7) {
                String str = new String(this.zzd, i7, zzx, zzjw.zza);
                this.zzh += zzx;
                return str;
            }
        }
        if (zzx == 0) {
            return "";
        }
        if (zzx < 0) {
            throw zzkb.zzf();
        }
        throw zzkb.zzh();
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final String zzs() throws IOException {
        int zzx = zzx();
        if (zzx > 0) {
            int i2 = this.zzf;
            int i7 = this.zzh;
            if (zzx <= i2 - i7) {
                String zzb = zznd.zzb(this.zzd, i7, zzx);
                this.zzh += zzx;
                return zzb;
            }
        }
        if (zzx == 0) {
            return "";
        }
        if (zzx <= 0) {
            throw zzkb.zzf();
        }
        throw zzkb.zzh();
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final boolean zzt() throws IOException {
        return this.zzh == this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final boolean zzu() throws IOException {
        return zzz() != 0;
    }

    private zzix(byte[] bArr, int i2, int i7, boolean z6) {
        super();
        this.zzk = Log.LOG_LEVEL_OFF;
        this.zzd = bArr;
        this.zzf = i7 + i2;
        this.zzh = i2;
        this.zzi = i2;
        this.zze = z6;
    }

    private final void zzf(int i2) throws IOException {
        if (i2 >= 0) {
            int i7 = this.zzf;
            int i8 = this.zzh;
            if (i2 <= i7 - i8) {
                this.zzh = i8 + i2;
                return;
            }
        }
        if (i2 >= 0) {
            throw zzkb.zzh();
        }
        throw zzkb.zzf();
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final int zzb(int i2) throws zzkb {
        if (i2 < 0) {
            throw zzkb.zzf();
        }
        int zzc = i2 + zzc();
        if (zzc < 0) {
            throw zzkb.zzg();
        }
        int i7 = this.zzk;
        if (zzc > i7) {
            throw zzkb.zzh();
        }
        this.zzk = zzc;
        zzaa();
        return i7;
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final void zzc(int i2) throws zzkb {
        if (this.zzj != i2) {
            throw zzkb.zzb();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final void zzd(int i2) {
        this.zzk = i2;
        zzaa();
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final boolean zze(int i2) throws IOException {
        int zzi;
        int i7 = i2 & 7;
        int i8 = 0;
        if (i7 == 0) {
            if (this.zzf - this.zzh < 10) {
                while (i8 < 10) {
                    if (zzv() < 0) {
                        i8++;
                    }
                }
                throw zzkb.zze();
            }
            while (i8 < 10) {
                byte[] bArr = this.zzd;
                int i9 = this.zzh;
                this.zzh = i9 + 1;
                if (bArr[i9] < 0) {
                    i8++;
                }
            }
            throw zzkb.zze();
            return true;
        }
        if (i7 == 1) {
            zzf(8);
            return true;
        }
        if (i7 == 2) {
            zzf(zzx());
            return true;
        }
        if (i7 != 3) {
            if (i7 == 4) {
                return false;
            }
            if (i7 != 5) {
                throw zzkb.zza();
            }
            zzf(4);
            return true;
        }
        do {
            zzi = zzi();
            if (zzi == 0) {
                break;
            }
        } while (zze(zzi));
        zzc(((i2 >>> 3) << 3) | 4);
        return true;
    }
}
