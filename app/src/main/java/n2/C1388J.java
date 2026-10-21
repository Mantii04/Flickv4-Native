package n2;

import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: n2.J, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1388J {

    /* renamed from: a, reason: collision with root package name */
    public final L.e f18900a;

    /* renamed from: b, reason: collision with root package name */
    public final List f18901b;

    /* renamed from: c, reason: collision with root package name */
    public final String f18902c;

    public C1388J(Class<Object> cls, Class<Object> cls2, Class<Object> cls3, List<C1410o> list, L.e eVar) {
        this.f18900a = eVar;
        this.f18901b = (List) G2.r.checkNotEmpty(list);
        this.f18902c = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public InterfaceC1391M load(com.bumptech.glide.load.data.g gVar, l2.q qVar, int i2, int i7, InterfaceC1409n interfaceC1409n) throws GlideException {
        L.e eVar = this.f18900a;
        List list = (List) G2.r.checkNotNull(eVar.acquire());
        try {
            List list2 = this.f18901b;
            int size = list2.size();
            InterfaceC1391M interfaceC1391M = null;
            for (int i8 = 0; i8 < size; i8++) {
                try {
                    interfaceC1391M = ((C1410o) list2.get(i8)).decode(gVar, i2, i7, qVar, interfaceC1409n);
                } catch (GlideException e3) {
                    list.add(e3);
                }
                if (interfaceC1391M != null) {
                    break;
                }
            }
            if (interfaceC1391M != null) {
                return interfaceC1391M;
            }
            throw new GlideException(this.f18902c, new ArrayList(list));
        } finally {
            eVar.release(list);
        }
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f18901b.toArray()) + '}';
    }
}
