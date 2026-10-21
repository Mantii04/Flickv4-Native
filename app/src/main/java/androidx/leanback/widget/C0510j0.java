package androidx.leanback.widget;

import android.view.View;
import android.view.ViewGroup;

/* renamed from: androidx.leanback.widget.j0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0510j0 extends C0498d0 {

    /* renamed from: k, reason: collision with root package name */
    public final C0514l0 f6808k;

    /* renamed from: l, reason: collision with root package name */
    public final /* synthetic */ AbstractC0516m0 f6809l;

    public C0510j0(AbstractC0516m0 abstractC0516m0, C0514l0 c0514l0) {
        this.f6809l = abstractC0516m0;
        this.f6808k = c0514l0;
    }

    @Override // androidx.leanback.widget.C0498d0
    public void onAddPresenter(C0 c02, int i2) {
        this.f6808k.getGridView().getRecycledViewPool().setMaxRecycledViews(i2, this.f6809l.getRecycledPoolSize(c02));
    }

    @Override // androidx.leanback.widget.C0498d0
    public void onAttachedToWindow(C0492b0 c0492b0) {
        View view = c0492b0.f18217a;
        AbstractC0516m0 abstractC0516m0 = this.f6809l;
        C0514l0 c0514l0 = this.f6808k;
        abstractC0516m0.applySelectLevelToChild(c0514l0, view);
        c0514l0.syncActivatedStatus(c0492b0.f18217a);
    }

    @Override // androidx.leanback.widget.C0498d0
    public void onBind(C0492b0 c0492b0) {
        if (this.f6808k.getOnItemViewClickedListener() != null) {
            c0492b0.f6769v.f6460a.setOnClickListener(new ViewOnClickListenerC0508i0(this, c0492b0));
        }
    }

    @Override // androidx.leanback.widget.C0498d0
    public void onCreate(C0492b0 c0492b0) {
        View view = c0492b0.f18217a;
        if (view instanceof ViewGroup) {
            androidx.leanback.transition.q.setTransitionGroup((ViewGroup) view, true);
        }
        m1 m1Var = this.f6809l.f6866l;
        if (m1Var != null) {
            m1Var.onViewCreated(c0492b0.f18217a);
        }
    }

    @Override // androidx.leanback.widget.C0498d0
    public void onUnbind(C0492b0 c0492b0) {
        if (this.f6808k.getOnItemViewClickedListener() != null) {
            c0492b0.f6769v.f6460a.setOnClickListener(null);
        }
    }
}
