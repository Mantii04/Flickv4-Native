package W5;

/* loaded from: classes2.dex */
public abstract class E {
    /* renamed from: getSegment-impl, reason: not valid java name */
    public static final D m45getSegmentimpl(Object obj) {
        if (obj == AbstractC0357d.f4187a) {
            throw new IllegalStateException("Does not contain segment");
        }
        kotlin.jvm.internal.j.checkNotNull(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
        return (D) obj;
    }

    /* renamed from: isClosed-impl, reason: not valid java name */
    public static final boolean m46isClosedimpl(Object obj) {
        return obj == AbstractC0357d.f4187a;
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static <S extends D> Object m44constructorimpl(Object obj) {
        return obj;
    }
}
