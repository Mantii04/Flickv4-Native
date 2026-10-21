package O5;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class n implements d {

    /* renamed from: a, reason: collision with root package name */
    public final d f2457a;

    /* renamed from: b, reason: collision with root package name */
    public final H5.l f2458b;

    public n(d sequence, H5.l transformer) {
        kotlin.jvm.internal.j.checkNotNullParameter(sequence, "sequence");
        kotlin.jvm.internal.j.checkNotNullParameter(transformer, "transformer");
        this.f2457a = sequence;
        this.f2458b = transformer;
    }

    @Override // O5.d
    public Iterator<Object> iterator() {
        return new m(this);
    }
}
