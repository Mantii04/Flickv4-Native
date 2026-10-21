package com.google.android.gms.internal.measurement;

import A.i;
import androidx.media3.common.util.Log;
import com.google.android.gms.internal.measurement.zzjt;
import com.google.android.gms.internal.measurement.zzjt.zza;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public abstract class zzjt<MessageType extends zzjt<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzhz<MessageType, BuilderType> {
    private static Map<Object, zzjt<?, ?>> zzc = new ConcurrentHashMap();
    private int zzd = -1;
    protected zzmw zzb = zzmw.zzc();

    public static abstract class zza<MessageType extends zzjt<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzhy<MessageType, BuilderType> {
        protected MessageType zza;
        private final MessageType zzb;

        public zza(MessageType messagetype) {
            this.zzb = messagetype;
            if (messagetype.zzch()) {
                throw new IllegalArgumentException("Default instance must be immutable.");
            }
            this.zza = (MessageType) messagetype.zzbz();
        }

        private final BuilderType zzb(byte[] bArr, int i2, int i7, zzjg zzjgVar) throws zzkb {
            if (!this.zza.zzch()) {
                zzal();
            }
            try {
                zzlu.zza().zza((zzlu) this.zza).zza(this.zza, bArr, 0, i7, new zzie(zzjgVar));
                return this;
            } catch (zzkb e3) {
                throw e3;
            } catch (IOException e7) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e7);
            } catch (IndexOutOfBoundsException unused) {
                throw zzkb.zzh();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
        public final BuilderType zzb(zziu zziuVar, zzjg zzjgVar) throws IOException {
            if (!this.zza.zzch()) {
                zzal();
            }
            try {
                zzlu.zza().zza((zzlu) this.zza).zza(this.zza, zziy.zza(zziuVar), zzjgVar);
                return this;
            } catch (RuntimeException e3) {
                if (e3.getCause() instanceof IOException) {
                    throw ((IOException) e3.getCause());
                }
                throw e3;
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zza zzaVar = (zza) this.zzb.zza(zzf.zze, null, null);
            zzaVar.zza = (MessageType) zzai();
            return zzaVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzli
        public final boolean i_() {
            return zzjt.zza(this.zza, false);
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: zza */
        public final /* synthetic */ zzhy zzb(zziu zziuVar, zzjg zzjgVar) throws IOException {
            return (zza) zzb(zziuVar, zzjgVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: zzae */
        public final /* synthetic */ zzhy clone() {
            return (zza) clone();
        }

        @Override // com.google.android.gms.internal.measurement.zzlf
        /* renamed from: zzaf, reason: merged with bridge method [inline-methods] */
        public final MessageType zzah() {
            MessageType messagetype = (MessageType) zzai();
            if (messagetype.i_()) {
                return messagetype;
            }
            throw new zzmu(messagetype);
        }

        @Override // com.google.android.gms.internal.measurement.zzlf
        /* renamed from: zzag, reason: merged with bridge method [inline-methods] */
        public MessageType zzai() {
            if (!this.zza.zzch()) {
                return this.zza;
            }
            this.zza.zzcf();
            return this.zza;
        }

        @Override // com.google.android.gms.internal.measurement.zzli
        public final /* synthetic */ zzlg zzaj() {
            return this.zzb;
        }

        public final void zzak() {
            if (this.zza.zzch()) {
                return;
            }
            zzal();
        }

        public void zzal() {
            MessageType messagetype = (MessageType) this.zzb.zzbz();
            zza(messagetype, this.zza);
            this.zza = messagetype;
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        public final /* synthetic */ zzhy zza(byte[] bArr, int i2, int i7) throws zzkb {
            return zzb(bArr, 0, i7, zzjg.zza);
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        public final /* synthetic */ zzhy zza(byte[] bArr, int i2, int i7, zzjg zzjgVar) throws zzkb {
            return zzb(bArr, 0, i7, zzjgVar);
        }

        public final BuilderType zza(MessageType messagetype) {
            if (this.zzb.equals(messagetype)) {
                return this;
            }
            if (!this.zza.zzch()) {
                zzal();
            }
            zza(this.zza, messagetype);
            return this;
        }

        private static <MessageType> void zza(MessageType messagetype, MessageType messagetype2) {
            zzlu.zza().zza((zzlu) messagetype).zza(messagetype, messagetype2);
        }
    }

    public static abstract class zzb<MessageType extends zzb<MessageType, BuilderType>, BuilderType> extends zzjt<MessageType, BuilderType> implements zzli {
        protected zzjj<zze> zzc = zzjj.zzb();

        public final zzjj<zze> zza() {
            if (this.zzc.zzf()) {
                this.zzc = (zzjj) this.zzc.clone();
            }
            return this.zzc;
        }
    }

    public static class zzc<T extends zzjt<T, ?>> extends zzia<T> {
        private final T zza;

        public zzc(T t6) {
            this.zza = t6;
        }
    }

    public static class zzd<ContainingType extends zzlg, Type> extends zzje<ContainingType, Type> {
    }

    public static final class zze implements zzjl<zze> {
        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzjl
        public final int zza() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzjl
        public final zzng zzb() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzjl
        public final zznq zzc() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzjl
        public final boolean zzd() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzjl
        public final boolean zze() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzjl
        public final zzlf zza(zzlf zzlfVar, zzlg zzlgVar) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzjl
        public final zzll zza(zzll zzllVar, zzll zzllVar2) {
            throw new NoSuchMethodError();
        }
    }

    public enum zzf {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        private static final /* synthetic */ int[] zzh = {1, 2, 3, 4, 5, 6, 7};

        public static int[] zza() {
            return (int[]) zzh.clone();
        }
    }

    private final int zza() {
        return zzlu.zza().zza((zzlu) this).zzb(this);
    }

    private final int zzb(zzly<?> zzlyVar) {
        return zzlyVar == null ? zzlu.zza().zza((zzlu) this).zza(this) : zzlyVar.zza(this);
    }

    public static zzka zzca() {
        return zzju.zzd();
    }

    public static zzjz zzcb() {
        return zzkr.zzd();
    }

    public static <E> zzkc<E> zzcc() {
        return zzlt.zzd();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzlu.zza().zza((zzlu) this).zzb(this, (zzjt) obj);
        }
        return false;
    }

    public int hashCode() {
        if (zzch()) {
            return zza();
        }
        if (this.zza == 0) {
            this.zza = zza();
        }
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzli
    public final boolean i_() {
        return zza(this, true);
    }

    public String toString() {
        return zzlh.zza(this, super.toString());
    }

    public abstract Object zza(int i2, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.measurement.zzli
    public final /* synthetic */ zzlg zzaj() {
        return (zzjt) zza(zzf.zzf, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzhz
    public final int zzbt() {
        return this.zzd & Log.LOG_LEVEL_OFF;
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final int zzbw() {
        return zza((zzly) null);
    }

    public final <MessageType extends zzjt<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> BuilderType zzbx() {
        return (BuilderType) zza(zzf.zze, (Object) null, (Object) null);
    }

    public final BuilderType zzby() {
        return (BuilderType) ((zza) zza(zzf.zze, (Object) null, (Object) null)).zza((zza) this);
    }

    public final MessageType zzbz() {
        return (MessageType) zza(zzf.zzd, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzhz
    public final void zzc(int i2) {
        if (i2 < 0) {
            throw new IllegalStateException(i.f(i2, "serialized size must be non-negative, was "));
        }
        this.zzd = (i2 & Log.LOG_LEVEL_OFF) | (this.zzd & Integer.MIN_VALUE);
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final /* synthetic */ zzlf zzcd() {
        return (zza) zza(zzf.zze, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final /* synthetic */ zzlf zzce() {
        return ((zza) zza(zzf.zze, (Object) null, (Object) null)).zza((zza) this);
    }

    public final void zzcf() {
        zzlu.zza().zza((zzlu) this).zzc(this);
        zzcg();
    }

    public final void zzcg() {
        this.zzd &= Log.LOG_LEVEL_OFF;
    }

    public final boolean zzch() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzhz
    public final int zza(zzly zzlyVar) {
        if (zzch()) {
            int zzb2 = zzb(zzlyVar);
            if (zzb2 >= 0) {
                return zzb2;
            }
            throw new IllegalStateException(i.f(zzb2, "serialized size must be non-negative, was "));
        }
        if (zzbt() != Integer.MAX_VALUE) {
            return zzbt();
        }
        int zzb3 = zzb(zzlyVar);
        zzc(zzb3);
        return zzb3;
    }

    public static <T extends zzjt<?, ?>> T zza(Class<T> cls) {
        T t6 = (T) zzc.get(cls);
        if (t6 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                t6 = (T) zzc.get(cls);
            } catch (ClassNotFoundException e3) {
                throw new IllegalStateException("Class initialization cannot fail.", e3);
            }
        }
        if (t6 != null) {
            return t6;
        }
        T t7 = (T) ((zzjt) zzmz.zza(cls)).zza(zzf.zzf, (Object) null, (Object) null);
        if (t7 != null) {
            zzc.put(cls, t7);
            return t7;
        }
        throw new IllegalStateException();
    }

    public static zzjz zza(zzjz zzjzVar) {
        int size = zzjzVar.size();
        return zzjzVar.zza(size == 0 ? 10 : size << 1);
    }

    public static <E> zzkc<E> zza(zzkc<E> zzkcVar) {
        int size = zzkcVar.size();
        return zzkcVar.zza(size == 0 ? 10 : size << 1);
    }

    public static Object zza(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e3);
        } catch (InvocationTargetException e7) {
            Throwable cause = e7.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    public static Object zza(zzlg zzlgVar, String str, Object[] objArr) {
        return new zzlw(zzlgVar, str, objArr);
    }

    public static <T extends zzjt<?, ?>> void zza(Class<T> cls, T t6) {
        t6.zzcg();
        zzc.put(cls, t6);
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final void zza(zzja zzjaVar) throws IOException {
        zzlu.zza().zza((zzlu) this).zza((zzly) this, (zznt) zzjc.zza(zzjaVar));
    }

    public static final <T extends zzjt<T, ?>> boolean zza(T t6, boolean z6) {
        byte byteValue = ((Byte) t6.zza(zzf.zza, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzd2 = zzlu.zza().zza((zzlu) t6).zzd(t6);
        if (z6) {
            t6.zza(zzf.zzb, zzd2 ? t6 : null, null);
        }
        return zzd2;
    }
}
