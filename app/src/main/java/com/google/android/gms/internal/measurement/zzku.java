package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
final class zzku implements zzlx {
    private static final zzld zza = new zzkt();
    private final zzld zzb;

    public zzku() {
        this(new zzkv(zzjr.zza(), zza()));
    }

    private static zzld zza() {
        try {
            return (zzld) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return zza;
        }
    }

    private zzku(zzld zzldVar) {
        this.zzb = (zzld) zzjw.zza(zzldVar, "messageInfoFactory");
    }

    @Override // com.google.android.gms.internal.measurement.zzlx
    public final <T> zzly<T> zza(Class<T> cls) {
        zzma.zza((Class<?>) cls);
        zzle zza2 = this.zzb.zza(cls);
        if (zza2.zzc()) {
            if (zzjt.class.isAssignableFrom(cls)) {
                return zzlm.zza(zzma.zzb(), zzjk.zzb(), zza2.zza());
            }
            return zzlm.zza(zzma.zza(), zzjk.zza(), zza2.zza());
        }
        if (zzjt.class.isAssignableFrom(cls)) {
            if (zza(zza2)) {
                return zzlk.zza(cls, zza2, zzlq.zzb(), zzkl.zzb(), zzma.zzb(), zzjk.zzb(), zzlb.zzb());
            }
            return zzlk.zza(cls, zza2, zzlq.zzb(), zzkl.zzb(), zzma.zzb(), (zzji<?>) null, zzlb.zzb());
        }
        if (zza(zza2)) {
            return zzlk.zza(cls, zza2, zzlq.zza(), zzkl.zza(), zzma.zza(), zzjk.zza(), zzlb.zza());
        }
        return zzlk.zza(cls, zza2, zzlq.zza(), zzkl.zza(), zzma.zza(), (zzji<?>) null, zzlb.zza());
    }

    private static boolean zza(zzle zzleVar) {
        return zzkw.zza[zzleVar.zzb().ordinal()] != 1;
    }
}
