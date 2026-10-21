package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
public final class I0 extends LinearLayout {

    /* renamed from: b, reason: collision with root package name */
    public final ViewGroup f6566b;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f6567e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f6568f;

    public I0(Context context) {
        this(context, null, 0);
    }

    public void addHeaderView(View view) {
        ViewGroup viewGroup = this.f6566b;
        if (viewGroup.indexOfChild(view) < 0) {
            viewGroup.addView(view, 0);
        }
    }

    public void addRowView(View view) {
        addView(view);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f6567e;
        if (drawable != null) {
            if (this.f6568f) {
                this.f6568f = false;
                drawable.setBounds(0, 0, getWidth(), getHeight());
            }
            this.f6567e.draw(canvas);
        }
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f6567e;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i7, int i8, int i9) {
        super.onSizeChanged(i2, i7, i8, i9);
        this.f6568f = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        this.f6567e = drawable;
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setForegroundColor(int i2) {
        Drawable drawable = this.f6567e;
        if (!(drawable instanceof ColorDrawable)) {
            setForeground(new ColorDrawable(i2));
        } else {
            ((ColorDrawable) drawable.mutate()).setColor(i2);
            invalidate();
        }
    }

    public void showHeader(boolean z6) {
        this.f6566b.setVisibility(z6 ? 0 : 8);
    }

    public I0(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f6568f = true;
        setOrientation(1);
        LayoutInflater.from(context).inflate(androidx.leanback.R.layout.lb_row_container, this);
        this.f6566b = (ViewGroup) findViewById(androidx.leanback.R.id.lb_row_container_header_dock);
        setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
    }
}
