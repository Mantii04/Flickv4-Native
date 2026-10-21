package l;

import M.AbstractC0181p0;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R;
import androidx.appcompat.widget.ActionMenuView;

/* renamed from: l.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1130b extends ViewGroup {

    /* renamed from: b, reason: collision with root package name */
    public final C1127a f17848b;

    /* renamed from: e, reason: collision with root package name */
    public final Context f17849e;

    /* renamed from: f, reason: collision with root package name */
    public ActionMenuView f17850f;

    /* renamed from: j, reason: collision with root package name */
    public C1186u f17851j;

    /* renamed from: m, reason: collision with root package name */
    public int f17852m;

    /* renamed from: n, reason: collision with root package name */
    public M.C0 f17853n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f17854p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f17855q;

    public AbstractC1130b(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17848b = new C1127a(this);
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f17849e = context;
        } else {
            this.f17849e = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    public static int next(int i2, int i7, boolean z6) {
        return z6 ? i2 - i7 : i2 + i7;
    }

    public int getAnimatedVisibility() {
        return this.f17853n != null ? this.f17848b.f17828b : getVisibility();
    }

    public int getContentHeight() {
        return this.f17852m;
    }

    public int measureChildView(View view, int i2, int i7, int i8) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE), i7);
        return Math.max(0, (i2 - view.getMeasuredWidth()) - i8);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(R.styleable.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        C1186u c1186u = this.f17851j;
        if (c1186u != null) {
            c1186u.onConfigurationChanged(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f17855q = false;
        }
        if (!this.f17855q) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f17855q = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.f17855q = false;
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f17854p = false;
        }
        if (!this.f17854p) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f17854p = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.f17854p = false;
        return true;
    }

    public int positionChild(View view, int i2, int i7, int i8, boolean z6) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int c7 = b.c.c(i8, measuredHeight, 2, i7);
        if (z6) {
            view.layout(i2 - measuredWidth, c7, i2, measuredHeight + c7);
        } else {
            view.layout(i2, c7, i2 + measuredWidth, measuredHeight + c7);
        }
        return z6 ? -measuredWidth : measuredWidth;
    }

    public abstract void setContentHeight(int i2);

    @Override // android.view.View
    public void setVisibility(int i2) {
        if (i2 != getVisibility()) {
            M.C0 c02 = this.f17853n;
            if (c02 != null) {
                c02.cancel();
            }
            super.setVisibility(i2);
        }
    }

    public M.C0 setupAnimatorToVisibility(int i2, long j7) {
        M.C0 c02 = this.f17853n;
        if (c02 != null) {
            c02.cancel();
        }
        C1127a c1127a = this.f17848b;
        if (i2 != 0) {
            M.C0 alpha = AbstractC0181p0.animate(this).alpha(0.0f);
            alpha.setDuration(j7);
            alpha.setListener(c1127a.withFinalVisibility(alpha, i2));
            return alpha;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        M.C0 alpha2 = AbstractC0181p0.animate(this).alpha(1.0f);
        alpha2.setDuration(j7);
        alpha2.setListener(c1127a.withFinalVisibility(alpha2, i2));
        return alpha2;
    }
}
