package androidx.appcompat.widget;

import M.AbstractC0181p0;
import M.C0;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.R;
import j.AbstractC1020c;
import k.C1084p;
import l.AbstractC1130b;
import l.C1186u;
import l.ViewOnClickListenerC1142f;
import l.e2;
import l.z2;

/* loaded from: classes.dex */
public class ActionBarContextView extends AbstractC1130b {

    /* renamed from: A, reason: collision with root package name */
    public final int f4975A;

    /* renamed from: B, reason: collision with root package name */
    public boolean f4976B;

    /* renamed from: C, reason: collision with root package name */
    public final int f4977C;

    /* renamed from: r, reason: collision with root package name */
    public CharSequence f4978r;

    /* renamed from: s, reason: collision with root package name */
    public CharSequence f4979s;

    /* renamed from: t, reason: collision with root package name */
    public View f4980t;

    /* renamed from: u, reason: collision with root package name */
    public View f4981u;

    /* renamed from: v, reason: collision with root package name */
    public View f4982v;

    /* renamed from: w, reason: collision with root package name */
    public LinearLayout f4983w;

    /* renamed from: x, reason: collision with root package name */
    public TextView f4984x;

    /* renamed from: y, reason: collision with root package name */
    public TextView f4985y;

    /* renamed from: z, reason: collision with root package name */
    public final int f4986z;

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public final void c() {
        if (this.f4983w == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f4983w = linearLayout;
            this.f4984x = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.f4985y = (TextView) this.f4983w.findViewById(R.id.action_bar_subtitle);
            int i2 = this.f4986z;
            if (i2 != 0) {
                this.f4984x.setTextAppearance(getContext(), i2);
            }
            int i7 = this.f4975A;
            if (i7 != 0) {
                this.f4985y.setTextAppearance(getContext(), i7);
            }
        }
        this.f4984x.setText(this.f4978r);
        this.f4985y.setText(this.f4979s);
        boolean isEmpty = TextUtils.isEmpty(this.f4978r);
        boolean isEmpty2 = TextUtils.isEmpty(this.f4979s);
        this.f4985y.setVisibility(!isEmpty2 ? 0 : 8);
        this.f4983w.setVisibility((isEmpty && isEmpty2) ? 8 : 0);
        if (this.f4983w.getParent() == null) {
            addView(this.f4983w);
        }
    }

