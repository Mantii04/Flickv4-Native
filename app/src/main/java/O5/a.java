package O5;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class a implements d {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f2443a;

    public a(d sequence) {
        kotlin.jvm.internal.j.checkNotNullParameter(sequence, "sequence");
        this.f2443a = new AtomicReference(sequence);
    }

    @Override // O5.d
    public Iterator<Object> iterator() {
        d dVar = (d) this.f2443a.getAndSet(null);
        if (dVar != null) {
            return dVar.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
