package androidx.appcompat.widget;

import B4.RunnableC0057u;
import M.AbstractC0181p0;
import M.AbstractC0185s;
import M.AbstractC0193w;
import M.B;
import M.E;
import M.InterfaceC0195x;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.R;
import e.AbstractC0822a;
import f.AbstractC0876a;
import j.C1029l;
import java.util.ArrayList;
import java.util.Iterator;
import k.C1084p;
import k.InterfaceC1059D;
import k.InterfaceC1082n;
import k.s;
import l.C1186u;
import l.F1;
import l.M0;
import l.N;
import l.P;
import l.e2;
import l.f2;
import l.g2;
import l.h2;
import l.i2;
import l.j2;
import l.k2;
import l.l2;
import l.m2;
import l.o2;
import l.r2;
import l.t2;
import l.z2;

/* loaded from: classes.dex */
public class Toolbar extends ViewGroup implements InterfaceC0195x {

    /* renamed from: A, reason: collision with root package name */
    public int f5136A;

    /* renamed from: B, reason: collision with root package name */
    public int f5137B;

    /* renamed from: C, reason: collision with root package name */
    public F1 f5138C;

    /* renamed from: D, reason: collision with root package name */
    public int f5139D;

    /* renamed from: E, reason: collision with root package name */
    public int f5140E;

    /* renamed from: F, reason: collision with root package name */
    public final int f5141F;

    /* renamed from: G, reason: collision with root package name */
    public CharSequence f5142G;

    /* renamed from: H, reason: collision with root package name */
    public CharSequence f5143H;

    /* renamed from: I, reason: collision with root package name */
    public ColorStateList f5144I;

    /* renamed from: J, reason: collision with root package name */
    public ColorStateList f5145J;

    /* renamed from: K, reason: collision with root package name */
    public boolean f5146K;

    /* renamed from: L, reason: collision with root package name */
    public boolean f5147L;

    /* renamed from: M, reason: collision with root package name */
    public final ArrayList f5148M;

    /* renamed from: N, reason: collision with root package name */
    public final ArrayList f5149N;

    /* renamed from: O, reason: collision with root package name */
    public final int[] f5150O;

    /* renamed from: P, reason: collision with root package name */
    public final B f5151P;

    /* renamed from: Q, reason: collision with root package name */
    public ArrayList f5152Q;

    /* renamed from: R, reason: collision with root package name */
    public m2 f5153R;

    /* renamed from: S, reason: collision with root package name */
    public final f2 f5154S;

    /* renamed from: T, reason: collision with root package name */
    public r2 f5155T;

    /* renamed from: U, reason: collision with root package name */
    public C1186u f5156U;

    /* renamed from: V, reason: collision with root package name */
    public k2 f5157V;

    /* renamed from: W, reason: collision with root package name */
    public InterfaceC1059D f5158W;

    /* renamed from: a0, reason: collision with root package name */
    public InterfaceC1082n f5159a0;

    /* renamed from: b, reason: collision with root package name */
    public ActionMenuView f5160b;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f5161b0;

    /* renamed from: c0, reason: collision with root package name */
    public OnBackInvokedCallback f5162c0;

    /* renamed from: d0, reason: collision with root package name */
    public OnBackInvokedDispatcher f5163d0;

    /* renamed from: e, reason: collision with root package name */
    public AppCompatTextView f5164e;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f5165e0;

    /* renamed from: f, reason: collision with root package name */
    public AppCompatTextView f5166f;

    /* renamed from: f0, reason: collision with root package name */
    public final g2 f5167f0;

    /* renamed from: j, reason: collision with root package name */
    public N f5168j;

    /* renamed from: m, reason: collision with root package name */
    public P f5169m;

    /* renamed from: n, reason: collision with root package name */
    public final Drawable f5170n;

    /* renamed from: p, reason: collision with root package name */
    public final CharSequence f5171p;

    /* renamed from: q, reason: collision with root package name */
    public N f5172q;

    /* renamed from: r, reason: collision with root package name */
    public View f5173r;

    /* renamed from: s, reason: collision with root package name */
    public Context f5174s;

    /* renamed from: t, reason: collision with root package name */
    public int f5175t;

