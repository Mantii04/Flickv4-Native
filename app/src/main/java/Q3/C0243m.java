package Q3;

import java.util.Comparator;

/* renamed from: Q3.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0243m extends AbstractC0244n {

    /* renamed from: d, reason: collision with root package name */
    public final int f2900d;

    public C0243m(int i2) {
        this.f2900d = i2;
    }

    @Override // Q3.AbstractC0244n
    public <T> AbstractC0244n compare(T t6, T t7, Comparator<T> comparator) {
        return this;
    }

    @Override // Q3.AbstractC0244n
    public int result() {
        return this.f2900d;
    }

    @Override // Q3.AbstractC0244n
    public AbstractC0244n compare(int i2, int i7) {
        return this;
    }

    @Override // Q3.AbstractC0244n
    public AbstractC0244n compareFalseFirst(boolean z6, boolean z7) {
        return this;
    }

    @Override // Q3.AbstractC0244n
    public AbstractC0244n compareTrueFirst(boolean z6, boolean z7) {
        return this;
    }
}
