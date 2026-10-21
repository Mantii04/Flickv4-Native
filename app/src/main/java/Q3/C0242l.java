package Q3;

import java.util.Comparator;

/* renamed from: Q3.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0242l extends AbstractC0244n {
    public static AbstractC0244n a(int i2) {
        return i2 < 0 ? AbstractC0244n.f2904b : i2 > 0 ? AbstractC0244n.f2905c : AbstractC0244n.f2903a;
    }

    @Override // Q3.AbstractC0244n
    public <T> AbstractC0244n compare(T t6, T t7, Comparator<T> comparator) {
        return a(comparator.compare(t6, t7));
    }

    @Override // Q3.AbstractC0244n
    public AbstractC0244n compareFalseFirst(boolean z6, boolean z7) {
        return a(Boolean.compare(z6, z7));
    }

    @Override // Q3.AbstractC0244n
    public AbstractC0244n compareTrueFirst(boolean z6, boolean z7) {
        return a(Boolean.compare(z7, z6));
    }

    @Override // Q3.AbstractC0244n
    public int result() {
        return 0;
    }

    @Override // Q3.AbstractC0244n
    public AbstractC0244n compare(int i2, int i7) {
        return a(Integer.compare(i2, i7));
    }
}
