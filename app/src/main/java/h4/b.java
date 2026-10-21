package h4;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public abstract class b implements Cloneable {

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f16559b = null;

    public void addListener(InterfaceC0986a interfaceC0986a) {
        if (this.f16559b == null) {
            this.f16559b = new ArrayList();
        }
        this.f16559b.add(interfaceC0986a);
    }

    public abstract void cancel();

    public b clone() {
        try {
            b bVar = (b) super.clone();
            ArrayList arrayList = this.f16559b;
            if (arrayList != null) {
                bVar.f16559b = new ArrayList();
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    bVar.f16559b.add(arrayList.get(i2));
                }
            }
            return bVar;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
