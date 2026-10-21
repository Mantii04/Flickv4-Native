package r2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* renamed from: r2.b0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1570b0 implements InterfaceC1562V {

    /* renamed from: a, reason: collision with root package name */
    public final List f19771a;

    /* renamed from: b, reason: collision with root package name */
    public final L.e f19772b;

    public C1570b0(List list, L.e eVar) {
        this.f19771a = list;
        this.f19772b = eVar;
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(Object obj, int i2, int i7, l2.q qVar) {
        C1561U buildLoadData;
        List list = this.f19771a;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        l2.m mVar = null;
        for (int i8 = 0; i8 < size; i8++) {
            InterfaceC1562V interfaceC1562V = (InterfaceC1562V) list.get(i8);
            if (interfaceC1562V.handles(obj) && (buildLoadData = interfaceC1562V.buildLoadData(obj, i2, i7, qVar)) != null) {
                arrayList.add(buildLoadData.f19758c);
                mVar = buildLoadData.f19756a;
            }
        }
        if (arrayList.isEmpty() || mVar == null) {
            return null;
        }
        return new C1561U(mVar, new C1568a0(arrayList, this.f19772b));
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(Object obj) {
        Iterator it = this.f19771a.iterator();
        while (it.hasNext()) {
            if (((InterfaceC1562V) it.next()).handles(obj)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f19771a.toArray()) + '}';
    }
}
