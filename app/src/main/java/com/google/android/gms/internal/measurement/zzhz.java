package com.google.android.gms.internal.measurement;

import A.i;
import com.google.android.gms.internal.measurement.zzhy;
import com.google.android.gms.internal.measurement.zzhz;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class zzhz<MessageType extends zzhz<MessageType, BuilderType>, BuilderType extends zzhy<MessageType, BuilderType>> implements zzlg {
    protected int zza = 0;

    public int zza(zzly zzlyVar) {
        int zzbt = zzbt();
        if (zzbt != -1) {
            return zzbt;
        }
        int zza = zzlyVar.zza(this);
        zzc(zza);
        return zza;
    }

    public int zzbt() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final zzij zzbu() {
        try {
            zzio zzc = zzij.zzc(zzbw());
            zza(zzc.zzb());
            return zzc.zza();
        } catch (IOException e3) {
            throw new RuntimeException(i.l("Serializing ", getClass().getName(), " to a ByteString threw an IOException (should never happen)."), e3);
        }
    }

    public final byte[] zzbv() {
        try {
            byte[] bArr = new byte[zzbw()];
            zzja zzb = zzja.zzb(bArr);
            zza(zzb);
            zzb.zzb();
            return bArr;
        } catch (IOException e3) {
            throw new RuntimeException(i.l("Serializing ", getClass().getName(), " to a byte array threw an IOException (should never happen)."), e3);
        }
    }

    public void zzc(int i2) {
        throw new UnsupportedOperationException();
    }

    public static <T> void zza(Iterable<T> iterable, List<? super T> list) {
        zzjw.zza(iterable);
        if (iterable instanceof zzkm) {
            List<?> zze = ((zzkm) iterable).zze();
            zzkm zzkmVar = (zzkm) list;
            int size = list.size();
            for (Object obj : zze) {
                if (obj == null) {
                    String g7 = i.g(zzkmVar.size() - size, "Element at index ", " is null.");
                    for (int size2 = zzkmVar.size() - 1; size2 >= size; size2--) {
                        zzkmVar.remove(size2);
                    }
                    throw new NullPointerException(g7);
                }
                if (obj instanceof zzij) {
                    zzkmVar.zza((zzij) obj);
                } else {
                    zzkmVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zzls) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
        }
        int size3 = list.size();
        for (T t6 : iterable) {
            if (t6 == null) {
                String g8 = i.g(list.size() - size3, "Element at index ", " is null.");
                for (int size4 = list.size() - 1; size4 >= size3; size4--) {
                    list.remove(size4);
                }
                throw new NullPointerException(g8);
            }
            list.add(t6);
        }
    }
}
