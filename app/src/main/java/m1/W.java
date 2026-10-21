package m1;

import android.database.Observable;

/* loaded from: classes.dex */
public final class W extends Observable {
    public boolean hasObservers() {
        return !((Observable) this).mObservers.isEmpty();
    }

    public void notifyChanged() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((X) ((Observable) this).mObservers.get(size)).onChanged();
        }
    }

    public void notifyItemRangeChanged(int i2, int i7) {
        notifyItemRangeChanged(i2, i7, null);
    }

    public void notifyItemRangeInserted(int i2, int i7) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((X) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i2, i7);
        }
    }

    public void notifyItemRangeRemoved(int i2, int i7) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((X) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i2, i7);
        }
    }

    public void notifyItemRangeChanged(int i2, int i7, Object obj) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((X) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i2, i7, obj);
        }
    }
}
