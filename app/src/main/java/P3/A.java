package P3;

import androidx.media3.common.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class A {

    /* renamed from: a, reason: collision with root package name */
    public final o f2684a;

    /* renamed from: b, reason: collision with root package name */
    public final y f2685b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2686c;

    public A(y yVar) {
        o none = o.none();
        this.f2685b = yVar;
        this.f2684a = none;
        this.f2686c = Log.LOG_LEVEL_OFF;
    }

    public static A on(char c7) {
        return on(o.is(c7));
    }

    public List<String> splitToList(CharSequence charSequence) {
        v.checkNotNull(charSequence);
        Iterator m2iterator = this.f2685b.m2iterator(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (m2iterator.hasNext()) {
            arrayList.add((String) m2iterator.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static A on(o oVar) {
        v.checkNotNull(oVar);
        return new A(new y(oVar));
    }
}
