package m1;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Comparator;

/* renamed from: m1.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1309v implements Comparator {
    @Override // java.util.Comparator
    public int compare(C1311x c1311x, C1311x c1311x2) {
        RecyclerView recyclerView = c1311x.f18523d;
        if ((recyclerView == null) != (c1311x2.f18523d == null)) {
            return recyclerView == null ? 1 : -1;
        }
        boolean z6 = c1311x.f18520a;
        if (z6 != c1311x2.f18520a) {
            return z6 ? -1 : 1;
        }
        int i2 = c1311x2.f18521b - c1311x.f18521b;
        if (i2 != 0) {
            return i2;
        }
        int i7 = c1311x.f18522c - c1311x2.f18522c;
        if (i7 != 0) {
            return i7;
        }
        return 0;
    }
}
