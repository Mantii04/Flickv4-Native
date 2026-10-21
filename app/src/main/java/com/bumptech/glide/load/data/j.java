package com.bumptech.glide.load.data;

import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: b, reason: collision with root package name */
    public static final h f9205b = new h();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f9206a = new HashMap();

    public synchronized <T> g build(T t6) {
        f fVar;
        try {
            G2.r.checkNotNull(t6);
            fVar = (f) this.f9206a.get(t6.getClass());
            if (fVar == null) {
                Iterator it = this.f9206a.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    f fVar2 = (f) it.next();
                    if (fVar2.getDataClass().isAssignableFrom(t6.getClass())) {
                        fVar = fVar2;
                        break;
                    }
                }
            }
            if (fVar == null) {
                fVar = f9205b;
            }
        } catch (Throwable th) {
            throw th;
        }
        return fVar.build(t6);
    }

    public synchronized void register(f fVar) {
        this.f9206a.put(fVar.getDataClass(), fVar);
    }
}
