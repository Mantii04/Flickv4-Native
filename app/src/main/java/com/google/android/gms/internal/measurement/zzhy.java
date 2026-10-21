package com.google.android.gms.internal.measurement;

import b.c;
import com.google.android.gms.internal.measurement.zzhy;
import com.google.android.gms.internal.measurement.zzhz;
import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class zzhy<MessageType extends zzhz<MessageType, BuilderType>, BuilderType extends zzhy<MessageType, BuilderType>> implements zzlf {
    @Override // 
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType zzb(zziu zziuVar, zzjg zzjgVar) throws IOException;

    public BuilderType zza(byte[] bArr, int i2, int i7) throws zzkb {
        try {
            zziu zza = zziu.zza(bArr, 0, i7, false);
            zzb(zza, zzjg.zza);
            zza.zzc(0);
            return this;
        } catch (zzkb e3) {
            throw e3;
        } catch (IOException e7) {
            throw new RuntimeException(zza("byte array"), e7);
        }
    }

    @Override // 
    /* renamed from: zzae, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType clone();

    public BuilderType zza(byte[] bArr, int i2, int i7, zzjg zzjgVar) throws zzkb {
        try {
            zziu zza = zziu.zza(bArr, 0, i7, false);
            zzb(zza, zzjgVar);
            zza.zzc(0);
            return this;
        } catch (zzkb e3) {
            throw e3;
        } catch (IOException e7) {
            throw new RuntimeException(zza("byte array"), e7);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlf
    public final /* synthetic */ zzlf zza(byte[] bArr) throws zzkb {
        return zza(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.measurement.zzlf
    public final /* synthetic */ zzlf zza(byte[] bArr, zzjg zzjgVar) throws zzkb {
        return zza(bArr, 0, bArr.length, zzjgVar);
    }

    private final String zza(String str) {
        return c.m("Reading ", getClass().getName(), " from a ", str, " threw an IOException (should never happen).");
    }
}
