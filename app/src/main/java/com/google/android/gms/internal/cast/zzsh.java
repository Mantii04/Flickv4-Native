package com.google.android.gms.internal.cast;

import A.i;
import com.google.android.gms.internal.cast.zzsg;
import com.google.android.gms.internal.cast.zzsh;
import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class zzsh<MessageType extends zzsh<MessageType, BuilderType>, BuilderType extends zzsg<MessageType, BuilderType>> implements zzux {
    protected int zza = 0;

    public int zzq(zzvi zzviVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzux
    public final zzsu zzr() {
        try {
            int zzu = zzu();
            zzsu zzsuVar = zzsu.zzb;
            byte[] bArr = new byte[zzu];
            zztc zzz = zztc.zzz(bArr, 0, zzu);
            zzJ(zzz);
            zzz.zzA();
            return new zzsr(bArr);
        } catch (IOException e3) {
            throw new RuntimeException(i.l("Serializing ", getClass().getName(), " to a ByteString threw an IOException (should never happen)."), e3);
        }
    }
}
