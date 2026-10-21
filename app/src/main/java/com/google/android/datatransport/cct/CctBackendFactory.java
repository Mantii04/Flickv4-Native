package com.google.android.datatransport.cct;

import Q2.d;
import T2.e;
import T2.j;
import T2.o;
import androidx.annotation.Keep;

@Keep
/* loaded from: classes.dex */
public class CctBackendFactory implements e {
    @Override // T2.e
    public o create(j jVar) {
        return new d(jVar.getApplicationContext(), jVar.getWallClock(), jVar.getMonotonicClock());
    }
}
