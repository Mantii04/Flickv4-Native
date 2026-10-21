package i4;

import h4.w;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: i4.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1012c implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1016g f16717b;

    public RunnableC1012c(C1016g c1016g) {
        this.f16717b = c1016g;
    }

    @Override // java.lang.Runnable
    public void run() {
        C1016g c1016g = this.f16717b;
        c1016g.getClass();
        w ofFloat = w.ofFloat(1.0f);
        ArrayList arrayList = c1016g.f16729g;
        ArrayList arrayList2 = (ArrayList) arrayList.clone();
        arrayList.clear();
        int size = arrayList2.size();
        int i2 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            i2 |= ((C1014e) arrayList2.get(i7)).f16719a;
        }
        HashMap hashMap = c1016g.f16731i;
        C1015f c1015f = new C1015f();
        c1015f.f16722a = i2;
        c1015f.f16723b = arrayList2;
        hashMap.put(ofFloat, c1015f);
        C1013d c1013d = c1016g.f16728f;
        ofFloat.addUpdateListener(c1013d);
        ofFloat.addListener(c1013d);
        if (c1016g.f16726d) {
            ofFloat.setDuration(c1016g.f16725c);
        }
        ofFloat.start();
    }
}
