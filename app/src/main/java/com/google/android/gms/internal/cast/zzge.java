package com.google.android.gms.internal.cast;

import java.util.Iterator;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzge {
    public static int zza(Set set) {
        Iterator it = set.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i2 += next != null ? next.hashCode() : 0;
        }
        return i2;
    }
}
