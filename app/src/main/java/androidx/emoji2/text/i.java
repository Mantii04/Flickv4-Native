package androidx.emoji2.text;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class i extends o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j f5988a;

    public i(j jVar) {
        this.f5988a = jVar;
    }

    @Override // androidx.emoji2.text.o
    public void onFailed(Throwable th) {
        this.f5988a.f5989a.a(th);
    }

    @Override // androidx.emoji2.text.o
    public void onLoaded(C c7) {
        j jVar = this.f5988a;
        if (c7 == null) {
            jVar.f5989a.a(new IllegalArgumentException("metadataRepo cannot be null"));
            return;
        }
        jVar.f5991c = c7;
        C c8 = jVar.f5991c;
        C0449h c0449h = jVar.f5989a.f6008i;
        C.k kVar = new C.k();
        kVar.f325a = c8;
        kVar.f326b = c0449h;
        jVar.f5990b = kVar;
        p pVar = jVar.f5989a;
        pVar.getClass();
        ArrayList arrayList = new ArrayList();
        pVar.f6000a.writeLock().lock();
        try {
            pVar.f6002c = 1;
            arrayList.addAll(pVar.f6001b);
            pVar.f6001b.clear();
            pVar.f6000a.writeLock().unlock();
            pVar.f6003d.post(new m(arrayList, pVar.f6002c, null));
        } catch (Throwable th) {
            pVar.f6000a.writeLock().unlock();
            throw th;
        }
    }
}