    /* renamed from: u, reason: collision with root package name */
    public int f5176u;

    /* renamed from: v, reason: collision with root package name */
    public int f5177v;

    /* renamed from: w, reason: collision with root package name */
    public final int f5178w;

    /* renamed from: x, reason: collision with root package name */
    public final int f5179x;

    /* renamed from: y, reason: collision with root package name */
    public int f5180y;

    /* renamed from: z, reason: collision with root package name */
    public int f5181z;

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i2 = 0; i2 < menu.size(); i2++) {
            arrayList.add(menu.getItem(i2));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new C1029l(getContext());
    }

    public static int i(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return AbstractC0193w.getMarginEnd(marginLayoutParams) + AbstractC0193w.getMarginStart(marginLayoutParams);
    }

    public static int j(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void a(int i2, ArrayList arrayList) {
        boolean z6 = AbstractC0181p0.getLayoutDirection(this) == 1;
        int childCount = getChildCount();
        int absoluteGravity = AbstractC0185s.getAbsoluteGravity(i2, AbstractC0181p0.getLayoutDirection(this));
        arrayList.clear();
        if (!z6) {
            for (int i7 = 0; i7 < childCount; i7++) {
                View childAt = getChildAt(i7);
                l2 l2Var = (l2) childAt.getLayoutParams();
                if (l2Var.f17947b == 0 && p(childAt)) {
                    int i8 = l2Var.f13686a;
                    int layoutDirection = AbstractC0181p0.getLayoutDirection(this);
                    int absoluteGravity2 = AbstractC0185s.getAbsoluteGravity(i8, layoutDirection) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = layoutDirection == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i9 = childCount - 1; i9 >= 0; i9--) {
            View childAt2 = getChildAt(i9);
            l2 l2Var2 = (l2) childAt2.getLayoutParams();
            if (l2Var2.f17947b == 0 && p(childAt2)) {
                int i10 = l2Var2.f13686a;
                int layoutDirection2 = AbstractC0181p0.getLayoutDirection(this);
                int absoluteGravity3 = AbstractC0185s.getAbsoluteGravity(i10, layoutDirection2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = layoutDirection2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    @Override // M.InterfaceC0195x
    public void addMenuProvider(E e3) {
        this.f5151P.addMenuProvider(e3);
    }

    public final void b(View view, boolean z6) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        l2 generateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (l2) layoutParams;
        generateDefaultLayoutParams.f17947b = 1;
        if (!z6 || this.f5173r == null) {
            addView(view, generateDefaultLayoutParams);
        } else {
            view.setLayoutParams(generateDefaultLayoutParams);
            this.f5149N.add(view);
        }
    }

    public final void c() {
        if (this.f5172q == null) {
            N n7 = new N(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.f5172q = n7;
            n7.setImageDrawable(this.f5170n);
            this.f5172q.setContentDescription(this.f5171p);
            l2 generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f13686a = (this.f5178w & 112) | 8388611;
            generateDefaultLayoutParams.f17947b = 2;
            this.f5172q.setLayoutParams(generateDefaultLayoutParams);
            this.f5172q.setOnClickListener(new i2(this));
        }
    }

    public boolean canShowOverflowMenu() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f5160b) != null && actionMenuView.isOverflowReserved();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof l2);
    }

    public void collapseActionView() {
        k2 k2Var = this.f5157V;
        s sVar = k2Var == null ? null : k2Var.f17915e;
        if (sVar != null) {
            sVar.collapseActionView();
        }
    }

    public final void d() {
        if (this.f5138C == null) {
            F1 f12 = new F1();
            f12.f17685a = 0;
            f12.f17686b = 0;
            f12.f17687c = Integer.MIN_VALUE;
            f12.f17688d = Integer.MIN_VALUE;
            f12.f17689e = 0;
            f12.f17690f = 0;
            f12.f17691g = false;
            f12.f17692h = false;
            this.f5138C = f12;
        }
    }

    public void dismissPopupMenus() {
        ActionMenuView actionMenuView = this.f5160b;
        if (actionMenuView != null) {
            actionMenuView.dismissPopupMenus();
        }
    }

    public final void e() {
        f();
        if (this.f5160b.peekMenu() == null) {
            C1084p c1084p = (C1084p) this.f5160b.getMenu();
            if (this.f5157V == null) {
                this.f5157V = new k2(this);
            }
            this.f5160b.setExpandedActionViewsExclusive(true);
            c1084p.addMenuPresenter(this.f5157V, this.f5174s);
            q();
        }
    }

    public final void f() {
        if (this.f5160b == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f5160b = actionMenuView;
            actionMenuView.setPopupTheme(this.f5175t);
            this.f5160b.setOnMenuItemClickListener(this.f5154S);
            this.f5160b.setMenuCallbacks(this.f5158W, new h2(this));
            l2 generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f13686a = (this.f5178w & 112) | 8388613;
            this.f5160b.setLayoutParams(generateDefaultLayoutParams);
            b(this.f5160b, false);
        }
    }

    public final void g() {
        if (this.f5168j == null) {
            this.f5168j = new N(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            l2 generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f13686a = (this.f5178w & 112) | 8388611;
            this.f5168j.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    public CharSequence getCollapseContentDescription() {
        N n7 = this.f5172q;
        if (n7 != null) {
            return n7.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        N n7 = this.f5172q;
        if (n7 != null) {
            return n7.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        F1 f12 = this.f5138C;
        if (f12 != null) {
            return f12.getEnd();
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i2 = this.f5140E;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        F1 f12 = this.f5138C;
        if (f12 != null) {
            return f12.getLeft();
        }
        return 0;
    }

    public int getContentInsetRight() {
        F1 f12 = this.f5138C;
        if (f12 != null) {
            return f12.getRight();
        }
        return 0;
    }

    public int getContentInsetStart() {
        F1 f12 = this.f5138C;
        if (f12 != null) {
            return f12.getStart();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i2 = this.f5139D;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        C1084p peekMenu;
        ActionMenuView actionMenuView = this.f5160b;
        return (actionMenuView == null || (peekMenu = actionMenuView.peekMenu()) == null || !peekMenu.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.f5140E, 0));
    }

    public int getCurrentContentInsetLeft() {
        return AbstractC0181p0.getLayoutDirection(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return AbstractC0181p0.getLayoutDirection(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f5139D, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        P p6 = this.f5169m;
        if (p6 != null) {
            return p6.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        P p6 = this.f5169m;
        if (p6 != null) {
            return p6.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.f5160b.getMenu();
    }

    public View getNavButtonView() {
        return this.f5168j;
    }

    public CharSequence getNavigationContentDescription() {
        N n7 = this.f5168j;
        if (n7 != null) {
            return n7.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        N n7 = this.f5168j;
        if (n7 != null) {
            return n7.getDrawable();
        }
        return null;
    }

    public C1186u getOuterActionMenuPresenter() {
        return this.f5156U;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.f5160b.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.f5174s;
    }

    public int getPopupTheme() {
        return this.f5175t;
    }

    public CharSequence getSubtitle() {
        return this.f5143H;
    }

    public final TextView getSubtitleTextView() {
        return this.f5166f;
    }

    public CharSequence getTitle() {
        return this.f5142G;
    }

    public int getTitleMarginBottom() {
        return this.f5137B;
    }

    public int getTitleMarginEnd() {
        return this.f5181z;
    }

    public int getTitleMarginStart() {
        return this.f5180y;
    }

    public int getTitleMarginTop() {
        return this.f5136A;
    }

    public final TextView getTitleTextView() {
        return this.f5164e;
    }

    public M0 getWrapper() {
        if (this.f5155T == null) {
            this.f5155T = new r2(this, true);
        }
        return this.f5155T;
    }

    public final int h(View view, int i2) {
        l2 l2Var = (l2) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i7 = i2 > 0 ? (measuredHeight - i2) / 2 : 0;
        int i8 = l2Var.f13686a & 112;
        if (i8 != 16 && i8 != 48 && i8 != 80) {
            i8 = this.f5141F & 112;
        }
        if (i8 == 48) {
            return getPaddingTop() - i7;
        }
        if (i8 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) l2Var).bottomMargin) - i7;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i9 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i10 = ((ViewGroup.MarginLayoutParams) l2Var).topMargin;
        if (i9 < i10) {
            i9 = i10;
        } else {
            int i11 = (((height - paddingBottom) - measuredHeight) - i9) - paddingTop;
            int i12 = ((ViewGroup.MarginLayoutParams) l2Var).bottomMargin;
            if (i11 < i12) {
                i9 = Math.max(0, i9 - (i12 - i11));
            }
        }
        return paddingTop + i9;
    }

    public boolean hasExpandedActionView() {
        k2 k2Var = this.f5157V;
        return (k2Var == null || k2Var.f17915e == null) ? false : true;
    }

    public boolean hideOverflowMenu() {
        ActionMenuView actionMenuView = this.f5160b;
        return actionMenuView != null && actionMenuView.hideOverflowMenu();
    }

    public void inflateMenu(int i2) {
        getMenuInflater().inflate(i2, getMenu());
    }

    public void invalidateMenu() {
        Iterator it = this.f5152Q.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        this.f5151P.onCreateMenu(menu, getMenuInflater());
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.f5152Q = currentMenuItems2;
    }

    public boolean isOverflowMenuShowPending() {
        ActionMenuView actionMenuView = this.f5160b;
        return actionMenuView != null && actionMenuView.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuView actionMenuView = this.f5160b;
        return actionMenuView != null && actionMenuView.isOverflowMenuShowing();
    }

    public final boolean k(View view) {
        return view.getParent() == this || this.f5149N.contains(view);
    }

    public final int l(View view, int i2, int i7, int[] iArr) {
        l2 l2Var = (l2) view.getLayoutParams();
        int i8 = ((ViewGroup.MarginLayoutParams) l2Var).leftMargin - iArr[0];
        int max = Math.max(0, i8) + i2;
        iArr[0] = Math.max(0, -i8);
        int h7 = h(view, i7);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, h7, max + measuredWidth, view.getMeasuredHeight() + h7);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) l2Var).rightMargin + max;
    }

    public final int m(View view, int i2, int i7, int[] iArr) {
        l2 l2Var = (l2) view.getLayoutParams();
        int i8 = ((ViewGroup.MarginLayoutParams) l2Var).rightMargin - iArr[1];
        int max = i2 - Math.max(0, i8);
        iArr[1] = Math.max(0, -i8);
        int h7 = h(view, i7);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, h7, max, view.getMeasuredHeight() + h7);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) l2Var).leftMargin);
    }

    public final int n(View view, int i2, int i7, int i8, int i9, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i10 = marginLayoutParams.leftMargin - iArr[0];
        int i11 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i11) + Math.max(0, i10);
        iArr[0] = Math.max(0, -i10);
        iArr[1] = Math.max(0, -i11);
        view.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + max + i7, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i8, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i9, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    public final void o(View view, int i2, int i7, int i8, int i9) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i7, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i8, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i9 >= 0) {
            if (mode != 0) {
                i9 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i9);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i9, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        q();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f5167f0);
        q();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f5147L = false;
        }
        if (!this.f5147L) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f5147L = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.f5147L = false;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x028d A[LOOP:0: B:39:0x028b->B:40:0x028d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x02a5 A[LOOP:1: B:43:0x02a3->B:44:0x02a5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02c6 A[LOOP:2: B:47:0x02c4->B:48:0x02c6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0315 A[LOOP:3: B:56:0x0313->B:57:0x0315, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0216  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 806
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i7) {
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean isLayoutRtl = z2.isLayoutRtl(this);
        int i15 = !isLayoutRtl ? 1 : 0;
        int i16 = 0;
        if (p(this.f5168j)) {
            o(this.f5168j, i2, 0, i7, this.f5179x);
            i8 = i(this.f5168j) + this.f5168j.getMeasuredWidth();
            i9 = Math.max(0, j(this.f5168j) + this.f5168j.getMeasuredHeight());
            i10 = View.combineMeasuredStates(0, this.f5168j.getMeasuredState());
        } else {
            i8 = 0;
            i9 = 0;
            i10 = 0;
        }
        if (p(this.f5172q)) {
            o(this.f5172q, i2, 0, i7, this.f5179x);
            i8 = i(this.f5172q) + this.f5172q.getMeasuredWidth();
            i9 = Math.max(i9, j(this.f5172q) + this.f5172q.getMeasuredHeight());
            i10 = View.combineMeasuredStates(i10, this.f5172q.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = Math.max(currentContentInsetStart, i8);
        int max2 = Math.max(0, currentContentInsetStart - i8);
        int[] iArr = this.f5150O;
        iArr[isLayoutRtl ? 1 : 0] = max2;
        if (p(this.f5160b)) {
            o(this.f5160b, i2, max, i7, this.f5179x);
            i11 = i(this.f5160b) + this.f5160b.getMeasuredWidth();
            i9 = Math.max(i9, j(this.f5160b) + this.f5160b.getMeasuredHeight());
            i10 = View.combineMeasuredStates(i10, this.f5160b.getMeasuredState());
        } else {
            i11 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max3 = max + Math.max(currentContentInsetEnd, i11);
        iArr[i15] = Math.max(0, currentContentInsetEnd - i11);
        if (p(this.f5173r)) {
            max3 += n(this.f5173r, i2, max3, i7, 0, iArr);
            i9 = Math.max(i9, j(this.f5173r) + this.f5173r.getMeasuredHeight());
            i10 = View.combineMeasuredStates(i10, this.f5173r.getMeasuredState());
        }
        if (p(this.f5169m)) {
            max3 += n(this.f5169m, i2, max3, i7, 0, iArr);
            i9 = Math.max(i9, j(this.f5169m) + this.f5169m.getMeasuredHeight());
            i10 = View.combineMeasuredStates(i10, this.f5169m.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            if (((l2) childAt.getLayoutParams()).f17947b == 0 && p(childAt)) {
                max3 += n(childAt, i2, max3, i7, 0, iArr);
                int max4 = Math.max(i9, j(childAt) + childAt.getMeasuredHeight());
                i10 = View.combineMeasuredStates(i10, childAt.getMeasuredState());
                i9 = max4;
            } else {
                max3 = max3;
            }
        }
        int i18 = max3;
        int i19 = this.f5136A + this.f5137B;
        int i20 = this.f5180y + this.f5181z;
        if (p(this.f5164e)) {
            n(this.f5164e, i2, i18 + i20, i7, i19, iArr);
            int i21 = i(this.f5164e) + this.f5164e.getMeasuredWidth();
            i12 = j(this.f5164e) + this.f5164e.getMeasuredHeight();
            i13 = View.combineMeasuredStates(i10, this.f5164e.getMeasuredState());
            i14 = i21;
        } else {
            i12 = 0;
            i13 = i10;
            i14 = 0;
        }
        if (p(this.f5166f)) {
            i14 = Math.max(i14, n(this.f5166f, i2, i18 + i20, i7, i19 + i12, iArr));
            i12 += j(this.f5166f) + this.f5166f.getMeasuredHeight();
            i13 = View.combineMeasuredStates(i13, this.f5166f.getMeasuredState());
        }
        int max5 = Math.max(i9, i12);
        int paddingRight = getPaddingRight() + getPaddingLeft() + i18 + i14;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + max5;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i2, (-16777216) & i13);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i7, i13 << 16);
        if (this.f5161b0) {
            int childCount2 = getChildCount();
            for (int i22 = 0; i22 < childCount2; i22++) {
                View childAt2 = getChildAt(i22);
                if (!p(childAt2) || childAt2.getMeasuredWidth() <= 0 || childAt2.getMeasuredHeight() <= 0) {
                }
            }
            setMeasuredDimension(resolveSizeAndState, i16);
        }
        i16 = resolveSizeAndState2;
        setMeasuredDimension(resolveSizeAndState, i16);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof o2)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        o2 o2Var = (o2) parcelable;
        super.onRestoreInstanceState(o2Var.getSuperState());
        ActionMenuView actionMenuView = this.f5160b;
        C1084p peekMenu = actionMenuView != null ? actionMenuView.peekMenu() : null;
        int i2 = o2Var.f17962f;
        if (i2 != 0 && this.f5157V != null && peekMenu != null && (findItem = peekMenu.findItem(i2)) != null) {
            findItem.expandActionView();
        }
        if (o2Var.f17963j) {
            g2 g2Var = this.f5167f0;
            removeCallbacks(g2Var);
            post(g2Var);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        d();
        this.f5138C.setDirection(i2 == 1);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        s sVar;
        o2 o2Var = new o2(super.onSaveInstanceState());
        k2 k2Var = this.f5157V;
        if (k2Var != null && (sVar = k2Var.f17915e) != null) {
            o2Var.f17962f = sVar.getItemId();
        }
        o2Var.f17963j = isOverflowMenuShowing();
        return o2Var;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f5146K = false;
        }
        if (!this.f5146K) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f5146K = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.f5146K = false;
        return true;
    }

    public final boolean p(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public final void q() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher a7 = j2.a(this);
            boolean z6 = hasExpandedActionView() && a7 != null && AbstractC0181p0.isAttachedToWindow(this) && this.f5165e0;
            if (z6 && this.f5163d0 == null) {
                if (this.f5162c0 == null) {
                    this.f5162c0 = j2.b(new RunnableC0057u(this, 1));
                }
                j2.c(a7, this.f5162c0);
                this.f5163d0 = a7;
                return;
            }
            if (z6 || (onBackInvokedDispatcher = this.f5163d0) == null) {
                return;
            }
            j2.d(onBackInvokedDispatcher, this.f5162c0);
            this.f5163d0 = null;
        }
    }

    @Override // M.InterfaceC0195x
    public void removeMenuProvider(E e3) {
        this.f5151P.removeMenuProvider(e3);
    }

    public void setBackInvokedCallbackEnabled(boolean z6) {
        if (this.f5165e0 != z6) {
            this.f5165e0 = z6;
            q();
        }
    }

    public void setCollapseContentDescription(int i2) {
        setCollapseContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setCollapseIcon(int i2) {
        setCollapseIcon(AbstractC0876a.getDrawable(getContext(), i2));
    }

    public void setCollapsible(boolean z6) {
        this.f5161b0 = z6;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i2) {
        if (i2 < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f5140E) {
            this.f5140E = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i2) {
        if (i2 < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f5139D) {
            this.f5139D = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetsRelative(int i2, int i7) {
        d();
        this.f5138C.setRelative(i2, i7);
    }

    public void setLogo(int i2) {
        setLogo(AbstractC0876a.getDrawable(getContext(), i2));
    }

    public void setLogoDescription(int i2) {
        setLogoDescription(getContext().getText(i2));
    }

    public void setMenu(C1084p c1084p, C1186u c1186u) {
        if (c1084p == null && this.f5160b == null) {
            return;
        }
        f();
        C1084p peekMenu = this.f5160b.peekMenu();
        if (peekMenu == c1084p) {
            return;
        }
        if (peekMenu != null) {
            peekMenu.removeMenuPresenter(this.f5156U);
            peekMenu.removeMenuPresenter(this.f5157V);
        }
        if (this.f5157V == null) {
            this.f5157V = new k2(this);
        }
        c1186u.setExpandedActionViewsExclusive(true);
        if (c1084p != null) {
            c1084p.addMenuPresenter(c1186u, this.f5174s);
            c1084p.addMenuPresenter(this.f5157V, this.f5174s);
        } else {
            c1186u.initForMenu(this.f5174s, null);
            this.f5157V.initForMenu(this.f5174s, null);
            c1186u.updateMenuView(true);
            this.f5157V.updateMenuView(true);
        }
        this.f5160b.setPopupTheme(this.f5175t);
        this.f5160b.setPresenter(c1186u);
        this.f5156U = c1186u;
        q();
    }

    public void setMenuCallbacks(InterfaceC1059D interfaceC1059D, InterfaceC1082n interfaceC1082n) {
        this.f5158W = interfaceC1059D;
        this.f5159a0 = interfaceC1082n;
        ActionMenuView actionMenuView = this.f5160b;
        if (actionMenuView != null) {
            actionMenuView.setMenuCallbacks(interfaceC1059D, interfaceC1082n);
        }
    }

    public void setNavigationContentDescription(int i2) {
        setNavigationContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setNavigationIcon(int i2) {
        setNavigationIcon(AbstractC0876a.getDrawable(getContext(), i2));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.f5168j.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(m2 m2Var) {
        this.f5153R = m2Var;
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.f5160b.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i2) {
        if (this.f5175t != i2) {
            this.f5175t = i2;
            if (i2 == 0) {
                this.f5174s = getContext();
            } else {
                this.f5174s = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    public void setSubtitle(int i2) {
        setSubtitle(getContext().getText(i2));
    }

    public void setSubtitleTextAppearance(Context context, int i2) {
        this.f5177v = i2;
        AppCompatTextView appCompatTextView = this.f5166f;
        if (appCompatTextView != null) {
            appCompatTextView.setTextAppearance(context, i2);
        }
    }

    public void setSubtitleTextColor(int i2) {
        setSubtitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setTitle(int i2) {
        setTitle(getContext().getText(i2));
    }

    public void setTitleMarginBottom(int i2) {
        this.f5137B = i2;
        requestLayout();
    }

    public void setTitleMarginEnd(int i2) {
        this.f5181z = i2;
        requestLayout();
    }

    public void setTitleMarginStart(int i2) {
        this.f5180y = i2;
        requestLayout();
    }

    public void setTitleMarginTop(int i2) {
        this.f5136A = i2;
        requestLayout();
    }

    public void setTitleTextAppearance(Context context, int i2) {
        this.f5176u = i2;
        AppCompatTextView appCompatTextView = this.f5164e;
        if (appCompatTextView != null) {
            appCompatTextView.setTextAppearance(context, i2);
        }
    }

    public void setTitleTextColor(int i2) {
        setTitleTextColor(ColorStateList.valueOf(i2));
    }

    public boolean showOverflowMenu() {
        ActionMenuView actionMenuView = this.f5160b;
        return actionMenuView != null && actionMenuView.showOverflowMenu();
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f5141F = 8388627;
        this.f5148M = new ArrayList();
        this.f5149N = new ArrayList();
        this.f5150O = new int[2];
        this.f5151P = new B(new RunnableC0057u(this, 2));
        this.f5152Q = new ArrayList();
        this.f5154S = new f2(this);
        this.f5167f0 = new g2(this);
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(getContext(), attributeSet, R.styleable.Toolbar, i2, 0);
        AbstractC0181p0.saveAttributeDataForStyleable(this, context, R.styleable.Toolbar, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i2, 0);
        this.f5176u = obtainStyledAttributes.getResourceId(R.styleable.Toolbar_titleTextAppearance, 0);
        this.f5177v = obtainStyledAttributes.getResourceId(R.styleable.Toolbar_subtitleTextAppearance, 0);
        this.f5141F = obtainStyledAttributes.getInteger(R.styleable.Toolbar_android_gravity, 8388627);
        this.f5178w = obtainStyledAttributes.getInteger(R.styleable.Toolbar_buttonGravity, 48);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_titleMargin, 0);
        dimensionPixelOffset = obtainStyledAttributes.hasValue(R.styleable.Toolbar_titleMargins) ? obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_titleMargins, dimensionPixelOffset) : dimensionPixelOffset;
        this.f5137B = dimensionPixelOffset;
        this.f5136A = dimensionPixelOffset;
        this.f5181z = dimensionPixelOffset;
        this.f5180y = dimensionPixelOffset;
        int dimensionPixelOffset2 = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginStart, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.f5180y = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginEnd, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.f5181z = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginTop, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.f5136A = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginBottom, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.f5137B = dimensionPixelOffset5;
        }
        this.f5179x = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Toolbar_maxButtonHeight, -1);
        int dimensionPixelOffset6 = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Toolbar_contentInsetLeft, 0);
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Toolbar_contentInsetRight, 0);
        d();
        this.f5138C.setAbsolute(dimensionPixelSize, dimensionPixelSize2);
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            this.f5138C.setRelative(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.f5139D = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.f5140E = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.f5170n = obtainStyledAttributes.getDrawable(R.styleable.Toolbar_collapseIcon);
        this.f5171p = obtainStyledAttributes.getText(R.styleable.Toolbar_collapseContentDescription);
        CharSequence text = obtainStyledAttributes.getText(R.styleable.Toolbar_title);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = obtainStyledAttributes.getText(R.styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.f5174s = getContext();
        setPopupTheme(obtainStyledAttributes.getResourceId(R.styleable.Toolbar_popupTheme, 0));
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.Toolbar_navigationIcon);
        if (drawable != null) {
            setNavigationIcon(drawable);
        }
        CharSequence text3 = obtainStyledAttributes.getText(R.styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable drawable2 = obtainStyledAttributes.getDrawable(R.styleable.Toolbar_logo);
        if (drawable2 != null) {
            setLogo(drawable2);
        }
        CharSequence text4 = obtainStyledAttributes.getText(R.styleable.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Toolbar_titleTextColor)) {
            setTitleTextColor(obtainStyledAttributes.getColorStateList(R.styleable.Toolbar_titleTextColor));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(obtainStyledAttributes.getColorStateList(R.styleable.Toolbar_subtitleTextColor));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.Toolbar_menu)) {
            inflateMenu(obtainStyledAttributes.getResourceId(R.styleable.Toolbar_menu, 0));
        }
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public l2 generateDefaultLayoutParams() {
        return new l2(-2, -2);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        N n7 = this.f5172q;
        if (n7 != null) {
            n7.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.f5172q.setImageDrawable(drawable);
        } else {
            N n7 = this.f5172q;
            if (n7 != null) {
                n7.setImageDrawable(this.f5170n);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.f5169m == null) {
                this.f5169m = new P(getContext());
            }
            if (!k(this.f5169m)) {
                b(this.f5169m, true);
            }
        } else {
            P p6 = this.f5169m;
            if (p6 != null && k(p6)) {
                removeView(this.f5169m);
                this.f5149N.remove(this.f5169m);
            }
        }
        P p7 = this.f5169m;
        if (p7 != null) {
            p7.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.f5169m == null) {
            this.f5169m = new P(getContext());
        }
        P p6 = this.f5169m;
        if (p6 != null) {
            p6.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        N n7 = this.f5168j;
        if (n7 != null) {
            n7.setContentDescription(charSequence);
            t2.setTooltipText(this.f5168j, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!k(this.f5168j)) {
                b(this.f5168j, true);
            }
        } else {
            N n7 = this.f5168j;
            if (n7 != null && k(n7)) {
                removeView(this.f5168j);
                this.f5149N.remove(this.f5168j);
            }
        }
        N n8 = this.f5168j;
        if (n8 != null) {
            n8.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            AppCompatTextView appCompatTextView = this.f5166f;
            if (appCompatTextView != null && k(appCompatTextView)) {
                removeView(this.f5166f);
                this.f5149N.remove(this.f5166f);
            }
        } else {
            if (this.f5166f == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context);
                this.f5166f = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.f5166f.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.f5177v;
                if (i2 != 0) {
                    this.f5166f.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.f5145J;
                if (colorStateList != null) {
                    this.f5166f.setTextColor(colorStateList);
                }
            }
            if (!k(this.f5166f)) {
                b(this.f5166f, true);
            }
        }
        AppCompatTextView appCompatTextView3 = this.f5166f;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.f5143H = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.f5145J = colorStateList;
        AppCompatTextView appCompatTextView = this.f5166f;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            AppCompatTextView appCompatTextView = this.f5164e;
            if (appCompatTextView != null && k(appCompatTextView)) {
                removeView(this.f5164e);
                this.f5149N.remove(this.f5164e);
            }
        } else {
            if (this.f5164e == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context);
                this.f5164e = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.f5164e.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.f5176u;
                if (i2 != 0) {
                    this.f5164e.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.f5144I;
                if (colorStateList != null) {
                    this.f5164e.setTextColor(colorStateList);
                }
            }
            if (!k(this.f5164e)) {
                b(this.f5164e, true);
            }
        }
        AppCompatTextView appCompatTextView3 = this.f5164e;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.f5142G = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f5144I = colorStateList;
        AppCompatTextView appCompatTextView = this.f5164e;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    @Override // android.view.ViewGroup
    public l2 generateLayoutParams(AttributeSet attributeSet) {
        return new l2(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public l2 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof l2) {
            return new l2((l2) layoutParams);
        }
        if (layoutParams instanceof AbstractC0822a) {
            return new l2((AbstractC0822a) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new l2((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new l2(layoutParams);
    }
}
