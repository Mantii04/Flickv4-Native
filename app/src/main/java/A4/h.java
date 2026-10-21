package A4;

import androidx.recyclerview.widget.RecyclerView;
import flix.com.vision.activities.leanback.FilterActivityLeanBack;
import m1.AbstractC1294m0;

/* loaded from: classes2.dex */
public final class h extends AbstractC1294m0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FilterActivityLeanBack f67a;

    public h(FilterActivityLeanBack filterActivityLeanBack) {
        this.f67a = filterActivityLeanBack;
    }

    @Override // m1.AbstractC1294m0
    public void onScrolled(RecyclerView recyclerView, int i2, int i7) {
        super.onScrolled(recyclerView, i2, i7);
        if (i7 > 0) {
            FilterActivityLeanBack filterActivityLeanBack = this.f67a;
            int selectedPosition = filterActivityLeanBack.f15445F.getSelectedPosition();
            int itemCount = filterActivityLeanBack.f15451L.getItemCount();
            if (filterActivityLeanBack.f15441B || itemCount > ((filterActivityLeanBack.f15453N * 2) + selectedPosition) * 2) {
                return;
            }
            int i8 = filterActivityLeanBack.f15455P + 1;
            filterActivityLeanBack.f15455P = i8;
            filterActivityLeanBack.d(i8);
            filterActivityLeanBack.f15441B = true;
        }
    }
}
