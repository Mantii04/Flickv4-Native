package m1;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public abstract class G0 extends AbstractC1290k0 {

    /* renamed from: a, reason: collision with root package name */
    public RecyclerView f18273a;

    /* renamed from: b, reason: collision with root package name */
    public final F0 f18274b = new F0(this);

    public final void a() {
        AbstractC1286i0 layoutManager;
        View findSnapView;
        RecyclerView recyclerView = this.f18273a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (findSnapView = findSnapView(layoutManager)) == null) {
            return;
        }
        int[] calculateDistanceToFinalSnap = calculateDistanceToFinalSnap(layoutManager, findSnapView);
        int i2 = calculateDistanceToFinalSnap[0];
        if (i2 == 0 && calculateDistanceToFinalSnap[1] == 0) {
            return;
        }
        this.f18273a.smoothScrollBy(i2, calculateDistanceToFinalSnap[1]);
    }

    public void attachToRecyclerView(RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.f18273a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        F0 f02 = this.f18274b;
        if (recyclerView2 != null) {
            recyclerView2.removeOnScrollListener(f02);
            this.f18273a.setOnFlingListener(null);
        }
        this.f18273a = recyclerView;
        if (recyclerView != null) {
            if (recyclerView.getOnFlingListener() != null) {
                throw new IllegalStateException("An instance of OnFlingListener already set.");
            }
            this.f18273a.addOnScrollListener(f02);
            this.f18273a.setOnFlingListener(this);
            new Scroller(this.f18273a.getContext(), new DecelerateInterpolator());
            a();
        }
    }

    public abstract int[] calculateDistanceToFinalSnap(AbstractC1286i0 abstractC1286i0, View view);

    public abstract w0 createScroller(AbstractC1286i0 abstractC1286i0);

    @SuppressLint({"UnknownNullness"})
    public abstract View findSnapView(AbstractC1286i0 abstractC1286i0);

    @SuppressLint({"UnknownNullness"})
    public abstract int findTargetSnapPosition(AbstractC1286i0 abstractC1286i0, int i2, int i7);

    @Override // m1.AbstractC1290k0
    public boolean onFling(int i2, int i7) {
        w0 createScroller;
        int findTargetSnapPosition;
        AbstractC1286i0 layoutManager = this.f18273a.getLayoutManager();
        if (layoutManager == null || this.f18273a.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.f18273a.getMinFlingVelocity();
        if ((Math.abs(i7) <= minFlingVelocity && Math.abs(i2) <= minFlingVelocity) || !(layoutManager instanceof v0) || (createScroller = createScroller(layoutManager)) == null || (findTargetSnapPosition = findTargetSnapPosition(layoutManager, i2, i7)) == -1) {
            return false;
        }
        createScroller.setTargetPosition(findTargetSnapPosition);
        layoutManager.startSmoothScroll(createScroller);
        return true;
    }
}
