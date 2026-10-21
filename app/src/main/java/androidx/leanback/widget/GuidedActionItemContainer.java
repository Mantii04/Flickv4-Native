package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
class GuidedActionItemContainer extends AbstractC0520o0 {

    /* renamed from: b, reason: collision with root package name */
    public final boolean f6545b;

    public GuidedActionItemContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i2) {
        if (this.f6545b || !z1.isDescendant(this, view)) {
            return super.focusSearch(view, i2);
        }
        View focusSearch = super.focusSearch(view, i2);
        if (z1.isDescendant(this, focusSearch)) {
            return focusSearch;
        }
        return null;
    }

    public GuidedActionItemContainer(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f6545b = true;
    }
}
