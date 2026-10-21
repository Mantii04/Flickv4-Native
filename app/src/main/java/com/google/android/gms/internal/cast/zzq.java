package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
public final class zzq {
    private final String zza;
    private final long zzb;
    private final int zzc;
    private final long zzd;
    private final long zze;
    private long zzf;

    public zzq(zzp zzpVar) {
        String str;
        long j7;
        int i2;
        long j8;
        long j9;
        str = zzpVar.zza;
        this.zza = str;
        j7 = zzpVar.zzb;
        this.zzb = j7;
        i2 = zzpVar.zzc;
        this.zzc = i2;
        j8 = zzpVar.zzd;
        this.zzd = j8;
        j9 = zzpVar.zze;
        this.zze = j9;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final zznq zza() {
        char c7;
        String str = this.zza;
        zznp zza = zznq.zza();
        int i2 = 11;
        switch (str.hashCode()) {
            case -1189611734:
                if (str.equals("queueInsert")) {
                    c7 = 11;
                    break;
                }
                c7 = 65535;
                break;
            case -1109843021:
                if (str.equals("launch")) {
                    c7 = 20;
                    break;
                }
                c7 = 65535;
                break;
            case -940430091:
                if (str.equals("queueRemove")) {
                    c7 = '\r';
                    break;
                }
                c7 = 65535;
                break;
            case -936597225:
                if (str.equals("queueFetchItems")) {
                    c7 = 17;
                    break;
                }
                c7 = 65535;
                break;
            case -930425472:
                if (str.equals("setPlaybackDevices")) {
                    c7 = 21;
                    break;
                }
                c7 = 65535;
                break;
            case -921113364:
                if (str.equals("volume-mute")) {
                    c7 = 7;
                    break;
                }
                c7 = 65535;
                break;
            case -900560382:
                if (str.equals("skipAd")) {
                    c7 = 19;
                    break;
                }
                c7 = 65535;
                break;
            case -892481550:
                if (str.equals("status")) {
                    c7 = '\b';
                    break;
                }
                c7 = 65535;
                break;
            case -844665542:
                if (str.equals("queueUpdate")) {
                    c7 = '\f';
                    break;
                }
                c7 = 65535;
                break;
            case -810883302:
                if (str.equals("volume")) {
                    c7 = 5;
                    break;
                }
                c7 = 65535;
                break;
            case -402284771:
                if (str.equals("setPlaybackRate")) {
                    c7 = 18;
                    break;
                }
                c7 = 65535;
                break;
            case 3327206:
                if (str.equals("load")) {
                    c7 = 0;
                    break;
                }
                c7 = 65535;
                break;
            case 3363353:
                if (str.equals("mute")) {
                    c7 = 6;
                    break;
                }
                c7 = 65535;
                break;
            case 3443508:
                if (str.equals("play")) {
                    c7 = 1;
                    break;
                }
                c7 = 65535;
                break;
            case 3526264:
                if (str.equals("seek")) {
                    c7 = 4;
                    break;
                }
                c7 = 65535;
                break;
            case 3540994:
                if (str.equals("stop")) {
                    c7 = 3;
                    break;
                }
                c7 = 65535;
                break;
            case 106440182:
                if (str.equals("pause")) {
                    c7 = 2;
                    break;
                }
                c7 = 65535;
                break;
            case 525402049:
                if (str.equals("queueFetchItemRange")) {
                    c7 = 16;
                    break;
                }
                c7 = 65535;
                break;
            case 913357482:
                if (str.equals("queueReorder")) {
                    c7 = 14;
                    break;
                }
                c7 = 65535;
                break;
            case 1148867366:
                if (str.equals("trackStyle")) {
                    c7 = '\n';
                    break;
                }
                c7 = 65535;
                break;
            case 1451542318:
                if (str.equals("activeTracks")) {
                    c7 = '\t';
                    break;
                }
                c7 = 65535;
                break;
            case 1873161788:
                if (str.equals("queueFetchItemIds")) {
                    c7 = 15;
                    break;
                }
                c7 = 65535;
                break;
            default:
                c7 = 65535;
                break;
        }
        switch (c7) {
            case 0:
                i2 = 2;
                break;
            case 1:
                i2 = 3;
                break;
            case 2:
                i2 = 4;
                break;
            case 3:
                i2 = 5;
                break;
            case 4:
                i2 = 6;
                break;
            case 5:
                i2 = 7;
                break;
            case 6:
                i2 = 8;
                break;
            case 7:
                i2 = 9;
                break;
            case '\b':
                i2 = 10;
                break;
            case '\t':
                break;
            case '\n':
                i2 = 12;
                break;
            case 11:
                i2 = 13;
                break;
            case '\f':
                i2 = 14;
                break;
            case '\r':
                i2 = 15;
                break;
            case 14:
                i2 = 16;
                break;
            case 15:
                i2 = 17;
                break;
            case 16:
                i2 = 18;
                break;
            case 17:
                i2 = 19;
                break;
            case 18:
                i2 = 20;
                break;
            case 19:
                i2 = 21;
                break;
            case 20:
                i2 = 22;
                break;
            case 21:
                i2 = 23;
                break;
            default:
                i2 = 1;
                break;
        }
        zza.zze(i2);
        zza.zzb((int) this.zzb);
        zza.zzd(this.zzc);
        zza.zzc((int) (this.zzd - this.zzf));
        zza.zza((int) (this.zze - this.zzf));
        return (zznq) zza.zzq();
    }

    public final void zzb(long j7) {
        this.zzf = j7;
    }
}
