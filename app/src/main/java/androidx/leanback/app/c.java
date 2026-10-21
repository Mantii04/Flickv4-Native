package androidx.leanback.app;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.C;
import androidx.leanback.R;
import androidx.leanback.widget.AbstractC0526r0;
import androidx.leanback.widget.C0498d0;
import androidx.leanback.widget.VerticalGridView;
import m1.V;

/* loaded from: classes.dex */
public abstract class c extends C {

    /* renamed from: f0, reason: collision with root package name */
    public AbstractC0526r0 f6383f0;

    /* renamed from: g0, reason: collision with root package name */
    public VerticalGridView f6384g0;

    /* renamed from: j0, reason: collision with root package name */
    public boolean f6387j0;

    /* renamed from: h0, reason: collision with root package name */
    public final C0498d0 f6385h0 = new C0498d0();

    /* renamed from: i0, reason: collision with root package name */
    public int f6386i0 = -1;

    /* renamed from: k0, reason: collision with root package name */
    public final b f6388k0 = new b(this);

    /* renamed from: l0, reason: collision with root package name */
    public final a f6389l0 = new a(this);

    public abstract VerticalGridView findGridViewFromRoot(View view);

    public final C0498d0 getBridgeAdapter() {
        return this.f6385h0;
    }

    public int getSelectedPosition() {
        return this.f6386i0;
    }

    public VerticalGridView getVerticalGridView() {
        return this.f6384g0;
    }

    public final void i() {
        if (this.f6383f0 == null) {
            return;
        }
        V adapter = this.f6384g0.getAdapter();
        C0498d0 c0498d0 = this.f6385h0;
        if (adapter != c0498d0) {
            this.f6384g0.setAdapter(c0498d0);
        }
        if (c0498d0.getItemCount() == 0 && this.f6386i0 >= 0) {
            b bVar = this.f6388k0;
            bVar.f6381a = true;
            bVar.f6382b.f6385h0.registerAdapterDataObserver(bVar);
        } else {
            int i2 = this.f6386i0;
            if (i2 >= 0) {
                this.f6384g0.setSelectedPosition(i2);
            }
        }
    }

    @Override // androidx.fragment.app.C
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.lb_rows_fragment, viewGroup, false);
        this.f6384g0 = findGridViewFromRoot(inflate);
        if (this.f6387j0) {
            this.f6387j0 = false;
            onTransitionPrepare();
        }
        return inflate;
    }

    @Override // androidx.fragment.app.C
    public void onDestroyView() {
        super.onDestroyView();
        b bVar = this.f6388k0;
        if (bVar.f6381a) {
            bVar.f6381a = false;
            bVar.f6382b.f6385h0.unregisterAdapterDataObserver(bVar);
        }
        VerticalGridView verticalGridView = this.f6384g0;
        if (verticalGridView != null) {
            verticalGridView.swapAdapter(null, true);
            this.f6384g0 = null;
        }
    }

    @Override // androidx.fragment.app.C
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("currentSelectedPosition", this.f6386i0);
    }

    public boolean onTransitionPrepare() {
        VerticalGridView verticalGridView = this.f6384g0;
        if (verticalGridView == null) {
            this.f6387j0 = true;
            return false;
        }
        verticalGridView.setAnimateChildLayout(false);
        this.f6384g0.setScrollEnabled(false);
        return true;
    }

    @Override // androidx.fragment.app.C
    public void onViewCreated(View view, Bundle bundle) {
        if (bundle != null) {
            this.f6386i0 = bundle.getInt("currentSelectedPosition", -1);
        }
        i();
        this.f6384g0.setOnChildViewHolderSelectedListener(this.f6389l0);
    }

    public void setAdapter(AbstractC0526r0 abstractC0526r0) {
        if (this.f6383f0 != abstractC0526r0) {
            this.f6383f0 = abstractC0526r0;
            h hVar = (h) this;
            C0498d0 c0498d0 = hVar.f6385h0;
            c0498d0.setAdapter(hVar.f6383f0);
            c0498d0.setPresenter(null);
            if (hVar.f6384g0 != null) {
                hVar.i();
            }
            hVar.f6402m0 = null;
            hVar.f6405p0 = false;
            C0498d0 bridgeAdapter = hVar.getBridgeAdapter();
            if (bridgeAdapter != null) {
                bridgeAdapter.setAdapterListener(hVar.f6413x0);
            }
        }
    }

    public void setSelectedPosition(int i2) {
        setSelectedPosition(i2, true);
    }

    public void setSelectedPosition(int i2, boolean z6) {
        if (this.f6386i0 == i2) {
            return;
        }
        this.f6386i0 = i2;
        VerticalGridView verticalGridView = this.f6384g0;
        if (verticalGridView == null || this.f6388k0.f6381a) {
            return;
        }
        if (z6) {
            verticalGridView.setSelectedPositionSmooth(i2);
        } else {
            verticalGridView.setSelectedPosition(i2);
        }
    }
}
