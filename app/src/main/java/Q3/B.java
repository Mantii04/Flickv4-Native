package Q3;

import com.google.common.collect.AbstractC0762a;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class B extends AbstractC0762a {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Iterator f2852f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ P3.w f2853j;

    public B(Iterator it, P3.w wVar) {
        this.f2852f = it;
        this.f2853j = wVar;
    }

    @Override // com.google.common.collect.AbstractC0762a
    public Object computeNext() {
        Object next;
        do {
            Iterator it = this.f2852f;
            if (!it.hasNext()) {
                return endOfData();
            }
            next = it.next();
        } while (!this.f2853j.apply(next));
        return next;
    }
}
