package T4;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import m1.AbstractC1276d0;
import m1.AbstractC1286i0;
import m1.x0;

/* loaded from: classes2.dex */
public final class k extends AbstractC1276d0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f3714a;

    /* renamed from: b, reason: collision with root package name */
    public int f3715b;

    public k(int i2) {
        this(i2, -1);
    }

    @Override // m1.AbstractC1276d0
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, x0 x0Var) {
        int adapterPosition = recyclerView.getChildViewHolder(view).getAdapterPosition();
        int itemCount = x0Var.getItemCount();
        AbstractC1286i0 layoutManager = recyclerView.getLayoutManager();
        if (this.f3715b == -1) {
            this.f3715b = layoutManager instanceof GridLayoutManager ? 2 : layoutManager.canScrollHorizontally() ? 0 : 1;
        }
        int i2 = this.f3715b;
        int i7 = this.f3714a;
        if (i2 == 0) {
            rect.left = i7;
            rect.right = adapterPosition == itemCount - 1 ? i7 : 0;
            rect.top = i7;
            rect.bottom = i7;
            return;
        }
        if (i2 == 1) {
            rect.left = i7;
            rect.right = i7;
            rect.top = i7;
            rect.bottom = adapterPosition == itemCount - 1 ? i7 : 0;
            return;
        }
        if (i2 == 2 && (layoutManager instanceof GridLayoutManager)) {
            int spanCount = ((GridLayoutManager) layoutManager).getSpanCount();
            int i8 = itemCount / spanCount;
            rect.left = i7;
            rect.right = adapterPosition % spanCount == spanCount + (-1) ? i7 : 0;
            rect.top = i7;
            rect.bottom = adapterPosition / spanCount == i8 - 1 ? i7 : 0;
        }
    }

    public k(int i2, int i7) {
        this.f3714a = i2;
        this.f3715b = i7;
    }
}
