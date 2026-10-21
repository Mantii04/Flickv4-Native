package m1;

import M.AbstractC0181p0;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$Adapter$StateRestorationPolicy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class V {

    /* renamed from: a, reason: collision with root package name */
    public final W f18339a = new W();

    /* renamed from: b, reason: collision with root package name */
    public boolean f18340b = false;

    /* renamed from: c, reason: collision with root package name */
    public final RecyclerView$Adapter$StateRestorationPolicy f18341c = RecyclerView$Adapter$StateRestorationPolicy.f8083b;

    public final void bindViewHolder(B0 b02, int i2) {
        boolean z6 = b02.f18235s == null;
        if (z6) {
            b02.f18219c = i2;
            if (hasStableIds()) {
                b02.f18221e = getItemId(i2);
            }
            b02.f18226j = (b02.f18226j & (-520)) | 1;
            I.s.beginSection("RV OnBindView");
        }
        b02.f18235s = this;
        boolean z7 = RecyclerView.f7998J0;
        View view = b02.f18217a;
        if (z7) {
            if (view.getParent() == null && AbstractC0181p0.isAttachedToWindow(view) != b02.h()) {
                throw new IllegalStateException("Temp-detached state out of sync with reality. holder.isTmpDetached(): " + b02.h() + ", attached to window: " + AbstractC0181p0.isAttachedToWindow(view) + ", holder: " + b02);
            }
            if (view.getParent() == null && AbstractC0181p0.isAttachedToWindow(view)) {
                throw new IllegalStateException("Attempting to bind attached holder with no parent (AKA temp detached): " + b02);
            }
        }
        onBindViewHolder(b02, i2, b02.b());
        if (z6) {
            ArrayList arrayList = b02.f18227k;
            if (arrayList != null) {
                arrayList.clear();
            }
            b02.f18226j &= -1025;
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof C1288j0) {
                ((C1288j0) layoutParams).f18411c = true;
            }
            I.s.endSection();
        }
    }

    public final B0 createViewHolder(ViewGroup viewGroup, int i2) {
        try {
            I.s.beginSection("RV CreateView");
            B0 onCreateViewHolder = onCreateViewHolder(viewGroup, i2);
            if (onCreateViewHolder.f18217a.getParent() != null) {
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            }
            onCreateViewHolder.f18222f = i2;
            return onCreateViewHolder;
        } finally {
            I.s.endSection();
        }
    }

    public int findRelativeAdapterPositionIn(V v6, B0 b02, int i2) {
        if (v6 == this) {
            return i2;
        }
        return -1;
    }

    public abstract int getItemCount();

    public long getItemId(int i2) {
        return -1L;
    }

    public int getItemViewType(int i2) {
        return 0;
    }

    public final boolean hasObservers() {
        return this.f18339a.hasObservers();
    }

    public final boolean hasStableIds() {
        return this.f18340b;
    }

    public final void notifyDataSetChanged() {
        this.f18339a.notifyChanged();
    }

    public final void notifyItemRangeChanged(int i2, int i7) {
        this.f18339a.notifyItemRangeChanged(i2, i7);
    }

    public final void notifyItemRangeInserted(int i2, int i7) {
        this.f18339a.notifyItemRangeInserted(i2, i7);
    }

    public final void notifyItemRangeRemoved(int i2, int i7) {
        this.f18339a.notifyItemRangeRemoved(i2, i7);
    }

    public final void notifyItemRemoved(int i2) {
        this.f18339a.notifyItemRangeRemoved(i2, 1);
    }

    public abstract void onBindViewHolder(B0 b02, int i2);

    public void onBindViewHolder(B0 b02, int i2, List<Object> list) {
        onBindViewHolder(b02, i2);
    }

    public abstract B0 onCreateViewHolder(ViewGroup viewGroup, int i2);

    public boolean onFailedToRecycleView(B0 b02) {
        return false;
    }

    public void registerAdapterDataObserver(X x6) {
        this.f18339a.registerObserver(x6);
    }

    public void setHasStableIds(boolean z6) {
        if (hasObservers()) {
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }
        this.f18340b = z6;
    }

    public void unregisterAdapterDataObserver(X x6) {
        this.f18339a.unregisterObserver(x6);
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
    }

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
    }

    public void onViewAttachedToWindow(B0 b02) {
    }

    public void onViewDetachedFromWindow(B0 b02) {
    }

    public void onViewRecycled(B0 b02) {
    }
}
