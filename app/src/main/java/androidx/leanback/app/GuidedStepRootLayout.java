package androidx.leanback.app;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.leanback.widget.z1;

/* loaded from: classes.dex */
class GuidedStepRootLayout extends LinearLayout {
    public GuidedStepRootLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i2) {
        View focusSearch = super.focusSearch(view, i2);
        if ((i2 != 17 && i2 != 66) || z1.isDescendant(this, focusSearch)) {
            return focusSearch;
        }
        getLayoutDirection();
        return view;
    }
}
