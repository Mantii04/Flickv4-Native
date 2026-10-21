package com.google.android.gms.internal.cast;

import A.i;
import androidx.media3.common.util.Log;
import com.google.android.gms.internal.cast.zztm;
import com.google.android.gms.internal.cast.zztp;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public abstract class zztp<MessageType extends zztp<MessageType, BuilderType>, BuilderType extends zztm<MessageType, BuilderType>> extends zzsh<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected zzwa zzc = zzwa.zzc();

    public static zztx zzA() {
        return zzvg.zzd();
    }

    public static zztx zzB(zztx zztxVar) {
        int size = zztxVar.size();
        return zztxVar.zzg(size == 0 ? 10 : size + size);
    }

    public static Object zzD(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e3);
        } catch (InvocationTargetException e7) {
            Throwable cause = e7.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static Object zzE(zzux zzuxVar, String str, Object[] objArr) {
        return new zzvh(zzuxVar, str, objArr);
    }

    public static void zzH(Class cls, zztp zztpVar) {
        zztpVar.zzG();
        zzb.put(cls, zztpVar);
    }

    private final int zza(zzvi zzviVar) {
        return zzvf.zza().zzb(getClass()).zza(this);
    }

    public static zztp zzw(Class cls) {
        Map map = zzb;
        zztp zztpVar = (zztp) map.get(cls);
        if (zztpVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zztpVar = (zztp) map.get(cls);
            } catch (ClassNotFoundException e3) {
                throw new IllegalStateException("Class initialization cannot fail.", e3);
            }
        }
        if (zztpVar != null) {
            return zztpVar;
        }
        zztp zztpVar2 = (zztp) ((zztp) zzwj.zze(cls)).zzb(6, null, null);
        if (zztpVar2 == null) {
            throw new IllegalStateException();
        }
        map.put(cls, zztpVar2);
        return zztpVar2;
    }

    public static zztu zzy() {
        return zztq.zze();
    }

    public static zztw zzz() {
        return zzum.zze();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzvf.zza().zzb(getClass()).zzg(this, (zztp) obj);
    }

    public final int hashCode() {
        if (zzK()) {
            return zzs();
        }
        int i2 = this.zza;
        if (i2 != 0) {
            return i2;
        }
        int zzs = zzs();
        this.zza = zzs;
        return zzs;
    }

    public final String toString() {
        return zzuz.zza(this, super.toString());
    }

    @Override // com.google.android.gms.internal.cast.zzux
    public final /* synthetic */ zzuw zzC() {
        return (zztm) zzb(5, null, null);
    }

    public final void zzF() {
        zzvf.zza().zzb(getClass()).zzd(this);
        zzG();
    }

    public final void zzG() {
        this.zzd &= Log.LOG_LEVEL_OFF;
    }

    public final void zzI(int i2) {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Log.LOG_LEVEL_OFF;
    }

    @Override // com.google.android.gms.internal.cast.zzux
    public final void zzJ(zztc zztcVar) throws IOException {
        zzvf.zza().zzb(getClass()).zzf(this, zztd.zza(zztcVar));
    }

    public final boolean zzK() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    public abstract Object zzb(int i2, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.cast.zzsh
    public final int zzq(zzvi zzviVar) {
        if (zzK()) {
            int zza = zzviVar.zza(this);
            if (zza >= 0) {
                return zza;
            }
            throw new IllegalStateException(i.f(zza, "serialized size must be non-negative, was "));
        }
        int i2 = this.zzd & Log.LOG_LEVEL_OFF;
        if (i2 != Integer.MAX_VALUE) {
            return i2;
        }
        int zza2 = zzviVar.zza(this);
        if (zza2 < 0) {
            throw new IllegalStateException(i.f(zza2, "serialized size must be non-negative, was "));
        }
        this.zzd = (this.zzd & Integer.MIN_VALUE) | zza2;
        return zza2;
    }

    public final int zzs() {
        return zzvf.zza().zzb(getClass()).zzb(this);
    }

    @Override // com.google.android.gms.internal.cast.zzuy
    public final /* synthetic */ zzux zzt() {
        return (zztp) zzb(6, null, null);
    }

    @Override // com.google.android.gms.internal.cast.zzux
    public final int zzu() {
        if (zzK()) {
            int zza = zza(null);
            if (zza >= 0) {
                return zza;
            }
            throw new IllegalStateException(i.f(zza, "serialized size must be non-negative, was "));
        }
        int i2 = this.zzd & Log.LOG_LEVEL_OFF;
        if (i2 != Integer.MAX_VALUE) {
            return i2;
        }
        int zza2 = zza(null);
        if (zza2 < 0) {
            throw new IllegalStateException(i.f(zza2, "serialized size must be non-negative, was "));
        }
        this.zzd = (this.zzd & Integer.MIN_VALUE) | zza2;
        return zza2;
    }

    public final zztm zzv() {
        return (zztm) zzb(5, null, null);
    }

    public final zztp zzx() {
        return (zztp) zzb(4, null, null);
    }
}
