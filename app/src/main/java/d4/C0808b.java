package d4;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import m1.AbstractC1286i0;
import m1.AbstractC1294m0;

/* renamed from: d4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0808b extends AbstractC1294m0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SuperRecyclerView f13582a;

    public C0808b(SuperRecyclerView superRecyclerView) {
        this.f13582a = superRecyclerView;
    }

    @Override // m1.AbstractC1294m0
    public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
        super.onScrollStateChanged(recyclerView, i2);
        SuperRecyclerView superRecyclerView = this.f13582a;
        AbstractC1294m0 abstractC1294m0 = superRecyclerView.f13319C;
        if (abstractC1294m0 != null) {
            abstractC1294m0.onScrollStateChanged(recyclerView, i2);
        }
        AbstractC1294m0 abstractC1294m02 = superRecyclerView.f13318B;
        if (abstractC1294m02 != null) {
            abstractC1294m02.onScrollStateChanged(recyclerView, i2);
        }
    }

    @Override // m1.AbstractC1294m0
    public void onScrolled(RecyclerView recyclerView, int i2, int i7) {
        int findLastVisibleItemPosition;
        super.onScrolled(recyclerView, i2, i7);
        SuperRecyclerView superRecyclerView = this.f13582a;
        AbstractC1286i0 layoutManager = superRecyclerView.f13327e.getLayoutManager();
        if (superRecyclerView.f13317A == null) {
            if (layoutManager instanceof GridLayoutManager) {
                superRecyclerView.f13317A = SuperRecyclerView.LAYOUT_MANAGER_TYPE.f13344e;
            } else if (layoutManager instanceof LinearLayoutManager) {
                superRecyclerView.f13317A = SuperRecyclerView.LAYOUT_MANAGER_TYPE.f13343b;
            } else {
                if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
                    throw new RuntimeException("Unsupported LayoutManager used. Valid ones are LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager");
                }
                superRecyclerView.f13317A = SuperRecyclerView.LAYOUT_MANAGER_TYPE.f13345f;
            }
        }
        int ordinal = superRecyclerView.f13317A.ordinal();
        if (ordinal == 0) {
            findLastVisibleItemPosition = ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
        } else if (ordinal == 1) {
            findLastVisibleItemPosition = ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
        } else if (ordinal != 2) {
            findLastVisibleItemPosition = -1;
        } else {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            if (superRecyclerView.f13325I == null) {
                superRecyclerView.f13325I = new int[staggeredGridLayoutManager.getSpanCount()];
            }
            staggeredGridLayoutManager.findLastVisibleItemPositions(superRecyclerView.f13325I);
            int i8 = Integer.MIN_VALUE;
            for (int i9 : superRecyclerView.f13325I) {
                if (i9 > i8) {
                    i8 = i9;
                }
            }
            findLastVisibleItemPosition = i8;
        }
        int childCount = layoutManager.getChildCount();
        int itemCount = layoutManager.getItemCount();
        int i10 = itemCount - findLastVisibleItemPosition;
        if ((i10 <= superRecyclerView.f13326b || (i10 == 0 && itemCount > childCount)) && !superRecyclerView.f13321E) {
            superRecyclerView.f13321E = true;
            if (superRecyclerView.f13320D != null) {
                superRecyclerView.f13329j.setVisibility(0);
                superRecyclerView.f13320D.onMoreAsked(superRecyclerView.f13327e.getAdapter().getItemCount(), superRecyclerView.f13326b, findLastVisibleItemPosition);
            }
        }
        AbstractC1294m0 abstractC1294m0 = superRecyclerView.f13319C;
        if (abstractC1294m0 != null) {
            abstractC1294m0.onScrolled(recyclerView, i2, i7);
        }
        AbstractC1294m0 abstractC1294m02 = superRecyclerView.f13318B;
        if (abstractC1294m02 != null) {
            abstractC1294m02.onScrolled(recyclerView, i2, i7);
        }
    }
}
