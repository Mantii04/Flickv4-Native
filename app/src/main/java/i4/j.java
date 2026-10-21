package i4;

import h4.w;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class j implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n f16734b;

    public j(n nVar) {
        this.f16734b = nVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        n nVar = this.f16734b;
        nVar.getClass();
        w ofFloat = w.ofFloat(1.0f);
        ArrayList arrayList = nVar.f16747h;
        ArrayList arrayList2 = (ArrayList) arrayList.clone();
        arrayList.clear();
        int size = arrayList2.size();
        int i2 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            i2 |= ((l) arrayList2.get(i7)).f16736a;
        }
        HashMap hashMap = nVar.f16749j;
        m mVar = new m();
        mVar.f16739a = i2;
        mVar.f16740b = arrayList2;
        hashMap.put(ofFloat, mVar);
        k kVar = nVar.f16746g;
        ofFloat.addUpdateListener(kVar);
        ofFloat.addListener(kVar);
        if (nVar.f16744e) {
            ofFloat.setDuration(nVar.f16743d);
        }
        ofFloat.start();
    }
}
