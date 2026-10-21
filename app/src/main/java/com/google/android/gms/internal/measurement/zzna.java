package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* loaded from: classes2.dex */
final class zzna implements Iterator<String> {
    private Iterator<String> zza;
    private final /* synthetic */ zzmy zzb;

    public zzna(zzmy zzmyVar) {
        zzkm zzkmVar;
        this.zzb = zzmyVar;
        zzkmVar = zzmyVar.zza;
        this.zza = zzkmVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
