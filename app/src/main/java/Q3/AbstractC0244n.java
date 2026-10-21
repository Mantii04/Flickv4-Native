package Q3;

import java.util.Comparator;

/* renamed from: Q3.n, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0244n {

    /* renamed from: a, reason: collision with root package name */
    public static final C0242l f2903a = new C0242l();

    /* renamed from: b, reason: collision with root package name */
    public static final C0243m f2904b = new C0243m(-1);

    /* renamed from: c, reason: collision with root package name */
    public static final C0243m f2905c = new C0243m(1);

    public static AbstractC0244n start() {
        return f2903a;
    }

    public abstract AbstractC0244n compare(int i2, int i7);

    public abstract <T> AbstractC0244n compare(T t6, T t7, Comparator<T> comparator);

    public abstract AbstractC0244n compareFalseFirst(boolean z6, boolean z7);

    public abstract AbstractC0244n compareTrueFirst(boolean z6, boolean z7);

    public abstract int result();
}
