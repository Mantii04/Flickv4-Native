package D;

import android.graphics.Insets;
import android.graphics.Rect;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: e, reason: collision with root package name */
    public static final c f807e = new c(0, 0, 0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final int f808a;

    /* renamed from: b, reason: collision with root package name */
    public final int f809b;

    /* renamed from: c, reason: collision with root package name */
    public final int f810c;

    /* renamed from: d, reason: collision with root package name */
    public final int f811d;

    public c(int i2, int i7, int i8, int i9) {
        this.f808a = i2;
        this.f809b = i7;
        this.f810c = i8;
        this.f811d = i9;
    }

    public static c max(c cVar, c cVar2) {
        return of(Math.max(cVar.f808a, cVar2.f808a), Math.max(cVar.f809b, cVar2.f809b), Math.max(cVar.f810c, cVar2.f810c), Math.max(cVar.f811d, cVar2.f811d));
    }

    public static c of(int i2, int i7, int i8, int i9) {
        return (i2 == 0 && i7 == 0 && i8 == 0 && i9 == 0) ? f807e : new c(i2, i7, i8, i9);
    }

    public static c toCompatInsets(Insets insets) {
        int i2;
        int i7;
        int i8;
        int i9;
        i2 = insets.left;
        i7 = insets.top;
        i8 = insets.right;
        i9 = insets.bottom;
        return of(i2, i7, i8, i9);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f811d == cVar.f811d && this.f808a == cVar.f808a && this.f810c == cVar.f810c && this.f809b == cVar.f809b;
    }

    public int hashCode() {
        return (((((this.f808a * 31) + this.f809b) * 31) + this.f810c) * 31) + this.f811d;
    }

    public Insets toPlatformInsets() {
        return b.a(this.f808a, this.f809b, this.f810c, this.f811d);
    }

    public String toString() {
        return "Insets{left=" + this.f808a + ", top=" + this.f809b + ", right=" + this.f810c + ", bottom=" + this.f811d + '}';
    }

    public static c of(Rect rect) {
        return of(rect.left, rect.top, rect.right, rect.bottom);
    }
}
