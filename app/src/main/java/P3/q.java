package P3;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final r f2705a;

    /* renamed from: b, reason: collision with root package name */
    public final String f2706b;

    public q(r rVar, String str) {
        this.f2705a = rVar;
        this.f2706b = (String) v.checkNotNull(str);
    }

    public <A extends Appendable> A appendTo(A a7, Iterator<? extends Map.Entry<?, ?>> it) throws IOException {
        v.checkNotNull(a7);
        if (it.hasNext()) {
            Map.Entry<?, ?> next = it.next();
            Object key = next.getKey();
            r rVar = this.f2705a;
            a7.append(r.a(key));
            String str = this.f2706b;
            a7.append(str);
            a7.append(r.a(next.getValue()));
            while (it.hasNext()) {
                a7.append(rVar.f2707a);
                Map.Entry<?, ?> next2 = it.next();
                a7.append(r.a(next2.getKey()));
                a7.append(str);
                a7.append(r.a(next2.getValue()));
            }
        }
        return a7;
    }

    public StringBuilder appendTo(StringBuilder sb, Iterable<? extends Map.Entry<?, ?>> iterable) {
        return appendTo(sb, iterable.iterator());
    }

    public StringBuilder appendTo(StringBuilder sb, Iterator<? extends Map.Entry<?, ?>> it) {
        try {
            appendTo((q) sb, it);
            return sb;
        } catch (IOException e3) {
            throw new AssertionError(e3);
        }
    }
}
