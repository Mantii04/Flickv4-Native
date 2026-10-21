package flix.com.vision.customviews;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import l.P;

/* loaded from: classes2.dex */
public class CustomImageView extends P {
    public CustomImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i2, int i7) {
        try {
            if (getDrawable() == null) {
                setMeasuredDimension(0, 0);
                return;
            }
            float intrinsicWidth = r0.getIntrinsicWidth() / r0.getIntrinsicHeight();
            if (intrinsicWidth >= View.MeasureSpec.getSize(i2) / View.MeasureSpec.getSize(i7)) {
                int size = View.MeasureSpec.getSize(i2);
                setMeasuredDimension(size, (int) (size / intrinsicWidth));
            } else {
                int size2 = View.MeasureSpec.getSize(i7);
                setMeasuredDimension((int) (size2 * intrinsicWidth), size2);
            }
        } catch (Exception unused) {
            super.onMeasure(i2, i7);
        }
    }
}
