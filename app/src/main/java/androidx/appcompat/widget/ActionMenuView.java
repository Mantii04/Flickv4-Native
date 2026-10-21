package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.media3.common.util.Log;
import k.C1084p;
import k.InterfaceC1059D;
import k.InterfaceC1062G;
import k.InterfaceC1082n;
import k.InterfaceC1083o;
import k.s;
import l.AbstractC1135c1;
import l.C1186u;
import l.C1192w;
import l.C1195x;
import l.C1198y;
import l.InterfaceC1189v;
import l.InterfaceC1201z;
import l.z2;

/* loaded from: classes.dex */
public class ActionMenuView extends AbstractC1135c1 implements InterfaceC1083o, InterfaceC1062G {

    /* renamed from: A, reason: collision with root package name */
    public int f5015A;

    /* renamed from: B, reason: collision with root package name */
    public boolean f5016B;

    /* renamed from: C, reason: collision with root package name */
    public C1186u f5017C;

    /* renamed from: D, reason: collision with root package name */
    public InterfaceC1059D f5018D;

    /* renamed from: E, reason: collision with root package name */
    public InterfaceC1082n f5019E;

    /* renamed from: F, reason: collision with root package name */
    public boolean f5020F;

    /* renamed from: G, reason: collision with root package name */
    public int f5021G;

    /* renamed from: H, reason: collision with root package name */
    public final int f5022H;

    /* renamed from: I, reason: collision with root package name */
    public final int f5023I;

    /* renamed from: J, reason: collision with root package name */
    public InterfaceC1201z f5024J;

    /* renamed from: y, reason: collision with root package name */
    public C1084p f5025y;

    /* renamed from: z, reason: collision with root package name */
    public Context f5026z;

    public ActionMenuView(Context context) {
        this(context, null);
    }

