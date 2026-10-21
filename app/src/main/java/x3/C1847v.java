package x3;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import m1.D0;

/* renamed from: x3.v, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1847v extends D0 {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C1826A f20920f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1847v(C1826A c1826a, RecyclerView recyclerView) {
        super(recyclerView);
        this.f20920f = c1826a;
    }

    @Override // m1.D0, M.C0152b
    public void onInitializeAccessibilityNodeInfo(View view, N.n nVar) {
        super.onInitializeAccessibilityNodeInfo(view, nVar);
        C1843q c1843q = this.f20920f.f20858m;
        int i2 = 0;
        int i7 = 0;
        while (true) {
            C1826A c1826a = c1843q.f20915g;
            if (i2 >= c1826a.f20858m.getItemCount()) {
                nVar.setCollectionInfo(N.l.obtain(i7, 1, false));
                return;
            }
            int itemViewType = c1826a.f20858m.getItemViewType(i2);
            if (itemViewType == 0 || itemViewType == 1) {
                i7++;
            }
            i2++;
        }
    }
}
