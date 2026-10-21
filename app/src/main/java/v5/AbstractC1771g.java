package v5;

import java.util.AbstractList;
import java.util.List;

/* renamed from: v5.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1771g extends AbstractList implements List, I5.b {
    public abstract int getSize();

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ Object remove(int i2) {
        return removeAt(i2);
    }

    public abstract Object removeAt(int i2);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }
}
