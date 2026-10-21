package e4;

import androidx.recyclerview.widget.RecyclerView;
import m1.AbstractC1294m0;

/* renamed from: e4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0854a extends AbstractC1294m0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f13935a;

    public C0854a(g gVar) {
        this.f13935a = gVar;
    }

    @Override // m1.AbstractC1294m0
    public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
        this.f13935a.setEnabled(i2 != 1);
    }

    @Override // m1.AbstractC1294m0
    public void onScrolled(RecyclerView recyclerView, int i2, int i7) {
    }
}
