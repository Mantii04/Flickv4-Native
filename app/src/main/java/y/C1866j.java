package y;

import M.AbstractC0181p0;
import android.view.View;
import java.util.Comparator;

/* renamed from: y.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1866j implements Comparator {
    @Override // java.util.Comparator
    public int compare(View view, View view2) {
        float z6 = AbstractC0181p0.getZ(view);
        float z7 = AbstractC0181p0.getZ(view2);
        if (z6 > z7) {
            return -1;
        }
        return z6 < z7 ? 1 : 0;
    }
}