    @Override // l.AbstractC1135c1, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C1195x;
    }

    public void dismissPopupMenus() {
        C1186u c1186u = this.f5017C;
        if (c1186u != null) {
            c1186u.dismissPopupMenus();
        }
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public C1195x generateOverflowButtonLayoutParams() {
        C1195x generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.f18047a = true;
        return generateDefaultLayoutParams;
    }

    public Menu getMenu() {
        if (this.f5025y == null) {
            Context context = getContext();
            C1084p c1084p = new C1084p(context);
            this.f5025y = c1084p;
            c1084p.setCallback(new C1198y(this));
            C1186u c1186u = new C1186u(context);
            this.f5017C = c1186u;
            c1186u.setReserveOverflow(true);
            C1186u c1186u2 = this.f5017C;
            InterfaceC1059D interfaceC1059D = this.f5018D;
            if (interfaceC1059D == null) {
                interfaceC1059D = new C1192w();
            }
            c1186u2.setCallback(interfaceC1059D);
            this.f5025y.addMenuPresenter(this.f5017C, this.f5026z);
            this.f5017C.setMenuView(this);
        }
        return this.f5025y;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        return this.f5017C.getOverflowIcon();
    }

    public int getPopupTheme() {
        return this.f5015A;
    }

    public int getWindowAnimations() {
        return 0;
    }

    public boolean hasSupportDividerBeforeChildAt(int i2) {
        boolean z6 = false;
        if (i2 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i2 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i2);
        if (i2 < getChildCount() && (childAt instanceof InterfaceC1189v)) {
            z6 = ((InterfaceC1189v) childAt).needsDividerAfter();
        }
        return (i2 <= 0 || !(childAt2 instanceof InterfaceC1189v)) ? z6 : ((InterfaceC1189v) childAt2).needsDividerBefore() | z6;
    }

    public boolean hideOverflowMenu() {
        C1186u c1186u = this.f5017C;
        return c1186u != null && c1186u.hideOverflowMenu();
    }

    @Override // k.InterfaceC1062G
    public void initialize(C1084p c1084p) {
        this.f5025y = c1084p;
    }

    @Override // k.InterfaceC1083o
    public boolean invokeItem(s sVar) {
        return this.f5025y.performItemAction(sVar, 0);
    }

    public boolean isOverflowMenuShowPending() {
        C1186u c1186u = this.f5017C;
        return c1186u != null && c1186u.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing() {
        C1186u c1186u = this.f5017C;
        return c1186u != null && c1186u.isOverflowMenuShowing();
    }

    public boolean isOverflowReserved() {
        return this.f5016B;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C1186u c1186u = this.f5017C;
        if (c1186u != null) {
            c1186u.updateMenuView(false);
            if (this.f5017C.isOverflowMenuShowing()) {
                this.f5017C.hideOverflowMenu();
                this.f5017C.showOverflowMenu();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dismissPopupMenus();
    }

    @Override // l.AbstractC1135c1, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        int width;
        int i10;
        if (!this.f5020F) {
            super.onLayout(z6, i2, i7, i8, i9);
            return;
        }
        int childCount = getChildCount();
        int i11 = (i9 - i7) / 2;
        int dividerWidth = getDividerWidth();
        int i12 = i8 - i2;
        int paddingRight = (i12 - getPaddingRight()) - getPaddingLeft();
        boolean isLayoutRtl = z2.isLayoutRtl(this);
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            if (childAt.getVisibility() != 8) {
                C1195x c1195x = (C1195x) childAt.getLayoutParams();
                if (c1195x.f18047a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (hasSupportDividerBeforeChildAt(i15)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (isLayoutRtl) {
                        i10 = getPaddingLeft() + ((LinearLayout.LayoutParams) c1195x).leftMargin;
                        width = i10 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) c1195x).rightMargin;
                        i10 = width - measuredWidth;
                    }
                    int i16 = i11 - (measuredHeight / 2);
                    childAt.layout(i10, i16, width, measuredHeight + i16);
                    paddingRight -= measuredWidth;
                    i13 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) c1195x).leftMargin) + ((LinearLayout.LayoutParams) c1195x).rightMargin;
                    hasSupportDividerBeforeChildAt(i15);
                    i14++;
                }
            }
        }
        if (childCount == 1 && i13 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i17 = (i12 / 2) - (measuredWidth2 / 2);
            int i18 = i11 - (measuredHeight2 / 2);
            childAt2.layout(i17, i18, measuredWidth2 + i17, measuredHeight2 + i18);
            return;
        }
        int i19 = i14 - (i13 ^ 1);
        int max = Math.max(0, i19 > 0 ? paddingRight / i19 : 0);
        if (isLayoutRtl) {
            int width2 = getWidth() - getPaddingRight();
            for (int i20 = 0; i20 < childCount; i20++) {
                View childAt3 = getChildAt(i20);
                C1195x c1195x2 = (C1195x) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !c1195x2.f18047a) {
                    int i21 = width2 - ((LinearLayout.LayoutParams) c1195x2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i22 = i11 - (measuredHeight3 / 2);
                    childAt3.layout(i21 - measuredWidth3, i22, i21, measuredHeight3 + i22);
                    width2 = i21 - ((measuredWidth3 + ((LinearLayout.LayoutParams) c1195x2).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i23 = 0; i23 < childCount; i23++) {
            View childAt4 = getChildAt(i23);
            C1195x c1195x3 = (C1195x) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !c1195x3.f18047a) {
                int i24 = paddingLeft + ((LinearLayout.LayoutParams) c1195x3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i25 = i11 - (measuredHeight4 / 2);
                childAt4.layout(i24, i25, i24 + measuredWidth4, measuredHeight4 + i25);
                paddingLeft = measuredWidth4 + ((LinearLayout.LayoutParams) c1195x3).rightMargin + max + i24;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v39 */
    @Override // l.AbstractC1135c1, android.view.View
    public void onMeasure(int i2, int i7) {
        int i8;
        int i9;
        ?? r11;
        int i10;
        int i11;
        C1084p c1084p;
        boolean z6 = this.f5020F;
        boolean z7 = View.MeasureSpec.getMode(i2) == 1073741824;
        this.f5020F = z7;
        if (z6 != z7) {
            this.f5021G = 0;
        }
        int size = View.MeasureSpec.getSize(i2);
        if (this.f5020F && (c1084p = this.f5025y) != null && size != this.f5021G) {
            this.f5021G = size;
            c1084p.onItemsChanged(true);
        }
        int childCount = getChildCount();
        if (!this.f5020F || childCount <= 0) {
            for (int i12 = 0; i12 < childCount; i12++) {
                C1195x c1195x = (C1195x) getChildAt(i12).getLayoutParams();
                ((LinearLayout.LayoutParams) c1195x).rightMargin = 0;
                ((LinearLayout.LayoutParams) c1195x).leftMargin = 0;
            }
            super.onMeasure(i2, i7);
            return;
        }
        int mode = View.MeasureSpec.getMode(i7);
        int size2 = View.MeasureSpec.getSize(i2);
        int size3 = View.MeasureSpec.getSize(i7);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i7, paddingBottom, -2);
        int i13 = size2 - paddingRight;
        int i14 = this.f5022H;
        int i15 = i13 / i14;
        int i16 = i13 % i14;
        if (i15 == 0) {
            setMeasuredDimension(i13, 0);
            return;
        }
        int i17 = (i16 / i15) + i14;
        int childCount2 = getChildCount();
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        boolean z8 = false;
        int i22 = 0;
        long j7 = 0;
        while (true) {
            i8 = this.f5023I;
            if (i21 >= childCount2) {
                break;
            }
            View childAt = getChildAt(i21);
            int i23 = size3;
            int i24 = paddingBottom;
            if (childAt.getVisibility() == 8) {
                i10 = i17;
            } else {
                boolean z9 = childAt instanceof ActionMenuItemView;
                i19++;
                if (z9) {
                    childAt.setPadding(i8, 0, i8, 0);
                }
                C1195x c1195x2 = (C1195x) childAt.getLayoutParams();
                c1195x2.f18052f = false;
                c1195x2.f18049c = 0;
                c1195x2.f18048b = 0;
                c1195x2.f18050d = false;
                ((LinearLayout.LayoutParams) c1195x2).leftMargin = 0;
                ((LinearLayout.LayoutParams) c1195x2).rightMargin = 0;
                c1195x2.f18051e = z9 && ((ActionMenuItemView) childAt).hasText();
                int i25 = c1195x2.f18047a ? 1 : i15;
                C1195x c1195x3 = (C1195x) childAt.getLayoutParams();
                int i26 = i15;
                i10 = i17;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - i24, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView = z9 ? (ActionMenuItemView) childAt : null;
                boolean z10 = actionMenuItemView != null && actionMenuItemView.hasText();
                boolean z11 = z10;
                if (i25 <= 0 || (z10 && i25 < 2)) {
                    i11 = 0;
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i10 * i25, Integer.MIN_VALUE), makeMeasureSpec);
                    int measuredWidth = childAt.getMeasuredWidth();
                    i11 = measuredWidth / i10;
                    if (measuredWidth % i10 != 0) {
                        i11++;
                    }
                    if (z11 && i11 < 2) {
                        i11 = 2;
                    }
                }
                c1195x3.f18050d = !c1195x3.f18047a && z11;
                c1195x3.f18048b = i11;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i11 * i10, 1073741824), makeMeasureSpec);
                i20 = Math.max(i20, i11);
                if (c1195x2.f18050d) {
                    i22++;
                }
                if (c1195x2.f18047a) {
                    z8 = true;
                }
                i15 = i26 - i11;
                i18 = Math.max(i18, childAt.getMeasuredHeight());
                if (i11 == 1) {
                    j7 |= 1 << i21;
                }
            }
            i21++;
            size3 = i23;
            paddingBottom = i24;
            i17 = i10;
        }
        int i27 = size3;
        int i28 = i15;
        int i29 = i17;
        boolean z12 = z8 && i19 == 2;
        int i30 = i28;
        boolean z13 = false;
        while (i22 > 0 && i30 > 0) {
            int i31 = Log.LOG_LEVEL_OFF;
            long j8 = 0;
            int i32 = 0;
            int i33 = 0;
            while (i33 < childCount2) {
                boolean z14 = z12;
                C1195x c1195x4 = (C1195x) getChildAt(i33).getLayoutParams();
                int i34 = i18;
                if (c1195x4.f18050d) {
                    int i35 = c1195x4.f18048b;
                    if (i35 < i31) {
                        j8 = 1 << i33;
                        i31 = i35;
                        i32 = 1;
                    } else if (i35 == i31) {
                        j8 |= 1 << i33;
                        i32++;
                    }
                }
                i33++;
                i18 = i34;
                z12 = z14;
            }
            boolean z15 = z12;
            i9 = i18;
            j7 |= j8;
            if (i32 > i30) {
                break;
            }
            int i36 = i31 + 1;
            int i37 = 0;
            while (i37 < childCount2) {
                View childAt2 = getChildAt(i37);
                C1195x c1195x5 = (C1195x) childAt2.getLayoutParams();
                boolean z16 = z8;
                long j9 = 1 << i37;
                if ((j8 & j9) != 0) {
                    if (z15 && c1195x5.f18051e) {
                        r11 = 1;
                        r11 = 1;
                        if (i30 == 1) {
                            childAt2.setPadding(i8 + i29, 0, i8, 0);
                        }
                    } else {
                        r11 = 1;
                    }
                    c1195x5.f18048b += r11;
                    c1195x5.f18052f = r11;
                    i30--;
                } else if (c1195x5.f18048b == i36) {
                    j7 |= j9;
                }
                i37++;
                z8 = z16;
            }
            i18 = i9;
            z12 = z15;
            z13 = true;
        }
        i9 = i18;
        boolean z17 = !z8 && i19 == 1;
        if (i30 > 0 && j7 != 0 && (i30 < i19 - 1 || z17 || i20 > 1)) {
            float bitCount = Long.bitCount(j7);
            if (!z17) {
                if ((j7 & 1) != 0 && !((C1195x) getChildAt(0).getLayoutParams()).f18051e) {
                    bitCount -= 0.5f;
                }
                int i38 = childCount2 - 1;
                if ((j7 & (1 << i38)) != 0 && !((C1195x) getChildAt(i38).getLayoutParams()).f18051e) {
                    bitCount -= 0.5f;
                }
            }
            int i39 = bitCount > 0.0f ? (int) ((i30 * i29) / bitCount) : 0;
            boolean z18 = z13;
            for (int i40 = 0; i40 < childCount2; i40++) {
                if ((j7 & (1 << i40)) != 0) {
                    View childAt3 = getChildAt(i40);
                    C1195x c1195x6 = (C1195x) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        c1195x6.f18049c = i39;
                        c1195x6.f18052f = true;
                        if (i40 == 0 && !c1195x6.f18051e) {
                            ((LinearLayout.LayoutParams) c1195x6).leftMargin = (-i39) / 2;
                        }
                        z18 = true;
                    } else if (c1195x6.f18047a) {
                        c1195x6.f18049c = i39;
                        c1195x6.f18052f = true;
                        ((LinearLayout.LayoutParams) c1195x6).rightMargin = (-i39) / 2;
                        z18 = true;
                    } else {
                        if (i40 != 0) {
                            ((LinearLayout.LayoutParams) c1195x6).leftMargin = i39 / 2;
                        }
                        if (i40 != childCount2 - 1) {
                            ((LinearLayout.LayoutParams) c1195x6).rightMargin = i39 / 2;
                        }
                    }
                }
            }
            z13 = z18;
        }
        if (z13) {
            for (int i41 = 0; i41 < childCount2; i41++) {
                View childAt4 = getChildAt(i41);
                C1195x c1195x7 = (C1195x) childAt4.getLayoutParams();
                if (c1195x7.f18052f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((c1195x7.f18048b * i29) + c1195x7.f18049c, 1073741824), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i13, mode != 1073741824 ? i9 : i27);
    }

    public C1084p peekMenu() {
        return this.f5025y;
    }

    public void setExpandedActionViewsExclusive(boolean z6) {
        this.f5017C.setExpandedActionViewsExclusive(z6);
    }

    public void setMenuCallbacks(InterfaceC1059D interfaceC1059D, InterfaceC1082n interfaceC1082n) {
        this.f5018D = interfaceC1059D;
        this.f5019E = interfaceC1082n;
    }

    public void setOnMenuItemClickListener(InterfaceC1201z interfaceC1201z) {
        this.f5024J = interfaceC1201z;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        this.f5017C.setOverflowIcon(drawable);
    }

    public void setOverflowReserved(boolean z6) {
        this.f5016B = z6;
    }

    public void setPopupTheme(int i2) {
        if (this.f5015A != i2) {
            this.f5015A = i2;
            if (i2 == 0) {
                this.f5026z = getContext();
            } else {
                this.f5026z = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    public void setPresenter(C1186u c1186u) {
        this.f5017C = c1186u;
        c1186u.setMenuView(this);
    }

    public boolean showOverflowMenu() {
        C1186u c1186u = this.f5017C;
        return c1186u != null && c1186u.showOverflowMenu();
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f3 = context.getResources().getDisplayMetrics().density;
        this.f5022H = (int) (56.0f * f3);
        this.f5023I = (int) (f3 * 4.0f);
        this.f5026z = context;
        this.f5015A = 0;
    }

    @Override // l.AbstractC1135c1, android.view.ViewGroup
    public C1195x generateDefaultLayoutParams() {
        C1195x c1195x = new C1195x(-2, -2);
        ((LinearLayout.LayoutParams) c1195x).gravity = 16;
        return c1195x;
    }

    @Override // l.AbstractC1135c1, android.view.ViewGroup
    public C1195x generateLayoutParams(AttributeSet attributeSet) {
        return new C1195x(getContext(), attributeSet);
    }

    @Override // l.AbstractC1135c1, android.view.ViewGroup
    public C1195x generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        C1195x c1195x;
        if (layoutParams != null) {
            if (layoutParams instanceof C1195x) {
                c1195x = new C1195x((C1195x) layoutParams);
            } else {
                c1195x = new C1195x(layoutParams);
            }
            if (((LinearLayout.LayoutParams) c1195x).gravity <= 0) {
                ((LinearLayout.LayoutParams) c1195x).gravity = 16;
            }
            return c1195x;
        }
        return generateDefaultLayoutParams();
    }
}
