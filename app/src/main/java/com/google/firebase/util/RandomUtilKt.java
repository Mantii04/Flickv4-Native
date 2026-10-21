package com.google.firebase.util;

import A.i;
import K5.d;
import M5.e;
import M5.g;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.j;
import v5.q;
import v5.u;
import v5.w;

/* loaded from: classes2.dex */
public final class RandomUtilKt {
    private static final String ALPHANUMERIC_ALPHABET = "23456789abcdefghjkmnpqrstvwxyz";

    private static /* synthetic */ void getALPHANUMERIC_ALPHABET$annotations() {
    }

    public static final String nextAlphanumericString(d dVar, int i2) {
        j.checkNotNullParameter(dVar, "<this>");
        if (i2 < 0) {
            throw new IllegalArgumentException(i.f(i2, "invalid length: ").toString());
        }
        e until = g.until(0, i2);
        ArrayList arrayList = new ArrayList(q.collectionSizeOrDefault(until, 10));
        Iterator it = until.iterator();
        while (it.hasNext()) {
            ((w) it).nextInt();
            arrayList.add(Character.valueOf(P5.q.random(ALPHANUMERIC_ALPHABET, dVar)));
        }
        return u.joinToString$default(arrayList, "", null, null, 0, null, null, 62, null);
    }
}
