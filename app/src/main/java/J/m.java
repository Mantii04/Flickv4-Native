package J;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class m implements L.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1414a;

    public m(String str) {
        this.f1414a = str;
    }

    @Override // L.a
    public void accept(n nVar) {
        synchronized (o.f1419c) {
            try {
                p.q qVar = o.f1420d;
                ArrayList arrayList = (ArrayList) qVar.get(this.f1414a);
                if (arrayList == null) {
                    return;
                }
                qVar.remove(this.f1414a);
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    ((L.a) arrayList.get(i2)).accept(nVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
