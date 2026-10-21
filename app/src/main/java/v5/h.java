package v5;

import java.util.AbstractSet;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class h extends AbstractSet implements Set, I5.a {
    public abstract int getSize();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return getSize();
    }
}
