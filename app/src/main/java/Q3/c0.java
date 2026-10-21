package Q3;

import java.util.List;

/* loaded from: classes2.dex */
public final class c0 extends e0 implements G {
    @Override // Q3.e0, Q3.W
    public List<Object> get(Object obj) {
        List list = (List) this.f2880m.get(obj);
        O o6 = this.f2881n;
        P3.v.checkNotNull(o6);
        return com.google.common.collect.B.transform(list, new H(o6, obj));
    }
}
