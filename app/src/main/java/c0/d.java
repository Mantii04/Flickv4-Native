package c0;

import M.C0152b;
import N.n;
import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;

/* loaded from: classes.dex */
public final class d extends C0152b {
    @Override // M.C0152b
    public void onInitializeAccessibilityNodeInfo(View view, n nVar) {
        super.onInitializeAccessibilityNodeInfo(view, nVar);
        if (DrawerLayout.h(view)) {
            return;
        }
        nVar.setParent(null);
    }
}
