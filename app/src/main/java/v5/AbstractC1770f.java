package v5;

import java.util.AbstractCollection;
import java.util.Collection;

/* renamed from: v5.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1770f extends AbstractCollection implements Collection, I5.a {
    public abstract int getSize();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }
}
