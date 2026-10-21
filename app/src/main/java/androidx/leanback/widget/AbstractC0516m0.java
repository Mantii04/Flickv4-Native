package androidx.leanback.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.view.View;
import android.view.ViewGroup;
import j0.C1037b;
import java.util.HashMap;

/* renamed from: androidx.leanback.widget.m0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0516m0 extends N0 {

    /* renamed from: n, reason: collision with root package name */
    public static int f6855n;

    /* renamed from: o, reason: collision with root package name */
    public static int f6856o;

    /* renamed from: p, reason: collision with root package name */
    public static int f6857p;

    /* renamed from: d, reason: collision with root package name */
    public final int f6858d;

    /* renamed from: e, reason: collision with root package name */
    public final int f6859e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f6860f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f6861g;

    /* renamed from: h, reason: collision with root package name */
    public int f6862h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f6863i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f6864j;

    /* renamed from: k, reason: collision with root package name */
    public final HashMap f6865k;

    /* renamed from: l, reason: collision with root package name */
    public m1 f6866l;

    /* renamed from: m, reason: collision with root package name */
    public C0500e0 f6867m;

    public AbstractC0516m0(int i2) {
        this(i2, false);
    }

    public static void b(C0514l0 c0514l0, View view, boolean z6) {
        if (view == null) {
            if (!z6 || c0514l0.getOnItemViewSelectedListener() == null) {
                return;
            }
            ((flix.com.vision.activities.leanback.fragment.k) c0514l0.getOnItemViewSelectedListener()).onItemSelected((A0) null, (Object) null, (M0) c0514l0, (Object) c0514l0.f6598d);
            return;
        }
        if (c0514l0.f6601g) {
            C0492b0 c0492b0 = (C0492b0) c0514l0.f6845n.getChildViewHolder(view);
            if (!z6 || c0514l0.getOnItemViewSelectedListener() == null) {
                return;
            }
            ((flix.com.vision.activities.leanback.fragment.k) c0514l0.getOnItemViewSelectedListener()).onItemSelected(c0492b0.f6769v, c0492b0.f6770w, (M0) c0514l0, (Object) c0514l0.f6598d);
        }
    }

    public static void d(C0514l0 c0514l0) {
        if (c0514l0.f6602h && c0514l0.f6601g) {
            HorizontalGridView horizontalGridView = c0514l0.f6845n;
            C0492b0 c0492b0 = (C0492b0) horizontalGridView.findViewHolderForPosition(horizontalGridView.getSelectedPosition());
            b(c0514l0, c0492b0 == null ? null : c0492b0.f18217a, false);
        }
    }

    public void applySelectLevelToChild(C0514l0 c0514l0, View view) {
        m1 m1Var = this.f6866l;
        if (m1Var == null || !m1Var.needsOverlay()) {
            return;
        }
        this.f6866l.setOverlayColor(view, c0514l0.f6605k.getPaint().getColor());
    }

    public final boolean areChildRoundedCornersEnabled() {
        return this.f6863i;
    }

    public final void c(C0514l0 c0514l0) {
        int i2;
        if (c0514l0.isExpanded()) {
            J0 headerViewHolder = c0514l0.getHeaderViewHolder();
            r1 = (c0514l0.isSelected() ? f6856o : c0514l0.f6847p) - (headerViewHolder != null ? getHeaderPresenter() != null ? getHeaderPresenter().getSpaceUnderBaseline(headerViewHolder) : headerViewHolder.f6460a.getPaddingBottom() : 0);
            i2 = f6857p;
        } else {
            boolean isSelected = c0514l0.isSelected();
            int i7 = c0514l0.f6848q;
            if (isSelected) {
                i2 = f6855n;
                r1 = i2 - i7;
            } else {
                i2 = i7;
            }
        }
        c0514l0.getGridView().setPadding(c0514l0.f6849r, r1, c0514l0.f6850s, i2);
    }

    @Override // androidx.leanback.widget.N0
    public M0 createRowViewHolder(ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        if (f6855n == 0) {
            f6855n = context.getResources().getDimensionPixelSize(androidx.leanback.R.dimen.lb_browse_selected_row_top_padding);
            f6856o = context.getResources().getDimensionPixelSize(androidx.leanback.R.dimen.lb_browse_expanded_selected_row_top_padding);
            f6857p = context.getResources().getDimensionPixelSize(androidx.leanback.R.dimen.lb_browse_expanded_row_no_hovercard_bottom_padding);
        }
        C0518n0 c0518n0 = new C0518n0(viewGroup.getContext());
        HorizontalGridView gridView = c0518n0.getGridView();
        if (this.f6862h < 0) {
            TypedArray obtainStyledAttributes = gridView.getContext().obtainStyledAttributes(androidx.leanback.R.styleable.LeanbackTheme);
            this.f6862h = (int) obtainStyledAttributes.getDimension(androidx.leanback.R.styleable.LeanbackTheme_browseRowsFadingEdgeLength, 0.0f);
            obtainStyledAttributes.recycle();
        }
        gridView.setFadingLeftEdgeLength(this.f6862h);
        return new C0514l0(c0518n0, c0518n0.getGridView(), this);
    }

    public l1 createShadowOverlayOptions() {
        return l1.f6851a;
    }

    @Override // androidx.leanback.widget.N0
    public void dispatchItemSelectedListener(M0 m02, boolean z6) {
        C0514l0 c0514l0 = (C0514l0) m02;
        HorizontalGridView horizontalGridView = c0514l0.f6845n;
        C0492b0 c0492b0 = (C0492b0) horizontalGridView.findViewHolderForPosition(horizontalGridView.getSelectedPosition());
        if (c0492b0 == null) {
            super.dispatchItemSelectedListener(m02, z6);
        } else {
            if (!z6 || m02.getOnItemViewSelectedListener() == null) {
                return;
            }
            ((flix.com.vision.activities.leanback.fragment.k) m02.getOnItemViewSelectedListener()).onItemSelected(c0492b0.getViewHolder(), c0492b0.f6770w, (M0) c0514l0, (Object) c0514l0.getRow());
        }
    }

    public final void enableChildRoundedCorners(boolean z6) {
        this.f6863i = z6;
    }

    @Override // androidx.leanback.widget.N0
    public void freeze(M0 m02, boolean z6) {
        C0514l0 c0514l0 = (C0514l0) m02;
        c0514l0.f6845n.setScrollEnabled(!z6);
        c0514l0.f6845n.setAnimateChildLayout(!z6);
    }

    public int getExpandedRowHeight() {
        return 0;
    }

    public int getRecycledPoolSize(C0 c02) {
        HashMap hashMap = this.f6865k;
        if (hashMap.containsKey(c02)) {
            return ((Integer) hashMap.get(c02)).intValue();
        }
        return 24;
    }

    public int getRowHeight() {
        return 0;
    }

    public final boolean getShadowEnabled() {
        return this.f6861g;
    }

    @Override // androidx.leanback.widget.N0
    public void initializeRowViewHolder(M0 m02) {
        super.initializeRowViewHolder(m02);
        C0514l0 c0514l0 = (C0514l0) m02;
        Context context = m02.f6460a.getContext();
        if (this.f6866l == null) {
            m1 build = new k1().needsOverlay(isUsingDefaultListSelectEffect() && getSelectEffectEnabled()).needsShadow(isUsingDefaultShadow() && getShadowEnabled()).needsRoundedCorner(isUsingOutlineClipping(context) && areChildRoundedCornersEnabled()).preferZOrder(isUsingZOrder(context)).keepForegroundDrawable(this.f6864j).options(createShadowOverlayOptions()).build(context);
            this.f6866l = build;
            if (build.needsWrapper()) {
                this.f6867m = new C0500e0(this.f6866l);
            }
        }
        C0510j0 c0510j0 = new C0510j0(this, c0514l0);
        c0514l0.f6846o = c0510j0;
        c0510j0.setWrapper(this.f6867m);
        m1 m1Var = this.f6866l;
        HorizontalGridView horizontalGridView = c0514l0.f6845n;
        m1Var.prepareParentForShadow(horizontalGridView);
        B.setupBrowseItemFocusHighlight(c0514l0.f6846o, this.f6859e, this.f6860f);
        horizontalGridView.setFocusDrawingOrderEnabled(this.f6866l.getShadowType() != 3);
        horizontalGridView.setOnChildSelectedListener(new C0504g0(this, c0514l0));
        horizontalGridView.setOnUnhandledKeyListener(new C0506h0(c0514l0));
        horizontalGridView.setNumRows(this.f6858d);
    }

    public boolean isUsingDefaultListSelectEffect() {
        return true;
    }

    @Override // androidx.leanback.widget.N0
    public final boolean isUsingDefaultSelectEffect() {
        return false;
    }

    public boolean isUsingDefaultShadow() {
        return m1.supportsShadow();
    }

    public boolean isUsingOutlineClipping(Context context) {
        return !C1037b.getInstance(context).isOutlineClippingDisabled();
    }

    public boolean isUsingZOrder(Context context) {
        return !C1037b.getInstance(context).preferStaticShadows();
    }

    @Override // androidx.leanback.widget.N0
    public void onBindRowViewHolder(M0 m02, Object obj) {
        super.onBindRowViewHolder(m02, obj);
        C0514l0 c0514l0 = (C0514l0) m02;
        C0502f0 c0502f0 = (C0502f0) obj;
        c0514l0.f6846o.setAdapter(c0502f0.getAdapter());
        C0510j0 c0510j0 = c0514l0.f6846o;
        HorizontalGridView horizontalGridView = c0514l0.f6845n;
        horizontalGridView.setAdapter(c0510j0);
        horizontalGridView.setContentDescription(c0502f0.getContentDescription());
    }

    @Override // androidx.leanback.widget.N0
    public void onRowViewExpanded(M0 m02, boolean z6) {
        super.onRowViewExpanded(m02, z6);
        C0514l0 c0514l0 = (C0514l0) m02;
        if (getRowHeight() != getExpandedRowHeight()) {
            c0514l0.getGridView().setRowHeight(z6 ? getExpandedRowHeight() : getRowHeight());
        }
        c(c0514l0);
        d(c0514l0);
    }

    @Override // androidx.leanback.widget.N0
    public void onRowViewSelected(M0 m02, boolean z6) {
        super.onRowViewSelected(m02, z6);
        C0514l0 c0514l0 = (C0514l0) m02;
        c(c0514l0);
        d(c0514l0);
    }

    @Override // androidx.leanback.widget.N0
    public void onSelectLevelChanged(M0 m02) {
        super.onSelectLevelChanged(m02);
        C0514l0 c0514l0 = (C0514l0) m02;
        int childCount = c0514l0.f6845n.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            applySelectLevelToChild(c0514l0, c0514l0.f6845n.getChildAt(i2));
        }
    }

    @Override // androidx.leanback.widget.N0
    public void onUnbindRowViewHolder(M0 m02) {
        C0514l0 c0514l0 = (C0514l0) m02;
        c0514l0.f6845n.setAdapter(null);
        c0514l0.f6846o.clear();
        super.onUnbindRowViewHolder(m02);
    }

    @Override // androidx.leanback.widget.N0
    public void setEntranceTransitionState(M0 m02, boolean z6) {
        super.setEntranceTransitionState(m02, z6);
        ((C0514l0) m02).f6845n.setChildrenVisibility(z6 ? 0 : 4);
    }

    public final void setShadowEnabled(boolean z6) {
        this.f6861g = z6;
    }

    public AbstractC0516m0(int i2, boolean z6) {
        boolean z7 = true;
        this.f6858d = 1;
        this.f6861g = true;
        this.f6862h = -1;
        this.f6863i = true;
        this.f6864j = true;
        this.f6865k = new HashMap();
        if (i2 != 0) {
            if ((i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? 0 : androidx.leanback.R.fraction.lb_focus_zoom_factor_xsmall : androidx.leanback.R.fraction.lb_focus_zoom_factor_large : androidx.leanback.R.fraction.lb_focus_zoom_factor_medium : androidx.leanback.R.fraction.lb_focus_zoom_factor_small) <= 0) {
                z7 = false;
            }
        }
        if (!z7) {
            throw new IllegalArgumentException("Unhandled zoom factor");
        }
        this.f6859e = i2;
        this.f6860f = z6;
    }
}
