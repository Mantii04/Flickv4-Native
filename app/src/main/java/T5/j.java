package T5;

/* loaded from: classes2.dex */
public final class j {

    /* renamed from: b, reason: collision with root package name */
    public static final h f3732b = new h(null);

    /* renamed from: c, reason: collision with root package name */
    public static final i f3733c = new i();

    /* renamed from: a, reason: collision with root package name */
    public final Object f3734a;

    public /* synthetic */ j(Object obj) {
        this.f3734a = obj;
    }

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ j m33boximpl(Object obj) {
        return new j(obj);
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m35equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof j) && kotlin.jvm.internal.j.areEqual(obj, ((j) obj2).m42unboximpl());
    }

    /* renamed from: exceptionOrNull-impl, reason: not valid java name */
    public static final Throwable m36exceptionOrNullimpl(Object obj) {
        g gVar = obj instanceof g ? (g) obj : null;
        if (gVar != null) {
            return gVar.f3731a;
        }
        return null;
    }

    /* renamed from: getOrNull-impl, reason: not valid java name */
    public static final Object m37getOrNullimpl(Object obj) {
        if (obj instanceof i) {
            return null;
        }
        return obj;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m38hashCodeimpl(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    /* renamed from: isClosed-impl, reason: not valid java name */
    public static final boolean m39isClosedimpl(Object obj) {
        return obj instanceof g;
    }

    /* renamed from: isSuccess-impl, reason: not valid java name */
    public static final boolean m40isSuccessimpl(Object obj) {
        return !(obj instanceof i);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m41toStringimpl(Object obj) {
        if (obj instanceof g) {
            return ((g) obj).toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return m35equalsimpl(this.f3734a, obj);
    }

    public int hashCode() {
        return m38hashCodeimpl(this.f3734a);
    }

    public String toString() {
        return m41toStringimpl(this.f3734a);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ Object m42unboximpl() {
        return this.f3734a;
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static <T> Object m34constructorimpl(Object obj) {
        return obj;
    }
}
