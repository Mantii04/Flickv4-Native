package com.google.android.material.internal;

import C.u;
import E.c;
import M.AbstractC0181p0;
import S.A;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import k.InterfaceC1061F;
import k.s;
import l.C1132b1;
import l.t2;
import x3.AbstractC1835i;
import x3.C1839m;

/* loaded from: classes2.dex */
public class NavigationMenuItemView extends AbstractC1835i implements InterfaceC1061F {

    /* renamed from: P, reason: collision with root package name */
    public static final int[] f12687P = {R.attr.state_checked};

    /* renamed from: E, reason: collision with root package name */
    public int f12688E;

    /* renamed from: F, reason: collision with root package name */
    public boolean f12689F;

    /* renamed from: G, reason: collision with root package name */
    public boolean f12690G;

    /* renamed from: H, reason: collision with root package name */
    public boolean f12691H;

    /* renamed from: I, reason: collision with root package name */
    public final CheckedTextView f12692I;

    /* renamed from: J, reason: collision with root package name */
    public FrameLayout f12693J;

    /* renamed from: K, reason: collision with root package name */
    public s f12694K;

    /* renamed from: L, reason: collision with root package name */
    public ColorStateList f12695L;

    /* renamed from: M, reason: collision with root package name */
    public boolean f12696M;

    /* renamed from: N, reason: collision with root package name */
    public Drawable f12697N;

    /* renamed from: O, reason: collision with root package name */
    public final C1839m f12698O;

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.f12693J == null) {
                this.f12693J = (FrameLayout) ((ViewStub) findViewById(com.google.android.material.R.id.design_menu_item_action_area_stub)).inflate();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            this.f12693J.removeAllViews();
            this.f12693J.addView(view);
        }
    }

    @Override // k.InterfaceC1061F
    public s getItemData() {
        return this.f12694K;
    }

    @Override // k.InterfaceC1061F
    public void initialize(s sVar, int i2) {
        StateListDrawable stateListDrawable;
        this.f12694K = sVar;
        if (sVar.getItemId() > 0) {
            setId(sVar.getItemId());
        }
        setVisibility(sVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(f12687P, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            AbstractC0181p0.setBackground(this, stateListDrawable);
        }
        setCheckable(sVar.isCheckable());
        setChecked(sVar.isChecked());
        setEnabled(sVar.isEnabled());
        setTitle(sVar.getTitle());
        setIcon(sVar.getIcon());
        setActionView(sVar.getActionView());
        setContentDescription(sVar.getContentDescription());
        t2.setTooltipText(this, sVar.getTooltipText());
        CharSequence title = this.f12694K.getTitle();
        CheckedTextView checkedTextView = this.f12692I;
        if (title == null && this.f12694K.getIcon() == null && this.f12694K.getActionView() != null) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.f12693J;
            if (frameLayout != null) {
                C1132b1 c1132b1 = (C1132b1) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) c1132b1).width = -1;
                this.f12693J.setLayoutParams(c1132b1);
                return;
            }
            return;
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.f12693J;
        if (frameLayout2 != null) {
            C1132b1 c1132b12 = (C1132b1) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) c1132b12).width = -2;
            this.f12693J.setLayoutParams(c1132b12);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        s sVar = this.f12694K;
        if (sVar != null && sVar.isCheckable() && this.f12694K.isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f12687P);
        }
        return onCreateDrawableState;
    }

    @Override // k.InterfaceC1061F
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void recycle() {
        FrameLayout frameLayout = this.f12693J;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.f12692I.setCompoundDrawables(null, null, null, null);
    }

    public void setCheckable(boolean z6) {
        refreshDrawableState();
        if (this.f12690G != z6) {
            this.f12690G = z6;
            this.f12698O.sendAccessibilityEvent(this.f12692I, 2048);
        }
    }

    public void setChecked(boolean z6) {
        refreshDrawableState();
        CheckedTextView checkedTextView = this.f12692I;
        checkedTextView.setChecked(z6);
        checkedTextView.setTypeface(checkedTextView.getTypeface(), (z6 && this.f12691H) ? 1 : 0);
    }

    public void setHorizontalPadding(int i2) {
        setPadding(i2, getPaddingTop(), i2, getPaddingBottom());
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.f12696M) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = c.wrap(drawable).mutate();
                c.setTintList(drawable, this.f12695L);
            }
            int i2 = this.f12688E;
            drawable.setBounds(0, 0, i2, i2);
        } else if (this.f12689F) {
            if (this.f12697N == null) {
                Drawable drawable2 = u.getDrawable(getResources(), com.google.android.material.R.drawable.navigation_empty_icon, getContext().getTheme());
                this.f12697N = drawable2;
                if (drawable2 != null) {
                    int i7 = this.f12688E;
                    drawable2.setBounds(0, 0, i7, i7);
                }
            }
            drawable = this.f12697N;
        }
        A.setCompoundDrawablesRelative(this.f12692I, drawable, null, null, null);
    }

    public void setIconPadding(int i2) {
        this.f12692I.setCompoundDrawablePadding(i2);
    }

    public void setIconSize(int i2) {
        this.f12688E = i2;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f12695L = colorStateList;
        this.f12696M = colorStateList != null;
        s sVar = this.f12694K;
        if (sVar != null) {
            setIcon(sVar.getIcon());
        }
    }

    public void setMaxLines(int i2) {
        this.f12692I.setMaxLines(i2);
    }

    public void setNeedsEmptyIcon(boolean z6) {
        this.f12689F = z6;
    }

    public void setTextAppearance(int i2) {
        A.setTextAppearance(this.f12692I, i2);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f12692I.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f12692I.setText(charSequence);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12691H = true;
        C1839m c1839m = new C1839m(this);
        this.f12698O = c1839m;
        setOrientation(0);
        LayoutInflater.from(context).inflate(com.google.android.material.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(com.google.android.material.R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(com.google.android.material.R.id.design_menu_item_text);
        this.f12692I = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        AbstractC0181p0.setAccessibilityDelegate(checkedTextView, c1839m);
    }

    public void initialize(s sVar, boolean z6) {
        this.f12691H = z6;
        initialize(sVar, 0);
    }
}
