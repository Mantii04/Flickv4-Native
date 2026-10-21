package x3;

import android.view.View;
import java.util.Comparator;

/* loaded from: classes2.dex */
public final class M implements Comparator {
    @Override // java.util.Comparator
    public int compare(View view, View view2) {
        return view.getTop() - view2.getTop();
    }
}
