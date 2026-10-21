package androidx.leanback.widget;

import android.annotation.SuppressLint;

/* renamed from: androidx.leanback.widget.r0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0526r0 {

    /* renamed from: a, reason: collision with root package name */
    public final C0522p0 f6898a = new C0522p0();

    /* renamed from: b, reason: collision with root package name */
    public D0 f6899b;

    public AbstractC0526r0(C0 c02) {
        setPresenterSelector(new n1(c02));
    }

    public abstract Object get(int i2);

    public long getId(int i2) {
        return -1L;
    }

    public final D0 getPresenterSelector() {
        return this.f6899b;
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public final boolean hasStableIds() {
        return false;
    }

    public final void notifyChanged() {
        this.f6898a.notifyChanged();
    }

    public final void notifyItemRangeChanged(int i2, int i7) {
        this.f6898a.notifyItemRangeChanged(i2, i7);
    }

    public final void notifyItemRangeInserted(int i2, int i7) {
        this.f6898a.notifyItemRangeInserted(i2, i7);
    }

    public final void notifyItemRangeRemoved(int i2, int i7) {
        this.f6898a.notifyItemRangeRemoved(i2, i7);
    }

    public void onPresenterSelectorChanged() {
    }

    public final void registerObserver(AbstractC0524q0 abstractC0524q0) {
        this.f6898a.registerObserver(abstractC0524q0);
    }

    public final void setPresenterSelector(D0 d02) {
        if (d02 == null) {
            throw new IllegalArgumentException("Presenter selector must not be null");
        }
        D0 d03 = this.f6899b;
        boolean z6 = false;
        boolean z7 = d03 != null;
        if (z7 && d03 != d02) {
            z6 = true;
        }
        this.f6899b = d02;
        if (z6) {
            onPresenterSelectorChanged();
        }
        if (z7) {
            notifyChanged();
        }
    }

    public abstract int size();

    public final void unregisterObserver(AbstractC0524q0 abstractC0524q0) {
        this.f6898a.unregisterObserver(abstractC0524q0);
    }
}
