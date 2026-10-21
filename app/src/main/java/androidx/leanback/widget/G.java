package androidx.leanback.widget;

import android.graphics.Rect;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;

/* loaded from: classes.dex */
public final class G implements D {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ GridLayoutManager f6494a;

    public G(GridLayoutManager gridLayoutManager) {
        this.f6494a = gridLayoutManager;
    }

    public void addItem(Object obj, int i2, int i7, int i8, int i9) {
        int i10;
        int i11;
        K k7;
        int i12;
        View view = (View) obj;
        GridLayoutManager gridLayoutManager = this.f6494a;
        if (i9 == Integer.MIN_VALUE || i9 == Integer.MAX_VALUE) {
            boolean isReversedFlow = gridLayoutManager.f6520W.isReversedFlow();
            C1 c12 = gridLayoutManager.f6522Y;
            i9 = !isReversedFlow ? c12.mainAxis().getPaddingMin() : c12.mainAxis().getSize() - c12.mainAxis().getPaddingMax();
        }
        if (gridLayoutManager.f6520W.isReversedFlow()) {
            i10 = i9 - i7;
            i11 = i9;
        } else {
            i11 = i7 + i9;
            i10 = i9;
        }
        int paddingMin = (gridLayoutManager.f6522Y.secondAxis().getPaddingMin() + gridLayoutManager.u(i8)) - gridLayoutManager.f6508K;
        G2.b bVar = gridLayoutManager.f6527d0;
        if (((p.p) bVar.f1026c) != null) {
            SparseArray<Parcelable> sparseArray = (SparseArray) ((p.p) bVar.f1026c).remove(Integer.toString(i2));
            if (sparseArray != null) {
                view.restoreHierarchyState(sparseArray);
            }
        }
        this.f6494a.B(view, i8, i10, i11, paddingMin);
        if (!gridLayoutManager.f6537v.isPreLayout()) {
            gridLayoutManager.U();
        }
        if ((gridLayoutManager.f6500C & 3) == 1 || (k7 = gridLayoutManager.f6505H) == null) {
            return;
        }
        boolean z6 = k7.f6586s;
        GridLayoutManager gridLayoutManager2 = k7.f6588u;
        if (z6 && (i12 = k7.f6587t) != 0) {
            k7.f6587t = gridLayoutManager2.H(i12, true);
        }
        int i13 = k7.f6587t;
        if (i13 != 0 && (i13 <= 0 || !gridLayoutManager2.z())) {
            if (k7.f6587t >= 0) {
                return;
            }
            if (gridLayoutManager2.getItemCount() != 0 && gridLayoutManager2.f6533r.findViewHolderForAdapterPosition(0) == null) {
                return;
            }
        }
        k7.setTargetPosition(gridLayoutManager2.f6503F);
        k7.stop();
    }

    public int createItem(int i2, boolean z6, Object[] objArr, boolean z7) {
        int i7;
        View findViewByPosition;
        GridLayoutManager gridLayoutManager = this.f6494a;
        View y6 = gridLayoutManager.y(i2 - gridLayoutManager.f6538w);
        if (!((J) y6.getLayoutParams()).isItemRemoved()) {
            if (z7) {
                if (z6) {
                    gridLayoutManager.addDisappearingView(y6);
                } else {
                    gridLayoutManager.addDisappearingView(y6, 0);
                }
            } else if (z6) {
                gridLayoutManager.addView(y6);
            } else {
                gridLayoutManager.addView(y6, 0);
            }
            int i8 = gridLayoutManager.f6507J;
            if (i8 != -1) {
                y6.setVisibility(i8);
            }
            K k7 = gridLayoutManager.f6505H;
            if (k7 != null && !k7.f6586s && (i7 = k7.f6587t) != 0) {
                GridLayoutManager gridLayoutManager2 = k7.f6588u;
                int i9 = i7 > 0 ? gridLayoutManager2.f6503F + gridLayoutManager2.f6518U : gridLayoutManager2.f6503F - gridLayoutManager2.f6518U;
                View view = null;
                while (k7.f6587t != 0 && (findViewByPosition = k7.findViewByPosition(i9)) != null) {
                    gridLayoutManager2.getClass();
                    if (findViewByPosition.getVisibility() == 0 && (!gridLayoutManager2.hasFocus() || findViewByPosition.hasFocusable())) {
                        gridLayoutManager2.f6503F = i9;
                        int i10 = k7.f6587t;
                        if (i10 > 0) {
                            k7.f6587t = i10 - 1;
                        } else {
                            k7.f6587t = i10 + 1;
                        }
                        view = findViewByPosition;
                    }
                    i9 = k7.f6587t > 0 ? i9 + gridLayoutManager2.f6518U : i9 - gridLayoutManager2.f6518U;
                }
                if (view != null && gridLayoutManager2.hasFocus()) {
                    gridLayoutManager2.f6500C |= 32;
                    view.requestFocus();
                    gridLayoutManager2.f6500C &= -33;
                }
            }
            if (y6.findFocus() != null) {
                ((J) y6.getLayoutParams()).getClass();
            }
            int i11 = gridLayoutManager.f6500C;
            if ((i11 & 3) != 1) {
                if (i2 == gridLayoutManager.f6503F && gridLayoutManager.f6505H == null) {
                    gridLayoutManager.n();
                }
            } else if ((i11 & 4) == 0) {
                int i12 = i11 & 16;
                if (i12 == 0 && i2 == gridLayoutManager.f6503F) {
                    gridLayoutManager.n();
                } else if (i12 != 0 && i2 >= gridLayoutManager.f6503F && y6.hasFocusable()) {
                    gridLayoutManager.f6503F = i2;
                    gridLayoutManager.f6500C &= -17;
                    gridLayoutManager.n();
                }
            }
            gridLayoutManager.D(y6);
        }
        objArr[0] = y6;
        return gridLayoutManager.f6534s == 0 ? gridLayoutManager.r(y6) : gridLayoutManager.q(y6);
    }

    public int getCount() {
        GridLayoutManager gridLayoutManager = this.f6494a;
        return gridLayoutManager.f6537v.getItemCount() + gridLayoutManager.f6538w;
    }

    public int getEdge(int i2) {
        GridLayoutManager gridLayoutManager = this.f6494a;
        View findViewByPosition = gridLayoutManager.findViewByPosition(i2 - gridLayoutManager.f6538w);
        return (gridLayoutManager.f6500C & 262144) != 0 ? gridLayoutManager.f6535t.getDecoratedEnd(findViewByPosition) : gridLayoutManager.f6535t.getDecoratedStart(findViewByPosition);
    }

    public int getMinIndex() {
        return this.f6494a.f6538w;
    }

    public int getSize(int i2) {
        GridLayoutManager gridLayoutManager = this.f6494a;
        View findViewByPosition = gridLayoutManager.findViewByPosition(i2 - gridLayoutManager.f6538w);
        Rect rect = GridLayoutManager.f6496h0;
        gridLayoutManager.getDecoratedBoundsWithMargins(findViewByPosition, rect);
        return gridLayoutManager.f6534s == 0 ? rect.width() : rect.height();
    }

    public void removeItem(int i2) {
        GridLayoutManager gridLayoutManager = this.f6494a;
        View findViewByPosition = gridLayoutManager.findViewByPosition(i2 - gridLayoutManager.f6538w);
        if ((gridLayoutManager.f6500C & 3) == 1) {
            gridLayoutManager.detachAndScrapView(findViewByPosition, gridLayoutManager.f6499B);
        } else {
            gridLayoutManager.removeAndRecycleView(findViewByPosition, gridLayoutManager.f6499B);
        }
    }
}
