package l;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.R;

/* loaded from: classes.dex */
public class Y extends SeekBar {

    /* renamed from: b, reason: collision with root package name */
    public final Z f17817b;

    public Y(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.seekBarStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Z z6 = this.f17817b;
        Drawable drawable = z6.f17820e;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        Y y6 = z6.f17819d;
        if (drawable.setState(y6.getDrawableState())) {
            y6.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f17817b.f17820e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f17817b.d(canvas);
    }

    public Y(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a2.checkAppCompatTheme(this, getContext());
        Z z6 = new Z(this);
        this.f17817b = z6;
        z6.a(attributeSet, i2);
    }
}
