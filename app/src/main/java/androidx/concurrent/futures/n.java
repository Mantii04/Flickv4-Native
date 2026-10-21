package androidx.concurrent.futures;

import V3.F;

/* loaded from: classes.dex */
public abstract class n {
    public static <T> F getFuture(k kVar) {
        j jVar = new j();
        jVar.f5220c = o.create();
        m mVar = new m(jVar);
        jVar.f5219b = mVar;
        jVar.f5218a = kVar.getClass();
        try {
            Object attachCompleter = kVar.attachCompleter(jVar);
            if (attachCompleter != null) {
                jVar.f5218a = attachCompleter;
                return mVar;
            }
        } catch (Exception e3) {
            mVar.f5224e.setException(e3);
        }
        return mVar;
    }
}
