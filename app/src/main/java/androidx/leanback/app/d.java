package androidx.leanback.app;

import androidx.leanback.widget.C0;
import androidx.leanback.widget.C0492b0;
import androidx.leanback.widget.C0498d0;
import androidx.leanback.widget.C0514l0;
import androidx.leanback.widget.HorizontalGridView;
import androidx.leanback.widget.M0;
import androidx.leanback.widget.N0;
import androidx.leanback.widget.VerticalGridView;
import androidx.leanback.widget.Z;
import java.util.ArrayList;
import m1.C1298o0;

/* loaded from: classes.dex */
public final class d extends Z {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f6390a;

    public d(h hVar) {
        this.f6390a = hVar;
    }

    @Override // androidx.leanback.widget.Z
    public void onAddPresenter(C0 c02, int i2) {
        this.f6390a.getClass();
    }

    @Override // androidx.leanback.widget.Z
    public void onAttachedToWindow(C0492b0 c0492b0) {
        h hVar = this.f6390a;
        ((N0) c0492b0.getPresenter()).setRowViewExpanded(c0492b0.getViewHolder(), hVar.f6404o0);
        N0 n02 = (N0) c0492b0.getPresenter();
        M0 rowViewHolder = n02.getRowViewHolder(c0492b0.getViewHolder());
        n02.setEntranceTransitionState(rowViewHolder, hVar.f6407r0);
        rowViewHolder.setOnItemViewSelectedListener(hVar.f6409t0);
        rowViewHolder.setOnItemViewClickedListener(hVar.f6410u0);
        n02.freeze(rowViewHolder, hVar.f6408s0);
    }

    @Override // androidx.leanback.widget.Z
    public void onBind(C0492b0 c0492b0) {
        this.f6390a.getClass();
    }

    @Override // androidx.leanback.widget.Z
    public void onCreate(C0492b0 c0492b0) {
        h hVar = this.f6390a;
        VerticalGridView verticalGridView = hVar.getVerticalGridView();
        if (verticalGridView != null) {
            verticalGridView.setClipChildren(false);
        }
        M0 rowViewHolder = ((N0) c0492b0.getPresenter()).getRowViewHolder(c0492b0.getViewHolder());
        if (rowViewHolder instanceof C0514l0) {
            C0514l0 c0514l0 = (C0514l0) rowViewHolder;
            HorizontalGridView gridView = c0514l0.getGridView();
            C1298o0 c1298o0 = hVar.f6411v0;
            if (c1298o0 == null) {
                hVar.f6411v0 = gridView.getRecycledViewPool();
            } else {
                gridView.setRecycledViewPool(c1298o0);
            }
            C0498d0 bridgeAdapter = c0514l0.getBridgeAdapter();
            ArrayList<C0> arrayList = hVar.f6412w0;
            if (arrayList == null) {
                hVar.f6412w0 = bridgeAdapter.getPresenterMapper();
            } else {
                bridgeAdapter.setPresenterMapper(arrayList);
            }
        }
        hVar.f6405p0 = true;
        c0492b0.setExtraObject(new g(c0492b0));
        h.j(c0492b0, false, true);
    }

    @Override // androidx.leanback.widget.Z
    public void onDetachedFromWindow(C0492b0 c0492b0) {
        h hVar = this.f6390a;
        C0492b0 c0492b02 = hVar.f6402m0;
        if (c0492b02 == c0492b0) {
            h.j(c0492b02, false, true);
            hVar.f6402m0 = null;
        }
        M0 rowViewHolder = ((N0) c0492b0.getPresenter()).getRowViewHolder(c0492b0.getViewHolder());
        rowViewHolder.setOnItemViewSelectedListener(null);
        rowViewHolder.setOnItemViewClickedListener(null);
        hVar.getClass();
    }

    @Override // androidx.leanback.widget.Z
    public void onUnbind(C0492b0 c0492b0) {
        h.j(c0492b0, false, true);
        this.f6390a.getClass();
    }
}
