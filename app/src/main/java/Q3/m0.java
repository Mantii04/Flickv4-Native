package Q3;

import com.google.common.collect.AbstractC0762a;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class m0 extends AbstractC0762a {

    /* renamed from: f, reason: collision with root package name */
    public final Iterator f2901f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ n0 f2902j;

    public m0(n0 n0Var) {
        this.f2902j = n0Var;
        this.f2901f = n0Var.f2906b.iterator();
    }

    @Override // com.google.common.collect.AbstractC0762a
    public Object computeNext() {
        Object next;
        do {
            Iterator it = this.f2901f;
            if (!it.hasNext()) {
                return endOfData();
            }
            next = it.next();
        } while (!this.f2902j.f2907e.contains(next));
        return next;
    }
}
