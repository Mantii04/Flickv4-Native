package d4;

import com.malinskiy.superrecyclerview.SuperRecyclerView;
import m1.X;

/* renamed from: d4.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0809c extends X {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SuperRecyclerView f13583a;

    public C0809c(SuperRecyclerView superRecyclerView) {
        this.f13583a = superRecyclerView;
    }

    public final void a() {
        SuperRecyclerView superRecyclerView = this.f13583a;
        superRecyclerView.f13328f.setVisibility(8);
        superRecyclerView.f13329j.setVisibility(8);
        superRecyclerView.f13321E = false;
        superRecyclerView.f13322F.setRefreshing(false);
        if (superRecyclerView.f13327e.getAdapter().getItemCount() == 0 && superRecyclerView.f13341y != 0) {
            superRecyclerView.f13330m.setVisibility(0);
        } else if (superRecyclerView.f13341y != 0) {
            superRecyclerView.f13330m.setVisibility(8);
        }
    }

    @Override // m1.X
    public void onChanged() {
        super.onChanged();
        a();
    }

    @Override // m1.X
    public void onItemRangeChanged(int i2, int i7) {
        super.onItemRangeChanged(i2, i7);
        a();
    }

    @Override // m1.X
    public void onItemRangeInserted(int i2, int i7) {
        super.onItemRangeInserted(i2, i7);
        a();
    }

    @Override // m1.X
    public void onItemRangeRemoved(int i2, int i7) {
        super.onItemRangeRemoved(i2, i7);
        a();
    }
}
