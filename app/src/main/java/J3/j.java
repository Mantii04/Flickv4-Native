package J3;

import M.AbstractC0181p0;
import M.AbstractC0193w;
import M.Q;
import N.m;
import N.n;
import S.A;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.tabs.TabLayout;
import f.AbstractC0876a;
import i3.AbstractC1009e;
import i3.C1005a;
import l.t2;
import x3.T;

/* loaded from: classes2.dex */
public final class j extends LinearLayout {

    /* renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ int f1527u = 0;

    /* renamed from: b, reason: collision with root package name */
    public h f1528b;

    /* renamed from: e, reason: collision with root package name */
    public TextView f1529e;

    /* renamed from: f, reason: collision with root package name */
    public ImageView f1530f;

    /* renamed from: j, reason: collision with root package name */
    public View f1531j;

    /* renamed from: m, reason: collision with root package name */
    public C1005a f1532m;

    /* renamed from: n, reason: collision with root package name */
    public View f1533n;

    /* renamed from: p, reason: collision with root package name */
    public TextView f1534p;

    /* renamed from: q, reason: collision with root package name */
    public ImageView f1535q;

    /* renamed from: r, reason: collision with root package name */
    public Drawable f1536r;

    /* renamed from: s, reason: collision with root package name */
    public int f1537s;

    /* renamed from: t, reason: collision with root package name */
    public final /* synthetic */ TabLayout f1538t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(TabLayout tabLayout, Context context) {
        super(context);
        this.f1538t = tabLayout;
        this.f1537s = 2;
        d(context);
        AbstractC0181p0.setPaddingRelative(this, tabLayout.f12844m, tabLayout.f12845n, tabLayout.f12846p, tabLayout.f12847q);
        setGravity(17);
        setOrientation(!tabLayout.f12829M ? 1 : 0);
        setClickable(true);
        AbstractC0181p0.setPointerIcon(this, Q.getSystemIcon(getContext(), 1002));
    }

    private C1005a getBadge() {
        return this.f1532m;
    }

    private C1005a getOrCreateBadge() {
        if (this.f1532m == null) {
            this.f1532m = C1005a.create(getContext());
        }
        b();
        C1005a c1005a = this.f1532m;
        if (c1005a != null) {
            return c1005a;
        }
        throw new IllegalStateException("Unable to create badge");
    }

