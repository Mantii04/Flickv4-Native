package M;

import android.os.Build;
import android.view.DisplayCutout;

/* renamed from: M.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0182q {

    /* renamed from: a, reason: collision with root package name */
    public final DisplayCutout f2070a;

    public C0182q(DisplayCutout displayCutout) {
        this.f2070a = displayCutout;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0182q.class != obj.getClass()) {
            return false;
        }
        return L.c.equals(this.f2070a, ((C0182q) obj).f2070a);
    }

    public int getSafeInsetBottom() {
        if (Build.VERSION.SDK_INT >= 28) {
            return AbstractC0180p.c(this.f2070a);
        }
        return 0;
    }

    public int getSafeInsetLeft() {
        if (Build.VERSION.SDK_INT >= 28) {
            return AbstractC0180p.d(this.f2070a);
        }
        return 0;
    }

    public int getSafeInsetRight() {
        if (Build.VERSION.SDK_INT >= 28) {
            return AbstractC0180p.e(this.f2070a);
        }
        return 0;
    }

    public int getSafeInsetTop() {
        if (Build.VERSION.SDK_INT >= 28) {
            return AbstractC0180p.f(this.f2070a);
        }
        return 0;
    }

    public int hashCode() {
        int hashCode;
        hashCode = this.f2070a.hashCode();
        return hashCode;
    }

    public String toString() {
        return "DisplayCutoutCompat{" + this.f2070a + "}";
    }
}
