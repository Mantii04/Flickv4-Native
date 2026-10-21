package kotlin.enums;

import java.io.Serializable;
import java.lang.Enum;
import kotlin.jvm.internal.j;
import v5.AbstractC1769e;
import v5.n;

/* loaded from: classes2.dex */
final class EnumEntriesList<T extends Enum<T>> extends AbstractC1769e implements B5.a, Serializable {

    /* renamed from: e, reason: collision with root package name */
    public final Enum[] f17443e;

    public EnumEntriesList(T[] entries) {
        j.checkNotNullParameter(entries, "entries");
        this.f17443e = entries;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Enum) {
            return contains((EnumEntriesList<T>) obj);
        }
        return false;
    }

    @Override // kotlin.collections.AbstractCollection
    public int getSize() {
        return this.f17443e.length;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // v5.AbstractC1769e, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Enum) {
            return indexOf((EnumEntriesList<T>) obj);
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // v5.AbstractC1769e, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Enum) {
            return lastIndexOf((EnumEntriesList<T>) obj);
        }
        return -1;
    }

    public boolean contains(T element) {
        j.checkNotNullParameter(element, "element");
        return ((Enum) n.getOrNull(this.f17443e, element.ordinal())) == element;
    }

    @Override // v5.AbstractC1769e, java.util.List
    public T get(int i2) {
        Enum[] enumArr = this.f17443e;
        AbstractC1769e.f20637b.checkElementIndex$kotlin_stdlib(i2, enumArr.length);
        return (T) enumArr[i2];
    }

    public int indexOf(T element) {
        j.checkNotNullParameter(element, "element");
        int ordinal = element.ordinal();
        if (((Enum) n.getOrNull(this.f17443e, ordinal)) == element) {
            return ordinal;
        }
        return -1;
    }

    public int lastIndexOf(T element) {
        j.checkNotNullParameter(element, "element");
        return indexOf((Object) element);
    }
}