    public final void a() {
        if (this.f1532m != null) {
            setClipChildren(true);
            setClipToPadding(true);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(true);
                viewGroup.setClipToPadding(true);
            }
            View view = this.f1531j;
            if (view != null) {
                AbstractC1009e.detachBadgeDrawable(this.f1532m, view);
                this.f1531j = null;
            }
        }
    }

    public final void b() {
        h hVar;
        h hVar2;
        if (this.f1532m != null) {
            if (this.f1533n != null) {
                a();
                return;
            }
            if (this.f1530f != null && (hVar2 = this.f1528b) != null && hVar2.getIcon() != null) {
                View view = this.f1531j;
                ImageView imageView = this.f1530f;
                if (view == imageView) {
                    c(imageView);
                    return;
                }
                a();
                ImageView imageView2 = this.f1530f;
                if (this.f1532m == null || imageView2 == null) {
                    return;
                }
                setClipChildren(false);
                setClipToPadding(false);
                ViewGroup viewGroup = (ViewGroup) getParent();
                if (viewGroup != null) {
                    viewGroup.setClipChildren(false);
                    viewGroup.setClipToPadding(false);
                }
                AbstractC1009e.attachBadgeDrawable(this.f1532m, imageView2, null);
                this.f1531j = imageView2;
                return;
            }
            if (this.f1529e == null || (hVar = this.f1528b) == null || hVar.getTabLabelVisibility() != 1) {
                a();
                return;
            }
            View view2 = this.f1531j;
            TextView textView = this.f1529e;
            if (view2 == textView) {
                c(textView);
                return;
            }
            a();
            TextView textView2 = this.f1529e;
            if (this.f1532m == null || textView2 == null) {
                return;
            }
            setClipChildren(false);
            setClipToPadding(false);
            ViewGroup viewGroup2 = (ViewGroup) getParent();
            if (viewGroup2 != null) {
                viewGroup2.setClipChildren(false);
                viewGroup2.setClipToPadding(false);
            }
            AbstractC1009e.attachBadgeDrawable(this.f1532m, textView2, null);
            this.f1531j = textView2;
        }
    }

    public final void c(View view) {
        C1005a c1005a = this.f1532m;
        if (c1005a == null || view != this.f1531j) {
            return;
        }
        AbstractC1009e.setBadgeDrawableBounds(c1005a, view, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.graphics.drawable.RippleDrawable] */
    public final void d(Context context) {
        TabLayout tabLayout = this.f1538t;
        int i2 = tabLayout.f12819C;
        if (i2 != 0) {
            Drawable drawable = AbstractC0876a.getDrawable(context, i2);
            this.f1536r = drawable;
            if (drawable != null && drawable.isStateful()) {
                this.f1536r.setState(getDrawableState());
            }
        } else {
            this.f1536r = null;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(0);
        if (tabLayout.f12853w != null) {
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setCornerRadius(1.0E-5f);
            gradientDrawable2.setColor(-1);
            ColorStateList convertToRippleDrawableColor = D3.a.convertToRippleDrawableColor(tabLayout.f12853w);
            boolean z6 = tabLayout.f12833Q;
            if (z6) {
                gradientDrawable = null;
            }
            gradientDrawable = new RippleDrawable(convertToRippleDrawableColor, gradientDrawable, z6 ? null : gradientDrawable2);
        }
        AbstractC0181p0.setBackground(this, gradientDrawable);
        tabLayout.invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1536r;
        if ((drawable == null || !drawable.isStateful()) ? false : this.f1536r.setState(drawableState)) {
            invalidate();
            this.f1538t.invalidate();
        }
    }

    public final void e() {
        int i2;
        ViewParent parent;
        h hVar = this.f1528b;
        View customView = hVar != null ? hVar.getCustomView() : null;
        if (customView != null) {
            ViewParent parent2 = customView.getParent();
            if (parent2 != this) {
                if (parent2 != null) {
                    ((ViewGroup) parent2).removeView(customView);
                }
                View view = this.f1533n;
                if (view != null && (parent = view.getParent()) != null) {
                    ((ViewGroup) parent).removeView(this.f1533n);
                }
                addView(customView);
            }
            this.f1533n = customView;
            TextView textView = this.f1529e;
            if (textView != null) {
                textView.setVisibility(8);
            }
            ImageView imageView = this.f1530f;
            if (imageView != null) {
                imageView.setVisibility(8);
                this.f1530f.setImageDrawable(null);
            }
            TextView textView2 = (TextView) customView.findViewById(R.id.text1);
            this.f1534p = textView2;
            if (textView2 != null) {
                this.f1537s = A.getMaxLines(textView2);
            }
            this.f1535q = (ImageView) customView.findViewById(R.id.icon);
        } else {
            View view2 = this.f1533n;
            if (view2 != null) {
                removeView(view2);
                this.f1533n = null;
            }
            this.f1534p = null;
            this.f1535q = null;
        }
        if (this.f1533n == null) {
            if (this.f1530f == null) {
                ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(com.google.android.material.R.layout.design_layout_tab_icon, (ViewGroup) this, false);
                this.f1530f = imageView2;
                addView(imageView2, 0);
            }
            if (this.f1529e == null) {
                TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(com.google.android.material.R.layout.design_layout_tab_text, (ViewGroup) this, false);
                this.f1529e = textView3;
                addView(textView3);
                this.f1537s = A.getMaxLines(this.f1529e);
            }
            TextView textView4 = this.f1529e;
            TabLayout tabLayout = this.f1538t;
            A.setTextAppearance(textView4, tabLayout.f12848r);
            if (!isSelected() || (i2 = tabLayout.f12850t) == -1) {
                A.setTextAppearance(this.f1529e, tabLayout.f12849s);
            } else {
                A.setTextAppearance(this.f1529e, i2);
            }
            ColorStateList colorStateList = tabLayout.f12851u;
            if (colorStateList != null) {
                this.f1529e.setTextColor(colorStateList);
            }
            f(this.f1529e, this.f1530f, true);
            b();
            ImageView imageView3 = this.f1530f;
            if (imageView3 != null) {
                imageView3.addOnLayoutChangeListener(new i(this, imageView3));
            }
            TextView textView5 = this.f1529e;
            if (textView5 != null) {
                textView5.addOnLayoutChangeListener(new i(this, textView5));
            }
        } else {
            TextView textView6 = this.f1534p;
            if (textView6 != null || this.f1535q != null) {
                f(textView6, this.f1535q, false);
            }
        }
        if (hVar == null || TextUtils.isEmpty(hVar.f1520c)) {
            return;
        }
        setContentDescription(hVar.f1520c);
    }

    public final void f(TextView textView, ImageView imageView, boolean z6) {
        boolean z7;
        h hVar = this.f1528b;
        Drawable mutate = (hVar == null || hVar.getIcon() == null) ? null : E.c.wrap(this.f1528b.getIcon()).mutate();
        TabLayout tabLayout = this.f1538t;
        if (mutate != null) {
            E.c.setTintList(mutate, tabLayout.f12852v);
            PorterDuff.Mode mode = tabLayout.f12856z;
            if (mode != null) {
                E.c.setTintMode(mutate, mode);
            }
        }
        h hVar2 = this.f1528b;
        CharSequence text = hVar2 != null ? hVar2.getText() : null;
        if (imageView != null) {
            if (mutate != null) {
                imageView.setImageDrawable(mutate);
                imageView.setVisibility(0);
                setVisibility(0);
            } else {
                imageView.setVisibility(8);
                imageView.setImageDrawable(null);
            }
        }
        boolean isEmpty = TextUtils.isEmpty(text);
        if (textView != null) {
            if (isEmpty) {
                z7 = false;
            } else {
                this.f1528b.getClass();
                z7 = true;
            }
            textView.setText(!isEmpty ? text : null);
            textView.setVisibility(z7 ? 0 : 8);
            if (!isEmpty) {
                setVisibility(0);
            }
        } else {
            z7 = false;
        }
        if (z6 && imageView != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
            int dpToPx = (z7 && imageView.getVisibility() == 0) ? (int) T.dpToPx(getContext(), 8) : 0;
            if (tabLayout.f12829M) {
                if (dpToPx != AbstractC0193w.getMarginEnd(marginLayoutParams)) {
                    AbstractC0193w.setMarginEnd(marginLayoutParams, dpToPx);
                    marginLayoutParams.bottomMargin = 0;
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            } else if (dpToPx != marginLayoutParams.bottomMargin) {
                marginLayoutParams.bottomMargin = dpToPx;
                AbstractC0193w.setMarginEnd(marginLayoutParams, 0);
                imageView.setLayoutParams(marginLayoutParams);
                imageView.requestLayout();
            }
        }
        h hVar3 = this.f1528b;
        CharSequence charSequence = hVar3 != null ? hVar3.f1520c : null;
        if (Build.VERSION.SDK_INT > 23) {
            if (isEmpty) {
                text = charSequence;
            }
            t2.setTooltipText(this, text);
        }
    }

    public int getContentHeight() {
        View[] viewArr = {this.f1529e, this.f1530f, this.f1533n};
        int i2 = 0;
        int i7 = 0;
        boolean z6 = false;
        for (int i8 = 0; i8 < 3; i8++) {
            View view = viewArr[i8];
            if (view != null && view.getVisibility() == 0) {
                i7 = z6 ? Math.min(i7, view.getTop()) : view.getTop();
                i2 = z6 ? Math.max(i2, view.getBottom()) : view.getBottom();
                z6 = true;
            }
        }
        return i2 - i7;
    }

    public int getContentWidth() {
        View[] viewArr = {this.f1529e, this.f1530f, this.f1533n};
        int i2 = 0;
        int i7 = 0;
        boolean z6 = false;
        for (int i8 = 0; i8 < 3; i8++) {
            View view = viewArr[i8];
            if (view != null && view.getVisibility() == 0) {
                i7 = z6 ? Math.min(i7, view.getLeft()) : view.getLeft();
                i2 = z6 ? Math.max(i2, view.getRight()) : view.getRight();
                z6 = true;
            }
        }
        return i2 - i7;
    }

    public h getTab() {
        return this.f1528b;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        n wrap = n.wrap(accessibilityNodeInfo);
        C1005a c1005a = this.f1532m;
        if (c1005a != null && c1005a.isVisible()) {
            wrap.setContentDescription(this.f1532m.getContentDescription());
        }
        wrap.setCollectionItemInfo(m.obtain(0, 1, this.f1528b.getPosition(), 1, false, isSelected()));
        if (isSelected()) {
            wrap.setClickable(false);
            wrap.removeAction(N.h.f2123g);
        }
        wrap.setRoleDescription(getResources().getString(com.google.android.material.R.string.item_view_role_description));
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        TabLayout tabLayout = this.f1538t;
        int tabMaxWidth = tabLayout.getTabMaxWidth();
        if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
            i2 = View.MeasureSpec.makeMeasureSpec(tabLayout.f12820D, Integer.MIN_VALUE);
        }
        super.onMeasure(i2, i7);
        if (this.f1529e != null) {
            float f3 = tabLayout.f12817A;
            int i8 = this.f1537s;
            ImageView imageView = this.f1530f;
            if (imageView == null || imageView.getVisibility() != 0) {
                TextView textView = this.f1529e;
                if (textView != null && textView.getLineCount() > 1) {
                    f3 = tabLayout.f12818B;
                }
            } else {
                i8 = 1;
            }
            float textSize = this.f1529e.getTextSize();
            int lineCount = this.f1529e.getLineCount();
            int maxLines = A.getMaxLines(this.f1529e);
            if (f3 != textSize || (maxLines >= 0 && i8 != maxLines)) {
                if (tabLayout.f12828L == 1 && f3 > textSize && lineCount == 1) {
                    Layout layout = this.f1529e.getLayout();
                    if (layout == null) {
                        return;
                    }
                    if ((f3 / layout.getPaint().getTextSize()) * layout.getLineWidth(0) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) {
                        return;
                    }
                }
                this.f1529e.setTextSize(0, f3);
                this.f1529e.setMaxLines(i8);
                super.onMeasure(i2, i7);
            }
        }
    }

    @Override // android.view.View
    public boolean performClick() {
        boolean performClick = super.performClick();
        if (this.f1528b == null) {
            return performClick;
        }
        if (!performClick) {
            playSoundEffect(0);
        }
        this.f1528b.select();
        return true;
    }

    @Override // android.view.View
    public void setSelected(boolean z6) {
        isSelected();
        super.setSelected(z6);
        TextView textView = this.f1529e;
        if (textView != null) {
            textView.setSelected(z6);
        }
        ImageView imageView = this.f1530f;
        if (imageView != null) {
            imageView.setSelected(z6);
        }
        View view = this.f1533n;
        if (view != null) {
            view.setSelected(z6);
        }
    }

    public void setTab(h hVar) {
        if (hVar != this.f1528b) {
            this.f1528b = hVar;
            e();
            h hVar2 = this.f1528b;
            setSelected(hVar2 != null && hVar2.isSelected());
        }
    }
}
