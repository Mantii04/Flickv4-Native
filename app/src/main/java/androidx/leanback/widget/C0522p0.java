package androidx.leanback.widget;

import android.database.Observable;

/* renamed from: androidx.leanback.widget.p0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0522p0 extends Observable {
    public void notifyChanged() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC0524q0) ((Observable) this).mObservers.get(size)).onChanged();
        }
    }

    public void notifyItemRangeChanged(int i2, int i7) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC0524q0) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i2, i7);
        }
    }

    public void notifyItemRangeInserted(int i2, int i7) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC0524q0) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i2, i7);
        }
    }

    public void notifyItemRangeRemoved(int i2, int i7) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC0524q0) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i2, i7);
        }
    }
}
