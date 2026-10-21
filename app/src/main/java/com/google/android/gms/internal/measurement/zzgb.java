package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjt;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzgb {

    public static final class zza extends zzjt<zza, C0010zza> implements zzli {
        private static final zza zzc;
        private static volatile zzlp<zza> zzd;
        private zzkc<zzb> zze = zzjt.zzcc();

        /* renamed from: com.google.android.gms.internal.measurement.zzgb$zza$zza, reason: collision with other inner class name */
        public static final class C0010zza extends zzjt.zza<zza, C0010zza> implements zzli {
            private C0010zza() {
                super(zza.zzc);
            }

            public /* synthetic */ C0010zza(zzgc zzgcVar) {
                this();
            }
        }

        static {
            zza zzaVar = new zza();
            zzc = zzaVar;
            zzjt.zza((Class<zza>) zza.class, zzaVar);
        }

        private zza() {
        }

        public static zza zzc() {
            return zzc;
        }

        public final int zza() {
            return this.zze.size();
        }

        public final List<zzb> zzd() {
            return this.zze;
        }

        @Override // com.google.android.gms.internal.measurement.zzjt
        public final Object zza(int i2, Object obj, Object obj2) {
            zzlp zzlpVar;
            zzgc zzgcVar = null;
            switch (zzgc.zza[i2 - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0010zza(zzgcVar);
                case 3:
                    return zzjt.zza(zzc, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zze", zzb.class});
                case 4:
                    return zzc;
                case 5:
                    zzlp<zza> zzlpVar2 = zzd;
                    if (zzlpVar2 != null) {
                        return zzlpVar2;
                    }
                    synchronized (zza.class) {
                        try {
                            zzlpVar = zzd;
                            if (zzlpVar == null) {
                                zzlpVar = new zzjt.zzc(zzc);
                                zzd = zzlpVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzlpVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    public static final class zzb extends zzjt<zzb, zza> implements zzli {
        private static final zzb zzc;
        private static volatile zzlp<zzb> zzd;
        private int zze;
        private String zzf = "";
        private zzkc<zzd> zzg = zzjt.zzcc();

        public static final class zza extends zzjt.zza<zzb, zza> implements zzli {
            private zza() {
                super(zzb.zzc);
            }

            public /* synthetic */ zza(zzgc zzgcVar) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzc = zzbVar;
            zzjt.zza((Class<zzb>) zzb.class, zzbVar);
        }

        private zzb() {
        }

        public final String zzb() {
            return this.zzf;
        }

        public final List<zzd> zzc() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.measurement.zzjt
        public final Object zza(int i2, Object obj, Object obj2) {
            zzlp zzlpVar;
            zzgc zzgcVar = null;
            switch (zzgc.zza[i2 - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzgcVar);
                case 3:
                    return zzjt.zza(zzc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b", new Object[]{"zze", "zzf", "zzg", zzd.class});
                case 4:
                    return zzc;
                case 5:
                    zzlp<zzb> zzlpVar2 = zzd;
                    if (zzlpVar2 != null) {
                        return zzlpVar2;
                    }
                    synchronized (zzb.class) {
                        try {
                            zzlpVar = zzd;
                            if (zzlpVar == null) {
                                zzlpVar = new zzjt.zzc(zzc);
                                zzd = zzlpVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzlpVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    public static final class zzc extends zzjt<zzc, zza> implements zzli {
        private static final zzc zzc;
        private static volatile zzlp<zzc> zzd;
        private int zze;
        private zzkc<zzd> zzf = zzjt.zzcc();
        private zza zzg;

        public static final class zza extends zzjt.zza<zzc, zza> implements zzli {
            private zza() {
                super(zzc.zzc);
            }

            public /* synthetic */ zza(zzgc zzgcVar) {
                this();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzc = zzcVar;
            zzjt.zza((Class<zzc>) zzc.class, zzcVar);
        }

        private zzc() {
        }

        public final zza zza() {
            zza zzaVar = this.zzg;
            return zzaVar == null ? zza.zzc() : zzaVar;
        }

        public final List<zzd> zzc() {
            return this.zzf;
        }

        @Override // com.google.android.gms.internal.measurement.zzjt
        public final Object zza(int i2, Object obj, Object obj2) {
            zzlp zzlpVar;
            zzgc zzgcVar = null;
            switch (zzgc.zza[i2 - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(zzgcVar);
                case 3:
                    return zzjt.zza(zzc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zze", "zzf", zzd.class, "zzg"});
                case 4:
                    return zzc;
                case 5:
                    zzlp<zzc> zzlpVar2 = zzd;
                    if (zzlpVar2 != null) {
                        return zzlpVar2;
                    }
                    synchronized (zzc.class) {
                        try {
                            zzlpVar = zzd;
                            if (zzlpVar == null) {
                                zzlpVar = new zzjt.zzc(zzc);
                                zzd = zzlpVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzlpVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    public static final class zzd extends zzjt<zzd, zzb> implements zzli {
        private static final zzd zzc;
        private static volatile zzlp<zzd> zzd;
        private int zze;
        private int zzf;
        private zzkc<zzd> zzg = zzjt.zzcc();
        private String zzh = "";
        private String zzi = "";
        private boolean zzj;
        private double zzk;

        public enum zza implements zzjv {
            UNKNOWN(0),
            STRING(1),
            NUMBER(2),
            BOOLEAN(3),
            STATEMENT(4);

            private static final zzjy<zza> zzf = new zzge();
            private final int zzh;

            zza(int i2) {
                this.zzh = i2;
            }

            public static zzjx zzb() {
                return zzgd.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzh + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.measurement.zzjv
            public final int zza() {
                return this.zzh;
            }

            public static zza zza(int i2) {
                if (i2 == 0) {
                    return UNKNOWN;
                }
                if (i2 == 1) {
                    return STRING;
                }
                if (i2 == 2) {
                    return NUMBER;
                }
                if (i2 == 3) {
                    return BOOLEAN;
                }
                if (i2 != 4) {
                    return null;
                }
                return STATEMENT;
            }
        }

        public static final class zzb extends zzjt.zza<zzd, zzb> implements zzli {
            private zzb() {
                super(zzd.zzc);
            }

            public /* synthetic */ zzb(zzgc zzgcVar) {
                this();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzc = zzdVar;
            zzjt.zza((Class<zzd>) zzd.class, zzdVar);
        }

        private zzd() {
        }

        public final double zza() {
            return this.zzk;
        }

        public final zza zzb() {
            zza zza2 = zza.zza(this.zzf);
            return zza2 == null ? zza.UNKNOWN : zza2;
        }

        public final String zzd() {
            return this.zzh;
        }

        public final String zze() {
            return this.zzi;
        }

        public final List<zzd> zzf() {
            return this.zzg;
        }

        public final boolean zzg() {
            return this.zzj;
        }

        public final boolean zzh() {
            return (this.zze & 8) != 0;
        }

        public final boolean zzi() {
            return (this.zze & 16) != 0;
        }

        public final boolean zzj() {
            return (this.zze & 4) != 0;
        }

        @Override // com.google.android.gms.internal.measurement.zzjt
        public final Object zza(int i2, Object obj, Object obj2) {
            zzlp zzlpVar;
            zzgc zzgcVar = null;
            switch (zzgc.zza[i2 - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zzb(zzgcVar);
                case 3:
                    return zzjt.zza(zzc, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001᠌\u0000\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zze", "zzf", zza.zzb(), "zzg", zzd.class, "zzh", "zzi", "zzj", "zzk"});
                case 4:
                    return zzc;
                case 5:
                    zzlp<zzd> zzlpVar2 = zzd;
                    if (zzlpVar2 != null) {
                        return zzlpVar2;
                    }
                    synchronized (zzd.class) {
                        try {
                            zzlpVar = zzd;
                            if (zzlpVar == null) {
                                zzlpVar = new zzjt.zzc(zzc);
                                zzd = zzlpVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzlpVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }
}
