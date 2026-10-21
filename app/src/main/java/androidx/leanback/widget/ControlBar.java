package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import java.util.ArrayList;

/* loaded from: classes.dex */
class ControlBar extends LinearLayout {

    /* renamed from: b, reason: collision with root package name */
    public int f6481b;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f6482e;

    public ControlBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6481b = -1;
        this.f6482e = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i7) {
        if (i2 != 33 && i2 != 130) {
            super.addFocusables(arrayList, i2, i7);
            return;
        }
        int i8 = this.f6481b;
        if (i8 >= 0 && i8 < getChildCount()) {
            arrayList.add(getChildAt(this.f6481b));
        } else if (getChildCount() > 0) {
            arrayList.add(getChildAt(this.f6482e ? getChildCount() / 2 : 0));
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        super.onMeasure(i2, i7);
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (getChildCount() > 0) {
            int i7 = this.f6481b;
            if (getChildAt((i7 < 0 || i7 >= getChildCount()) ? this.f6482e ? getChildCount() / 2 : 0 : this.f6481b).requestFocus(i2, rect)) {
                return true;
            }
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        this.f6481b = indexOfChild(view);
    }
}
