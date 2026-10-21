package androidx.leanback.widget;

import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public abstract class N0 extends C0 {

    /* renamed from: a, reason: collision with root package name */
    public final K0 f6617a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f6618b;

    /* renamed from: c, reason: collision with root package name */
    public final int f6619c;

    public N0() {
        K0 k02 = new K0();
        this.f6617a = k02;
        this.f6618b = true;
        this.f6619c = 1;
        k02.setNullItemVisibilityGone(true);
    }

    public final void a(M0 m02, View view) {
        int i2 = this.f6619c;
        if (i2 == 1) {
            m02.setActivated(m02.isExpanded());
        } else if (i2 == 2) {
            m02.setActivated(m02.isSelected());
        } else if (i2 == 3) {
            m02.setActivated(m02.isExpanded() && m02.isSelected());
        }
        m02.syncActivatedStatus(view);
    }

    public abstract M0 createRowViewHolder(ViewGroup viewGroup);

    public void dispatchItemSelectedListener(M0 m02, boolean z6) {
        InterfaceC0533v interfaceC0533v;
        if (!z6 || (interfaceC0533v = m02.f6606l) == null) {
            return;
        }
        ((flix.com.vision.activities.leanback.fragment.k) interfaceC0533v).onItemSelected((A0) null, (Object) null, m02, m02.getRowObject());
    }

    public abstract void freeze(M0 m02, boolean z6);

    public final K0 getHeaderPresenter() {
        return this.f6617a;
    }

    public final M0 getRowViewHolder(A0 a02) {
        return a02 instanceof L0 ? ((L0) a02).f6593b : (M0) a02;
    }

    public final boolean getSelectEffectEnabled() {
        return this.f6618b;
    }

    public final float getSelectLevel(A0 a02) {
        return getRowViewHolder(a02).f6604j;
    }

    public void initializeRowViewHolder(M0 m02) {
        m02.f6603i = true;
        if (isClippingChildren()) {
            return;
        }
        View view = m02.f6460a;
        if (view instanceof ViewGroup) {
            ((ViewGroup) view).setClipChildren(false);
        }
        L0 l02 = m02.f6596b;
        if (l02 != null) {
            ((ViewGroup) l02.f6460a).setClipChildren(false);
        }
    }

    public boolean isClippingChildren() {
        return false;
    }

    public abstract boolean isUsingDefaultSelectEffect();

    public void onBindRowViewHolder(M0 m02, Object obj) {
        m02.f6599e = obj;
        m02.f6598d = obj instanceof H0 ? (H0) obj : null;
        if (m02.f6597c == null || m02.getRow() == null) {
            return;
        }
        this.f6617a.onBindViewHolder(m02.f6597c, obj);
    }

    @Override // androidx.leanback.widget.C0
    public final void onBindViewHolder(A0 a02, Object obj) {
        onBindRowViewHolder(getRowViewHolder(a02), obj);
    }

    @Override // androidx.leanback.widget.C0
    public final A0 onCreateViewHolder(ViewGroup viewGroup) {
        A0 l02;
        M0 createRowViewHolder = createRowViewHolder(viewGroup);
        createRowViewHolder.f6603i = false;
        K0 k02 = this.f6617a;
        if (k02 != null || (isUsingDefaultSelectEffect() && getSelectEffectEnabled())) {
            I0 i02 = new I0(viewGroup.getContext());
            if (k02 != null) {
                createRowViewHolder.f6597c = (J0) k02.onCreateViewHolder((ViewGroup) createRowViewHolder.f6460a);
            }
            l02 = new L0(i02, createRowViewHolder);
        } else {
            l02 = createRowViewHolder;
        }
        initializeRowViewHolder(createRowViewHolder);
        if (createRowViewHolder.f6603i) {
            return l02;
        }
        throw new RuntimeException("super.initializeRowViewHolder() must be called");
    }

    public void onRowViewAttachedToWindow(M0 m02) {
        J0 j02 = m02.f6597c;
        if (j02 != null) {
            this.f6617a.onViewAttachedToWindow(j02);
        }
    }

    public void onRowViewDetachedFromWindow(M0 m02) {
        J0 j02 = m02.f6597c;
        if (j02 != null) {
            this.f6617a.onViewDetachedFromWindow(j02);
        }
        C0.cancelAnimationsRecursive(m02.f6460a);
    }

    public void onRowViewExpanded(M0 m02, boolean z6) {
        if (this.f6617a != null && m02.f6597c != null) {
            ((I0) m02.f6596b.f6460a).showHeader(m02.isExpanded());
        }
        a(m02, m02.f6460a);
    }

    public void onRowViewSelected(M0 m02, boolean z6) {
        dispatchItemSelectedListener(m02, z6);
        if (this.f6617a != null && m02.f6597c != null) {
            ((I0) m02.f6596b.f6460a).showHeader(m02.isExpanded());
        }
        a(m02, m02.f6460a);
    }

    public void onSelectLevelChanged(M0 m02) {
        if (getSelectEffectEnabled()) {
            m02.f6605k.setActiveLevel(m02.f6604j);
            J0 j02 = m02.f6597c;
            if (j02 != null) {
                this.f6617a.setSelectLevel(j02, m02.f6604j);
            }
            if (isUsingDefaultSelectEffect()) {
                ((I0) m02.f6596b.f6460a).setForegroundColor(m02.f6605k.getPaint().getColor());
            }
        }
    }

    public void onUnbindRowViewHolder(M0 m02) {
        J0 j02 = m02.f6597c;
        if (j02 != null) {
            this.f6617a.onUnbindViewHolder(j02);
        }
        m02.f6598d = null;
        m02.f6599e = null;
    }

    @Override // androidx.leanback.widget.C0
    public final void onUnbindViewHolder(A0 a02) {
        onUnbindRowViewHolder(getRowViewHolder(a02));
    }

    @Override // androidx.leanback.widget.C0
    public final void onViewAttachedToWindow(A0 a02) {
        onRowViewAttachedToWindow(getRowViewHolder(a02));
    }

    @Override // androidx.leanback.widget.C0
    public final void onViewDetachedFromWindow(A0 a02) {
        onRowViewDetachedFromWindow(getRowViewHolder(a02));
    }

    public void setEntranceTransitionState(M0 m02, boolean z6) {
        J0 j02 = m02.f6597c;
        if (j02 == null || j02.f6460a.getVisibility() == 8) {
            return;
        }
        m02.f6597c.f6460a.setVisibility(z6 ? 0 : 4);
    }

    public final void setRowViewExpanded(A0 a02, boolean z6) {
        M0 rowViewHolder = getRowViewHolder(a02);
        rowViewHolder.f6602h = z6;
        onRowViewExpanded(rowViewHolder, z6);
    }

    public final void setRowViewSelected(A0 a02, boolean z6) {
        M0 rowViewHolder = getRowViewHolder(a02);
        rowViewHolder.f6601g = z6;
        onRowViewSelected(rowViewHolder, z6);
    }

    public final void setSelectLevel(A0 a02, float f3) {
        M0 rowViewHolder = getRowViewHolder(a02);
        rowViewHolder.f6604j = f3;
        onSelectLevelChanged(rowViewHolder);
    }
}
