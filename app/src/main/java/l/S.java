package l;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.R;

/* loaded from: classes.dex */
public final class S extends PopupWindow {
    public S(Context context, AttributeSet attributeSet, int i2, int i7) {
        super(context, attributeSet, i2, i7);
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(context, attributeSet, R.styleable.PopupWindow, i2, i7);
        if (obtainStyledAttributes.hasValue(R.styleable.PopupWindow_overlapAnchor)) {
            S.v.setOverlapAnchor(this, obtainStyledAttributes.getBoolean(R.styleable.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(obtainStyledAttributes.getDrawable(R.styleable.PopupWindow_android_popupBackground));
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i2, int i7) {
        super.showAsDropDown(view, i2, i7);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i2, int i7, int i8, int i9) {
        super.update(view, i2, i7, i8, i9);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i2, int i7, int i8) {
        super.showAsDropDown(view, i2, i7, i8);
    }
}
