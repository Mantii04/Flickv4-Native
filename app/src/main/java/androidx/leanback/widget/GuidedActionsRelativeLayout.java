package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;

/* loaded from: classes.dex */
class GuidedActionsRelativeLayout extends RelativeLayout {

    /* renamed from: b, reason: collision with root package name */
    public final float f6546b;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6547e;

    public GuidedActionsRelativeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        this.f6547e = false;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        View findViewById;
        int size = View.MeasureSpec.getSize(i7);
        if (size > 0 && (findViewById = findViewById(androidx.leanback.R.id.guidedactions_sub_list)) != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) findViewById.getLayoutParams();
            if (marginLayoutParams.topMargin < 0 && !this.f6547e) {
                this.f6547e = true;
            }
            if (this.f6547e) {
                marginLayoutParams.topMargin = (int) ((this.f6546b * size) / 100.0f);
            }
        }
        super.onMeasure(i2, i7);
    }

    public GuidedActionsRelativeLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f6547e = false;
        this.f6546b = GuidanceStylingRelativeLayout.getKeyLinePercent(context);
    }
}
