package W;

import android.graphics.Rect;
import java.util.Comparator;

/* loaded from: classes.dex */
public final class g implements Comparator {

    /* renamed from: b, reason: collision with root package name */
    public final Rect f4046b = new Rect();

    /* renamed from: e, reason: collision with root package name */
    public final Rect f4047e = new Rect();

    /* renamed from: f, reason: collision with root package name */
    public final boolean f4048f;

    /* renamed from: j, reason: collision with root package name */
    public final e f4049j;

    public g(boolean z6, e eVar) {
        this.f4048f = z6;
        this.f4049j = eVar;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        e eVar = this.f4049j;
        Rect rect = this.f4046b;
        ((a) eVar).obtainBounds(obj, rect);
        Rect rect2 = this.f4047e;
        ((a) eVar).obtainBounds(obj2, rect2);
        int i2 = rect.top;
        int i7 = rect2.top;
        if (i2 < i7) {
            return -1;
        }
        if (i2 > i7) {
            return 1;
        }
        int i8 = rect.left;
        int i9 = rect2.left;
        boolean z6 = this.f4048f;
        if (i8 < i9) {
            return z6 ? 1 : -1;
        }
        if (i8 > i9) {
            return z6 ? -1 : 1;
        }
        int i10 = rect.bottom;
        int i11 = rect2.bottom;
        if (i10 < i11) {
            return -1;
        }
        if (i10 > i11) {
            return 1;
        }
        int i12 = rect.right;
        int i13 = rect2.right;
        if (i12 < i13) {
            return z6 ? 1 : -1;
        }
        if (i12 > i13) {
            return z6 ? -1 : 1;
        }
        return 0;
    }
}
