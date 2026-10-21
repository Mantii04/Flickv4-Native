package w5;

import java.util.Map;

/* renamed from: w5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1781a extends v5.h {
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return contains((Map.Entry<Object, Object>) obj);
        }
        return false;
    }

    public abstract boolean containsEntry(Map.Entry<Object, Object> entry);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof Map.Entry) {
            return remove((Map.Entry<?, ?>) obj);
        }
        return false;
    }

    public abstract /* bridge */ boolean remove(Map.Entry<?, ?> entry);

    public final boolean contains(Map.Entry<Object, Object> element) {
        kotlin.jvm.internal.j.checkNotNullParameter(element, "element");
        return containsEntry(element);
    }
}
