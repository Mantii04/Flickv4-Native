package W5;

import java.util.ArrayList;

/* renamed from: W5.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0364k {
    /* renamed from: constructor-impl$default, reason: not valid java name */
    public static /* synthetic */ Object m48constructorimpl$default(Object obj, int i2, kotlin.jvm.internal.g gVar) {
        if ((i2 & 1) != 0) {
            obj = null;
        }
        return m47constructorimpl(obj);
    }

    /* renamed from: plus-FjFbRPM, reason: not valid java name */
    public static final Object m49plusFjFbRPM(Object obj, Object obj2) {
        if (obj == null) {
            return m47constructorimpl(obj2);
        }
        if (obj instanceof ArrayList) {
            kotlin.jvm.internal.j.checkNotNull(obj, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
            ((ArrayList) obj).add(obj2);
            return m47constructorimpl(obj);
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(obj2);
        return m47constructorimpl(arrayList);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static <E> Object m47constructorimpl(Object obj) {
        return obj;
    }
}
