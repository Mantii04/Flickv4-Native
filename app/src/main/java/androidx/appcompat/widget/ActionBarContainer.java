package androidx.appcompat.widget;

import M.AbstractC0181p0;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.R;
import l.AbstractC1139e;
import l.C1136d;
import l.G1;

/* loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: b, reason: collision with root package name */
    public boolean f4966b;

    /* renamed from: e, reason: collision with root package name */
    public View f4967e;

    /* renamed from: f, reason: collision with root package name */
    public View f4968f;

    /* renamed from: j, reason: collision with root package name */
    public Drawable f4969j;

    /* renamed from: m, reason: collision with root package name */
    public Drawable f4970m;

    /* renamed from: n, reason: collision with root package name */
    public Drawable f4971n;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f4972p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f4973q;

    /* renamed from: r, reason: collision with root package name */
    public final int f4974r;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        AbstractC0181p0.setBackground(this, new C1136d(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBar);
        this.f4969j = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_background);
        this.f4970m = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_backgroundStacked);
        this.f4974r = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionBar_height, -1);
        boolean z6 = true;
        if (getId() == R.id.split_action_bar) {
            this.f4972p = true;
            this.f4971n = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        if (!this.f4972p ? this.f4969j != null || this.f4970m != null : this.f4971n != null) {
            z6 = false;
        }
        setWillNotDraw(z6);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f4969j;
        if (drawable != null && drawable.isStateful()) {
            this.f4969j.setState(getDrawableState());
        }
        Drawable drawable2 = this.f4970m;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f4970m.setState(getDrawableState());
        }
        Drawable drawable3 = this.f4971n;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f4971n.setState(getDrawableState());
    }

    public View getTabContainer() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f4969j;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f4970m;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f4971n;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f4967e = findViewById(R.id.action_bar);
        this.f4968f = findViewById(R.id.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f4966b || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        boolean z7 = true;
        if (this.f4972p) {
            Drawable drawable = this.f4971n;
            if (drawable != null) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z7 = false;
            }
        } else {
            if (this.f4969j == null) {
                z7 = false;
            } else if (this.f4967e.getVisibility() == 0) {
                this.f4969j.setBounds(this.f4967e.getLeft(), this.f4967e.getTop(), this.f4967e.getRight(), this.f4967e.getBottom());
            } else {
                View view = this.f4968f;
                if (view == null || view.getVisibility() != 0) {
                    this.f4969j.setBounds(0, 0, 0, 0);
                } else {
                    this.f4969j.setBounds(this.f4968f.getLeft(), this.f4968f.getTop(), this.f4968f.getRight(), this.f4968f.getBottom());
                }
            }
            this.f4973q = false;
        }
        if (z7) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        int i8;
        if (this.f4967e == null && View.MeasureSpec.getMode(i7) == Integer.MIN_VALUE && (i8 = this.f4974r) >= 0) {
            i7 = View.MeasureSpec.makeMeasureSpec(Math.min(i8, View.MeasureSpec.getSize(i7)), Integer.MIN_VALUE);
        }
        super.onMeasure(i2, i7);
        if (this.f4967e == null) {
            return;
        }
        View.MeasureSpec.getMode(i7);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f4969j;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f4969j);
        }
        this.f4969j = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f4967e;
            if (view != null) {
                this.f4969j.setBounds(view.getLeft(), this.f4967e.getTop(), this.f4967e.getRight(), this.f4967e.getBottom());
            }
        }
        boolean z6 = false;
        if (!this.f4972p ? !(this.f4969j != null || this.f4970m != null) : this.f4971n == null) {
            z6 = true;
        }
        setWillNotDraw(z6);
        invalidate();
        AbstractC1139e.invalidateOutline(this);
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f4971n;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f4971n);
        }
        this.f4971n = drawable;
        boolean z6 = this.f4972p;
        boolean z7 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (z6 && (drawable2 = this.f4971n) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!z6 ? !(this.f4969j != null || this.f4970m != null) : this.f4971n == null) {
            z7 = true;
        }
        setWillNotDraw(z7);
        invalidate();
        AbstractC1139e.invalidateOutline(this);
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2 = this.f4970m;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f4970m);
        }
        this.f4970m = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f4973q && this.f4970m != null) {
                throw null;
            }
        }
        boolean z6 = false;
        if (!this.f4972p ? !(this.f4969j != null || this.f4970m != null) : this.f4971n == null) {
            z6 = true;
        }
        setWillNotDraw(z6);
        invalidate();
        AbstractC1139e.invalidateOutline(this);
    }

    public void setTransitioning(boolean z6) {
        this.f4966b = z6;
        setDescendantFocusability(z6 ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z6 = i2 == 0;
        Drawable drawable = this.f4969j;
        if (drawable != null) {
            drawable.setVisible(z6, false);
        }
        Drawable drawable2 = this.f4970m;
        if (drawable2 != null) {
            drawable2.setVisible(z6, false);
        }
        Drawable drawable3 = this.f4971n;
        if (drawable3 != null) {
            drawable3.setVisible(z6, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        Drawable drawable2 = this.f4969j;
        boolean z6 = this.f4972p;
        if (drawable == drawable2 && !z6) {
            return true;
        }
        if (drawable == this.f4970m && this.f4973q) {
            return true;
        }
        return (drawable == this.f4971n && z6) || super.verifyDrawable(drawable);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i2) {
        if (i2 != 0) {
            return super.startActionModeForChild(view, callback, i2);
        }
        return null;
    }

    public void setTabContainer(G1 g12) {
    }
}
