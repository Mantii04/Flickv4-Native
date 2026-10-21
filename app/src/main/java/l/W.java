package l;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import androidx.appcompat.R;

/* loaded from: classes.dex */
public final class W extends RatingBar {

    /* renamed from: b, reason: collision with root package name */
    public final U f17791b;

    public W(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.ratingBarStyle);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public synchronized void onMeasure(int i2, int i7) {
        super.onMeasure(i2, i7);
        Bitmap bitmap = this.f17791b.f17773b;
        if (bitmap != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmap.getWidth() * getNumStars(), i2, 0), getMeasuredHeight());
        }
    }

    public W(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a2.checkAppCompatTheme(this, getContext());
        U u6 = new U(this);
        this.f17791b = u6;
        u6.a(attributeSet, i2);
    }
}
