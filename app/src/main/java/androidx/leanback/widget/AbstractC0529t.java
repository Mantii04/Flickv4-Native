package androidx.leanback.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import m1.AbstractC1272b0;
import m1.AbstractC1286i0;

/* renamed from: androidx.leanback.widget.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0529t extends RecyclerView {

    /* renamed from: T0, reason: collision with root package name */
    public GridLayoutManager f6904T0;

    /* renamed from: U0, reason: collision with root package name */
    public boolean f6905U0;

    /* renamed from: V0, reason: collision with root package name */
    public boolean f6906V0;

    /* renamed from: W0, reason: collision with root package name */
    public AbstractC1272b0 f6907W0;

    /* renamed from: X0, reason: collision with root package name */
    public InterfaceC0525r f6908X0;

    /* renamed from: Y0, reason: collision with root package name */
    public int f6909Y0;

    /* renamed from: Z0, reason: collision with root package name */
    public int f6910Z0;

    public AbstractC0529t(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f6905U0 = true;
        this.f6906V0 = true;
        this.f6909Y0 = 4;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this);
        this.f6904T0 = gridLayoutManager;
        setLayoutManager(gridLayoutManager);
        setPreserveFocusAfterLayout(false);
        setDescendantFocusability(262144);
        setHasFixedSize(true);
        setChildrenDrawingOrderEnabled(true);
        setWillNotDraw(true);
        setOverScrollMode(2);
        ((m1.E0) getItemAnimator()).setSupportsChangeAnimations(false);
        super.addRecyclerListener(new C0513l(this));
    }

    public void addOnChildViewHolderSelectedListener(AbstractC0532u0 abstractC0532u0) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        if (gridLayoutManager.f6502E == null) {
            gridLayoutManager.f6502E = new ArrayList();
        }
        gridLayoutManager.f6502E.add(abstractC0532u0);
    }

    public final void d0(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.lbBaseGridView);
        this.f6904T0.setFocusOutAllowed(obtainStyledAttributes.getBoolean(R.styleable.lbBaseGridView_focusOutFront, false), obtainStyledAttributes.getBoolean(R.styleable.lbBaseGridView_focusOutEnd, false));
        boolean z6 = obtainStyledAttributes.getBoolean(R.styleable.lbBaseGridView_focusOutSideStart, true);
        boolean z7 = obtainStyledAttributes.getBoolean(R.styleable.lbBaseGridView_focusOutSideEnd, true);
        GridLayoutManager gridLayoutManager = this.f6904T0;
        gridLayoutManager.f6500C = (z6 ? 8192 : 0) | (gridLayoutManager.f6500C & (-24577)) | (z7 ? 16384 : 0);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.lbBaseGridView_android_verticalSpacing, obtainStyledAttributes.getDimensionPixelSize(R.styleable.lbBaseGridView_verticalMargin, 0));
        if (gridLayoutManager.f6534s == 1) {
            gridLayoutManager.f6514Q = dimensionPixelSize;
            gridLayoutManager.f6515R = dimensionPixelSize;
        } else {
            gridLayoutManager.f6514Q = dimensionPixelSize;
            gridLayoutManager.f6516S = dimensionPixelSize;
        }
        GridLayoutManager gridLayoutManager2 = this.f6904T0;
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(R.styleable.lbBaseGridView_android_horizontalSpacing, obtainStyledAttributes.getDimensionPixelSize(R.styleable.lbBaseGridView_horizontalMargin, 0));
        if (gridLayoutManager2.f6534s == 0) {
            gridLayoutManager2.f6513P = dimensionPixelSize2;
            gridLayoutManager2.f6515R = dimensionPixelSize2;
        } else {
            gridLayoutManager2.f6513P = dimensionPixelSize2;
            gridLayoutManager2.f6516S = dimensionPixelSize2;
        }
        if (obtainStyledAttributes.hasValue(R.styleable.lbBaseGridView_android_gravity)) {
            setGravity(obtainStyledAttributes.getInt(R.styleable.lbBaseGridView_android_gravity, 0));
        }
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchGenericFocusedEvent(MotionEvent motionEvent) {
        return super.dispatchGenericFocusedEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        InterfaceC0525r interfaceC0525r = this.f6908X0;
        return interfaceC0525r != null && ((C0506h0) interfaceC0525r).onUnhandledKey(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public View focusSearch(int i2) {
        if (isFocused()) {
            GridLayoutManager gridLayoutManager = this.f6904T0;
            View findViewByPosition = gridLayoutManager.findViewByPosition(gridLayoutManager.f6503F);
            if (findViewByPosition != null) {
                return focusSearch(findViewByPosition, i2);
            }
        }
        return super.focusSearch(i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public int getChildDrawingOrder(int i2, int i7) {
        int indexOfChild;
        GridLayoutManager gridLayoutManager = this.f6904T0;
        View findViewByPosition = gridLayoutManager.findViewByPosition(gridLayoutManager.f6503F);
        return (findViewByPosition != null && i7 >= (indexOfChild = indexOfChild(findViewByPosition))) ? i7 < i2 + (-1) ? ((indexOfChild + i2) - 1) - i7 : indexOfChild : i7;
    }

    public int getExtraLayoutSpace() {
        return this.f6904T0.f6525b0;
    }

    public int getFocusScrollStrategy() {
        return this.f6904T0.f6521X;
    }

    @Deprecated
    public int getHorizontalMargin() {
        return this.f6904T0.f6513P;
    }

    public int getHorizontalSpacing() {
        return this.f6904T0.f6513P;
    }

    public int getInitialPrefetchItemCount() {
        return this.f6909Y0;
    }

    public int getItemAlignmentOffset() {
        return this.f6904T0.f6523Z.mainAxis().getItemAlignmentOffset();
    }

    public float getItemAlignmentOffsetPercent() {
        return this.f6904T0.f6523Z.mainAxis().getItemAlignmentOffsetPercent();
    }

    public int getItemAlignmentViewId() {
        return this.f6904T0.f6523Z.mainAxis().getItemAlignmentViewId();
    }

    public InterfaceC0525r getOnUnhandledKeyListener() {
        return this.f6908X0;
    }

    public final int getSaveChildrenLimitNumber() {
        return this.f6904T0.f6527d0.f1025b;
    }

    public final int getSaveChildrenPolicy() {
        return this.f6904T0.f6527d0.f1024a;
    }

    public int getSelectedPosition() {
        return this.f6904T0.f6503F;
    }

    public int getSelectedSubPosition() {
        this.f6904T0.getClass();
        return 0;
    }

    public InterfaceC0527s getSmoothScrollByBehavior() {
        return null;
    }

    public final int getSmoothScrollMaxPendingMoves() {
        return this.f6904T0.f6532q;
    }

    public final float getSmoothScrollSpeedFactor() {
        return this.f6904T0.f6531p;
    }

    @Deprecated
    public int getVerticalMargin() {
        return this.f6904T0.f6514Q;
    }

    public int getVerticalSpacing() {
        return this.f6904T0.f6514Q;
    }

    public int getWindowAlignment() {
        return this.f6904T0.f6522Y.mainAxis().getWindowAlignment();
    }

    public int getWindowAlignmentOffset() {
        return this.f6904T0.f6522Y.mainAxis().getWindowAlignmentOffset();
    }

    public float getWindowAlignmentOffsetPercent() {
        return this.f6904T0.f6522Y.mainAxis().getWindowAlignmentOffsetPercent();
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return this.f6906V0;
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z6, int i2, Rect rect) {
        super.onFocusChanged(z6, i2, rect);
        GridLayoutManager gridLayoutManager = this.f6904T0;
        if (!z6) {
            gridLayoutManager.getClass();
            return;
        }
        int i7 = gridLayoutManager.f6503F;
        while (true) {
            View findViewByPosition = gridLayoutManager.findViewByPosition(i7);
            if (findViewByPosition == null) {
                return;
            }
            if (findViewByPosition.getVisibility() == 0 && findViewByPosition.hasFocusable()) {
                findViewByPosition.requestFocus();
                return;
            }
            i7++;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i7;
        int i8;
        int i9;
        if ((this.f6910Z0 & 1) == 1) {
            return false;
        }
        GridLayoutManager gridLayoutManager = this.f6904T0;
        int i10 = gridLayoutManager.f6521X;
        if (i10 == 1 || i10 == 2) {
            int childCount = gridLayoutManager.getChildCount();
            if ((i2 & 2) != 0) {
                i9 = 1;
                i8 = childCount;
                i7 = 0;
            } else {
                i7 = childCount - 1;
                i8 = -1;
                i9 = -1;
            }
            C1 c12 = gridLayoutManager.f6522Y;
            int paddingMin = c12.mainAxis().getPaddingMin();
            int clientSize = c12.mainAxis().getClientSize() + paddingMin;
            while (i7 != i8) {
                View childAt = gridLayoutManager.getChildAt(i7);
                if (childAt.getVisibility() == 0 && gridLayoutManager.f6535t.getDecoratedStart(childAt) >= paddingMin && gridLayoutManager.f6535t.getDecoratedEnd(childAt) <= clientSize && childAt.requestFocus(i2, rect)) {
                    return true;
                }
                i7 += i9;
            }
        } else {
            View findViewByPosition = gridLayoutManager.findViewByPosition(gridLayoutManager.f6503F);
            if (findViewByPosition != null) {
                return findViewByPosition.requestFocus(i2, rect);
            }
        }
        return false;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        int i7;
        GridLayoutManager gridLayoutManager = this.f6904T0;
        if (gridLayoutManager != null) {
            if (gridLayoutManager.f6534s == 0) {
                if (i2 == 1) {
                    i7 = 262144;
                }
                i7 = 0;
            } else {
                if (i2 == 1) {
                    i7 = 524288;
                }
                i7 = 0;
            }
            int i8 = gridLayoutManager.f6500C;
            if ((786432 & i8) == i7) {
                return;
            }
            gridLayoutManager.f6500C = i7 | (i8 & (-786433)) | 256;
            gridLayoutManager.f6522Y.f6476b.setReversedFlow(i2 == 1);
        }
    }

    public void removeOnChildViewHolderSelectedListener(AbstractC0532u0 abstractC0532u0) {
        ArrayList arrayList = this.f6904T0.f6502E;
        if (arrayList != null) {
            arrayList.remove(abstractC0532u0);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        boolean z6 = view.hasFocus() && isFocusable();
        if (z6) {
            this.f6910Z0 = 1 | this.f6910Z0;
            requestFocus();
        }
        super.removeView(view);
        if (z6) {
            this.f6910Z0 ^= -2;
        }
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i2) {
        boolean hasFocus = getChildAt(i2).hasFocus();
        if (hasFocus) {
            this.f6910Z0 |= 1;
            requestFocus();
        }
        super.removeViewAt(i2);
        if (hasFocus) {
            this.f6910Z0 ^= -2;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void scrollToPosition(int i2) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        if ((gridLayoutManager.f6500C & 64) != 0) {
            gridLayoutManager.Q(i2, false);
        } else {
            super.scrollToPosition(i2);
        }
    }

    public void setAnimateChildLayout(boolean z6) {
        if (this.f6905U0 != z6) {
            this.f6905U0 = z6;
            if (z6) {
                super.setItemAnimator(this.f6907W0);
            } else {
                this.f6907W0 = getItemAnimator();
                super.setItemAnimator(null);
            }
        }
    }

    public void setChildrenVisibility(int i2) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        gridLayoutManager.f6507J = i2;
        if (i2 != -1) {
            int childCount = gridLayoutManager.getChildCount();
            for (int i7 = 0; i7 < childCount; i7++) {
                gridLayoutManager.getChildAt(i7).setVisibility(gridLayoutManager.f6507J);
            }
        }
    }

    public void setExtraLayoutSpace(int i2) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        int i7 = gridLayoutManager.f6525b0;
        if (i7 == i2) {
            return;
        }
        if (i7 < 0) {
            throw new IllegalArgumentException("ExtraLayoutSpace must >= 0");
        }
        gridLayoutManager.f6525b0 = i2;
        gridLayoutManager.requestLayout();
    }

    public void setFocusDrawingOrderEnabled(boolean z6) {
        super.setChildrenDrawingOrderEnabled(z6);
    }

    public void setFocusScrollStrategy(int i2) {
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException("Invalid scrollStrategy");
        }
        this.f6904T0.f6521X = i2;
        requestLayout();
    }

    public final void setFocusSearchDisabled(boolean z6) {
        setDescendantFocusability(z6 ? 393216 : 262144);
        GridLayoutManager gridLayoutManager = this.f6904T0;
        gridLayoutManager.f6500C = (z6 ? 32768 : 0) | (gridLayoutManager.f6500C & (-32769));
    }

    public void setGravity(int i2) {
        this.f6904T0.f6517T = i2;
        requestLayout();
    }

    public void setHasOverlappingRendering(boolean z6) {
        this.f6906V0 = z6;
    }

    @Deprecated
    public void setHorizontalMargin(int i2) {
        setHorizontalSpacing(i2);
    }

    public void setHorizontalSpacing(int i2) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        if (gridLayoutManager.f6534s == 0) {
            gridLayoutManager.f6513P = i2;
            gridLayoutManager.f6515R = i2;
        } else {
            gridLayoutManager.f6513P = i2;
            gridLayoutManager.f6516S = i2;
        }
        requestLayout();
    }

    public void setInitialPrefetchItemCount(int i2) {
        this.f6909Y0 = i2;
    }

    public void setItemAlignmentOffset(int i2) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        gridLayoutManager.f6523Z.mainAxis().setItemAlignmentOffset(i2);
        gridLayoutManager.R();
        requestLayout();
    }

    public void setItemAlignmentOffsetPercent(float f3) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        gridLayoutManager.f6523Z.mainAxis().setItemAlignmentOffsetPercent(f3);
        gridLayoutManager.R();
        requestLayout();
    }

    public void setItemAlignmentOffsetWithPadding(boolean z6) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        gridLayoutManager.f6523Z.mainAxis().setItemAlignmentOffsetWithPadding(z6);
        gridLayoutManager.R();
        requestLayout();
    }

    public void setItemAlignmentViewId(int i2) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        gridLayoutManager.f6523Z.mainAxis().setItemAlignmentViewId(i2);
        gridLayoutManager.R();
    }

    @Deprecated
    public void setItemMargin(int i2) {
        setItemSpacing(i2);
    }

    public void setItemSpacing(int i2) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        gridLayoutManager.f6513P = i2;
        gridLayoutManager.f6514Q = i2;
        gridLayoutManager.f6516S = i2;
        gridLayoutManager.f6515R = i2;
        requestLayout();
    }

    public void setLayoutEnabled(boolean z6) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        int i2 = gridLayoutManager.f6500C;
        if (((i2 & 512) != 0) != z6) {
            gridLayoutManager.f6500C = (i2 & (-513)) | (z6 ? 512 : 0);
            gridLayoutManager.requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setLayoutManager(AbstractC1286i0 abstractC1286i0) {
        if (abstractC1286i0 != null) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) abstractC1286i0;
            this.f6904T0 = gridLayoutManager;
            gridLayoutManager.f6533r = this;
            gridLayoutManager.f6520W = null;
            super.setLayoutManager(abstractC1286i0);
            return;
        }
        super.setLayoutManager(null);
        GridLayoutManager gridLayoutManager2 = this.f6904T0;
        if (gridLayoutManager2 != null) {
            gridLayoutManager2.f6533r = null;
            gridLayoutManager2.f6520W = null;
        }
        this.f6904T0 = null;
    }

    public void setOnChildLaidOutListener(InterfaceC0528s0 interfaceC0528s0) {
        this.f6904T0.getClass();
    }

    @SuppressLint({"ReferencesDeprecated"})
    public void setOnChildSelectedListener(InterfaceC0530t0 interfaceC0530t0) {
        this.f6904T0.f6501D = interfaceC0530t0;
    }

    public void setOnChildViewHolderSelectedListener(AbstractC0532u0 abstractC0532u0) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        if (abstractC0532u0 == null) {
            gridLayoutManager.f6502E = null;
            return;
        }
        ArrayList arrayList = gridLayoutManager.f6502E;
        if (arrayList == null) {
            gridLayoutManager.f6502E = new ArrayList();
        } else {
            arrayList.clear();
        }
        gridLayoutManager.f6502E.add(abstractC0532u0);
    }

    public void setOnKeyInterceptListener(InterfaceC0519o interfaceC0519o) {
    }

    public void setOnMotionInterceptListener(InterfaceC0521p interfaceC0521p) {
    }

    public void setOnTouchInterceptListener(InterfaceC0523q interfaceC0523q) {
    }

    public void setOnUnhandledKeyListener(InterfaceC0525r interfaceC0525r) {
        this.f6908X0 = interfaceC0525r;
    }

    public void setPruneChild(boolean z6) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        int i2 = gridLayoutManager.f6500C;
        if (((i2 & 65536) != 0) != z6) {
            gridLayoutManager.f6500C = (i2 & (-65537)) | (z6 ? 65536 : 0);
            if (z6) {
                gridLayoutManager.requestLayout();
            }
        }
    }

    public final void setSaveChildrenLimitNumber(int i2) {
        G2.b bVar = this.f6904T0.f6527d0;
        bVar.f1025b = i2;
        bVar.a();
    }

    public final void setSaveChildrenPolicy(int i2) {
        G2.b bVar = this.f6904T0.f6527d0;
        bVar.f1024a = i2;
        bVar.a();
    }

    public void setScrollEnabled(boolean z6) {
        int i2;
        GridLayoutManager gridLayoutManager = this.f6904T0;
        int i7 = gridLayoutManager.f6500C;
        if (((i7 & 131072) != 0) != z6) {
            int i8 = (i7 & (-131073)) | (z6 ? 131072 : 0);
            gridLayoutManager.f6500C = i8;
            if ((i8 & 131072) == 0 || gridLayoutManager.f6521X != 0 || (i2 = gridLayoutManager.f6503F) == -1) {
                return;
            }
            gridLayoutManager.N(i2, true);
        }
    }

    public void setSelectedPosition(int i2) {
        this.f6904T0.Q(i2, false);
    }

    public void setSelectedPositionSmooth(int i2) {
        this.f6904T0.Q(i2, true);
    }

    public final void setSmoothScrollByBehavior(InterfaceC0527s interfaceC0527s) {
    }

    public final void setSmoothScrollMaxPendingMoves(int i2) {
        this.f6904T0.f6532q = i2;
    }

    public final void setSmoothScrollSpeedFactor(float f3) {
        this.f6904T0.f6531p = f3;
    }

    @Deprecated
    public void setVerticalMargin(int i2) {
        setVerticalSpacing(i2);
    }

    public void setVerticalSpacing(int i2) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        if (gridLayoutManager.f6534s == 1) {
            gridLayoutManager.f6514Q = i2;
            gridLayoutManager.f6515R = i2;
        } else {
            gridLayoutManager.f6514Q = i2;
            gridLayoutManager.f6516S = i2;
        }
        requestLayout();
    }

    public void setWindowAlignment(int i2) {
        this.f6904T0.f6522Y.mainAxis().setWindowAlignment(i2);
        requestLayout();
    }

    public void setWindowAlignmentOffset(int i2) {
        this.f6904T0.f6522Y.mainAxis().setWindowAlignmentOffset(i2);
        requestLayout();
    }

    public void setWindowAlignmentOffsetPercent(float f3) {
        this.f6904T0.f6522Y.mainAxis().setWindowAlignmentOffsetPercent(f3);
        requestLayout();
    }

    public void setWindowAlignmentPreferKeyLineOverHighEdge(boolean z6) {
        B1 mainAxis = this.f6904T0.f6522Y.mainAxis();
        mainAxis.f6465e = z6 ? mainAxis.f6465e | 2 : mainAxis.f6465e & (-3);
        requestLayout();
    }

    public void setWindowAlignmentPreferKeyLineOverLowEdge(boolean z6) {
        B1 mainAxis = this.f6904T0.f6522Y.mainAxis();
        mainAxis.f6465e = z6 ? mainAxis.f6465e | 1 : mainAxis.f6465e & (-2);
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void smoothScrollBy(int i2, int i7) {
        smoothScrollBy(i2, i7, null, Integer.MIN_VALUE);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void smoothScrollToPosition(int i2) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        if ((gridLayoutManager.f6500C & 64) != 0) {
            gridLayoutManager.Q(i2, false);
        } else {
            super.smoothScrollToPosition(i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void smoothScrollBy(int i2, int i7, Interpolator interpolator) {
        smoothScrollBy(i2, i7, interpolator, Integer.MIN_VALUE);
    }

    public void setSelectedPosition(int i2, A1 a12) {
        if (a12 != null) {
            m1.B0 findViewHolderForPosition = findViewHolderForPosition(i2);
            if (findViewHolderForPosition != null && !hasPendingAdapterUpdates()) {
                ((androidx.leanback.app.f) a12).run(findViewHolderForPosition);
            } else {
                addOnChildViewHolderSelectedListener(new C0517n(this, i2, a12));
            }
        }
        setSelectedPosition(i2);
    }

    public void setSelectedPositionSmooth(int i2, A1 a12) {
        if (a12 != null) {
            m1.B0 findViewHolderForPosition = findViewHolderForPosition(i2);
            if (findViewHolderForPosition != null && !hasPendingAdapterUpdates()) {
                ((androidx.leanback.app.f) a12).run(findViewHolderForPosition);
            } else {
                addOnChildViewHolderSelectedListener(new C0515m(this, i2, a12));
            }
        }
        setSelectedPositionSmooth(i2);
    }
}
