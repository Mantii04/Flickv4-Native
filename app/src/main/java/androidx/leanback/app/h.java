package androidx.leanback.app;

import android.animation.TimeAnimator;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.leanback.R;
import androidx.leanback.widget.A0;
import androidx.leanback.widget.B0;
import androidx.leanback.widget.C0492b0;
import androidx.leanback.widget.InterfaceC0531u;
import androidx.leanback.widget.InterfaceC0533v;
import androidx.leanback.widget.M0;
import androidx.leanback.widget.N0;
import androidx.leanback.widget.VerticalGridView;
import java.util.ArrayList;
import m1.C1298o0;

/* loaded from: classes.dex */
public class h extends c {

    /* renamed from: m0, reason: collision with root package name */
    public C0492b0 f6402m0;

    /* renamed from: n0, reason: collision with root package name */
    public int f6403n0;

    /* renamed from: p0, reason: collision with root package name */
    public boolean f6405p0;

    /* renamed from: s0, reason: collision with root package name */
    public boolean f6408s0;

    /* renamed from: t0, reason: collision with root package name */
    public InterfaceC0533v f6409t0;

    /* renamed from: u0, reason: collision with root package name */
    public InterfaceC0531u f6410u0;

    /* renamed from: v0, reason: collision with root package name */
    public C1298o0 f6411v0;

    /* renamed from: w0, reason: collision with root package name */
    public ArrayList f6412w0;

    /* renamed from: o0, reason: collision with root package name */
    public final boolean f6404o0 = true;

    /* renamed from: q0, reason: collision with root package name */
    public int f6406q0 = Integer.MIN_VALUE;

    /* renamed from: r0, reason: collision with root package name */
    public final boolean f6407r0 = true;

    /* renamed from: x0, reason: collision with root package name */
    public final d f6413x0 = new d(this);

    public static void j(C0492b0 c0492b0, boolean z6, boolean z7) {
        g gVar = (g) c0492b0.getExtraObject();
        TimeAnimator timeAnimator = gVar.f6397c;
        timeAnimator.end();
        float f3 = z6 ? 1.0f : 0.0f;
        A0 a02 = gVar.f6396b;
        N0 n02 = gVar.f6395a;
        if (z7) {
            n02.setSelectLevel(a02, f3);
        } else if (n02.getSelectLevel(a02) != f3) {
            float selectLevel = n02.getSelectLevel(a02);
            gVar.f6400f = selectLevel;
            gVar.f6401g = f3 - selectLevel;
            timeAnimator.start();
        }
        ((N0) c0492b0.getPresenter()).setRowViewSelected(c0492b0.getViewHolder(), z6);
    }

    @Override // androidx.leanback.app.c
    public VerticalGridView findGridViewFromRoot(View view) {
        return (VerticalGridView) view.findViewById(R.id.container_list);
    }

    public M0 getRowViewHolder(int i2) {
        C0492b0 c0492b0;
        VerticalGridView verticalGridView = getVerticalGridView();
        if (verticalGridView == null || (c0492b0 = (C0492b0) verticalGridView.findViewHolderForAdapterPosition(i2)) == null) {
            return null;
        }
        return ((N0) c0492b0.getPresenter()).getRowViewHolder(c0492b0.getViewHolder());
    }

    @Override // androidx.leanback.app.c
    public /* bridge */ /* synthetic */ int getSelectedPosition() {
        return super.getSelectedPosition();
    }

    @Override // androidx.leanback.app.c, androidx.fragment.app.C
    public /* bridge */ /* synthetic */ View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // androidx.leanback.app.c, androidx.fragment.app.C
    public void onDestroyView() {
        this.f6405p0 = false;
        this.f6402m0 = null;
        this.f6411v0 = null;
        super.onDestroyView();
    }

    @Override // androidx.leanback.app.c, androidx.fragment.app.C
    public /* bridge */ /* synthetic */ void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // androidx.leanback.app.c
    public boolean onTransitionPrepare() {
        boolean onTransitionPrepare = super.onTransitionPrepare();
        if (onTransitionPrepare) {
            this.f6408s0 = true;
            VerticalGridView verticalGridView = getVerticalGridView();
            if (verticalGridView != null) {
                int childCount = verticalGridView.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    C0492b0 c0492b0 = (C0492b0) verticalGridView.getChildViewHolder(verticalGridView.getChildAt(i2));
                    N0 n02 = (N0) c0492b0.getPresenter();
                    n02.freeze(n02.getRowViewHolder(c0492b0.getViewHolder()), true);
                }
            }
        }
        return onTransitionPrepare;
    }

    @Override // androidx.leanback.app.c, androidx.fragment.app.C
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        getVerticalGridView().setItemAlignmentViewId(R.id.row_content);
        getVerticalGridView().setSaveChildrenPolicy(2);
        setAlignment(this.f6406q0);
        this.f6411v0 = null;
        this.f6412w0 = null;
    }

    public void setAlignment(int i2) {
        if (i2 == Integer.MIN_VALUE) {
            return;
        }
        this.f6406q0 = i2;
        VerticalGridView verticalGridView = getVerticalGridView();
        if (verticalGridView != null) {
            verticalGridView.setItemAlignmentOffset(0);
            verticalGridView.setItemAlignmentOffsetPercent(-1.0f);
            verticalGridView.setItemAlignmentOffsetWithPadding(true);
            verticalGridView.setWindowAlignmentOffset(this.f6406q0);
            verticalGridView.setWindowAlignmentOffsetPercent(-1.0f);
            verticalGridView.setWindowAlignment(0);
        }
    }

    public void setOnItemViewClickedListener(InterfaceC0531u interfaceC0531u) {
        this.f6410u0 = interfaceC0531u;
        if (this.f6405p0) {
            throw new IllegalStateException("Item clicked listener must be set before views are created");
        }
    }

    public void setOnItemViewSelectedListener(InterfaceC0533v interfaceC0533v) {
        this.f6409t0 = interfaceC0533v;
        VerticalGridView verticalGridView = getVerticalGridView();
        if (verticalGridView != null) {
            int childCount = verticalGridView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                C0492b0 c0492b0 = (C0492b0) verticalGridView.getChildViewHolder(verticalGridView.getChildAt(i2));
                (c0492b0 == null ? null : ((N0) c0492b0.getPresenter()).getRowViewHolder(c0492b0.getViewHolder())).setOnItemViewSelectedListener(this.f6409t0);
            }
        }
    }

    @Override // androidx.leanback.app.c
    public /* bridge */ /* synthetic */ void setSelectedPosition(int i2) {
        super.setSelectedPosition(i2);
    }

    @Override // androidx.leanback.app.c
    public /* bridge */ /* synthetic */ void setSelectedPosition(int i2, boolean z6) {
        super.setSelectedPosition(i2, z6);
    }

    public void setSelectedPosition(int i2, boolean z6, B0 b02) {
        VerticalGridView verticalGridView = getVerticalGridView();
        if (verticalGridView == null) {
            return;
        }
        f fVar = b02 != null ? new f(b02) : null;
        if (z6) {
            verticalGridView.setSelectedPositionSmooth(i2, fVar);
        } else {
            verticalGridView.setSelectedPosition(i2, fVar);
        }
    }
}
