package W5;

/* renamed from: W5.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0357d {

    /* renamed from: a, reason: collision with root package name */
    public static final G f4187a = new G("CLOSED");

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [W5.e] */
    public static final <N extends AbstractC0358e> N close(N n7) {
        while (true) {
            Object access$getNextOrClosed = AbstractC0358e.access$getNextOrClosed(n7);
            if (access$getNextOrClosed == f4187a) {
                return n7;
            }
            ?? r02 = (AbstractC0358e) access$getNextOrClosed;
            if (r02 != 0) {
                n7 = r02;
            } else if (n7.markAsClosed()) {
                return n7;
            }
        }
    }

    public static final <S extends D> Object findSegmentInternal(S s6, long j7, H5.p pVar) {
        while (true) {
            if (s6.f4177f >= j7 && !s6.isRemoved()) {
                return E.m44constructorimpl(s6);
            }
            Object access$getNextOrClosed = AbstractC0358e.access$getNextOrClosed(s6);
            if (access$getNextOrClosed == f4187a) {
                return E.m44constructorimpl(f4187a);
            }
            AbstractC0358e abstractC0358e = (D) ((AbstractC0358e) access$getNextOrClosed);
            if (abstractC0358e == null) {
                abstractC0358e = (D) pVar.invoke(Long.valueOf(s6.f4177f + 1), s6);
                if (s6.trySetNext(abstractC0358e)) {
                    if (s6.isRemoved()) {
                        s6.remove();
                    }
                }
            }
            s6 = abstractC0358e;
        }
    }
}
