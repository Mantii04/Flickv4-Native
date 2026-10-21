package u5;

import org.apache.commons.lang3.ClassUtils;

/* renamed from: u5.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1705d implements Comparable {

    /* renamed from: m, reason: collision with root package name */
    public static final C1705d f20323m;

    /* renamed from: b, reason: collision with root package name */
    public final int f20324b;

    /* renamed from: e, reason: collision with root package name */
    public final int f20325e;

    /* renamed from: f, reason: collision with root package name */
    public final int f20326f;

    /* renamed from: j, reason: collision with root package name */
    public final int f20327j;

    static {
        new C1704c(null);
        f20323m = AbstractC1706e.get();
    }

    public C1705d(int i2, int i7, int i8) {
        this.f20324b = i2;
        this.f20325e = i7;
        this.f20326f = i8;
        if (i2 >= 0 && i2 < 256 && i7 >= 0 && i7 < 256 && i8 >= 0 && i8 < 256) {
            this.f20327j = (i2 << 16) + (i7 << 8) + i8;
            return;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i2 + ClassUtils.PACKAGE_SEPARATOR_CHAR + i7 + ClassUtils.PACKAGE_SEPARATOR_CHAR + i8).toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        C1705d c1705d = obj instanceof C1705d ? (C1705d) obj : null;
        return c1705d != null && this.f20327j == c1705d.f20327j;
    }

    public int hashCode() {
        return this.f20327j;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f20324b);
        sb.append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
        sb.append(this.f20325e);
        sb.append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
        sb.append(this.f20326f);
        return sb.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(C1705d other) {
        kotlin.jvm.internal.j.checkNotNullParameter(other, "other");
        return this.f20327j - other.f20327j;
    }
}