    public void closeMode() {
        if (this.f4980t == null) {
            killMode();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // l.AbstractC1130b
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // l.AbstractC1130b
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f4979s;
    }

    public CharSequence getTitle() {
        return this.f4978r;
    }

    public void initForMode(AbstractC1020c abstractC1020c) {
        View view = this.f4980t;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.f4977C, (ViewGroup) this, false);
            this.f4980t = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.f4980t);
        }
        View findViewById = this.f4980t.findViewById(R.id.action_mode_close_button);
        this.f4981u = findViewById;
        findViewById.setOnClickListener(new ViewOnClickListenerC1142f(abstractC1020c));
        C1084p c1084p = (C1084p) abstractC1020c.getMenu();
        C1186u c1186u = this.f17851j;
        if (c1186u != null) {
            c1186u.dismissPopupMenus();
        }
        C1186u c1186u2 = new C1186u(getContext());
        this.f17851j = c1186u2;
        c1186u2.setReserveOverflow(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        c1084p.addMenuPresenter(this.f17851j, this.f17849e);
        ActionMenuView actionMenuView = (ActionMenuView) this.f17851j.getMenuView(this);
        this.f17850f = actionMenuView;
        AbstractC0181p0.setBackground(actionMenuView, null);
        addView(this.f17850f, layoutParams);
    }

    public boolean isTitleOptional() {
        return this.f4976B;
    }

    public void killMode() {
        removeAllViews();
        this.f4982v = null;
        this.f17850f = null;
        this.f17851j = null;
        View view = this.f4981u;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C1186u c1186u = this.f17851j;
        if (c1186u != null) {
            c1186u.hideOverflowMenu();
            this.f17851j.hideSubMenus();
        }
    }

    @Override // l.AbstractC1130b, android.view.View
    public /* bridge */ /* synthetic */ boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        boolean isLayoutRtl = z2.isLayoutRtl(this);
        int paddingRight = isLayoutRtl ? (i8 - i2) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i9 - i7) - getPaddingTop()) - getPaddingBottom();
        View view = this.f4980t;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f4980t.getLayoutParams();
            int i10 = isLayoutRtl ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i11 = isLayoutRtl ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int next = AbstractC1130b.next(paddingRight, i10, isLayoutRtl);
            paddingRight = AbstractC1130b.next(next + positionChild(this.f4980t, next, paddingTop, paddingTop2, isLayoutRtl), i11, isLayoutRtl);
        }
        int i12 = paddingRight;
        LinearLayout linearLayout = this.f4983w;
        if (linearLayout != null && this.f4982v == null && linearLayout.getVisibility() != 8) {
            i12 += positionChild(this.f4983w, i12, paddingTop, paddingTop2, isLayoutRtl);
        }
        View view2 = this.f4982v;
        if (view2 != null) {
            positionChild(view2, i12, paddingTop, paddingTop2, isLayoutRtl);
        }
        int paddingLeft = isLayoutRtl ? getPaddingLeft() : (i8 - i2) - getPaddingRight();
        ActionMenuView actionMenuView = this.f17850f;
        if (actionMenuView != null) {
            positionChild(actionMenuView, paddingLeft, paddingTop, paddingTop2, !isLayoutRtl);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i7) {
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
        }
        if (View.MeasureSpec.getMode(i7) == 0) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        int size = View.MeasureSpec.getSize(i2);
        int i8 = this.f17852m;
        if (i8 <= 0) {
            i8 = View.MeasureSpec.getSize(i7);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int i9 = i8 - paddingBottom;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9, Integer.MIN_VALUE);
        View view = this.f4980t;
        if (view != null) {
            int measureChildView = measureChildView(view, paddingLeft, makeMeasureSpec, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f4980t.getLayoutParams();
            paddingLeft = measureChildView - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f17850f;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = measureChildView(this.f17850f, paddingLeft, makeMeasureSpec, 0);
        }
        LinearLayout linearLayout = this.f4983w;
        if (linearLayout != null && this.f4982v == null) {
            if (this.f4976B) {
                this.f4983w.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                int measuredWidth = this.f4983w.getMeasuredWidth();
                boolean z6 = measuredWidth <= paddingLeft;
                if (z6) {
                    paddingLeft -= measuredWidth;
                }
                this.f4983w.setVisibility(z6 ? 0 : 8);
            } else {
                paddingLeft = measureChildView(linearLayout, paddingLeft, makeMeasureSpec, 0);
            }
        }
        View view2 = this.f4982v;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i10 = layoutParams.width;
            int i11 = i10 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i10 >= 0) {
                paddingLeft = Math.min(i10, paddingLeft);
            }
            int i12 = layoutParams.height;
            int i13 = i12 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i12 >= 0) {
                i9 = Math.min(i12, i9);
            }
            this.f4982v.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i11), View.MeasureSpec.makeMeasureSpec(i9, i13));
        }
        if (this.f17852m > 0) {
            setMeasuredDimension(size, i8);
            return;
        }
        int childCount = getChildCount();
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            int measuredHeight = getChildAt(i15).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i14) {
                i14 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i14);
    }

    @Override // l.AbstractC1130b, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // l.AbstractC1130b
    public void setContentHeight(int i2) {
        this.f17852m = i2;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f4982v;
        if (view2 != null) {
            removeView(view2);
        }
        this.f4982v = view;
        if (view != null && (linearLayout = this.f4983w) != null) {
            removeView(linearLayout);
            this.f4983w = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f4979s = charSequence;
        c();
    }

    public void setTitle(CharSequence charSequence) {
        this.f4978r = charSequence;
        c();
        AbstractC0181p0.setAccessibilityPaneTitle(this, charSequence);
    }

    public void setTitleOptional(boolean z6) {
        if (z6 != this.f4976B) {
            requestLayout();
        }
        this.f4976B = z6;
    }

    @Override // l.AbstractC1130b, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i2) {
        super.setVisibility(i2);
    }

    @Override // l.AbstractC1130b
    public /* bridge */ /* synthetic */ C0 setupAnimatorToVisibility(int i2, long j7) {
        return super.setupAnimatorToVisibility(i2, j7);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public boolean showOverflowMenu() {
        C1186u c1186u = this.f17851j;
        if (c1186u != null) {
            return c1186u.showOverflowMenu();
        }
        return false;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(context, attributeSet, R.styleable.ActionMode, i2, 0);
        AbstractC0181p0.setBackground(this, obtainStyledAttributes.getDrawable(R.styleable.ActionMode_background));
        this.f4986z = obtainStyledAttributes.getResourceId(R.styleable.ActionMode_titleTextStyle, 0);
        this.f4975A = obtainStyledAttributes.getResourceId(R.styleable.ActionMode_subtitleTextStyle, 0);
        this.f17852m = obtainStyledAttributes.getLayoutDimension(R.styleable.ActionMode_height, 0);
        this.f4977C = obtainStyledAttributes.getResourceId(R.styleable.ActionMode_closeItemLayout, R.layout.abc_action_mode_close_item_material);
        obtainStyledAttributes.recycle();
    }
}
