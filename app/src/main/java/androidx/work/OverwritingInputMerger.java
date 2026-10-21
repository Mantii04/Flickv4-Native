package androidx.work;

import B1.AbstractC0031k;
import B1.C0027g;
import B1.C0028h;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class OverwritingInputMerger extends AbstractC0031k {
    @Override // B1.AbstractC0031k
    public C0028h merge(List<C0028h> list) {
        C0027g c0027g = new C0027g();
        HashMap hashMap = new HashMap();
        Iterator<C0028h> it = list.iterator();
        while (it.hasNext()) {
            hashMap.putAll(it.next().getKeyValueMap());
        }
        c0027g.putAll(hashMap);
        return c0027g.build();
    }
}
