package k0;

import androidx.leanback.widget.AbstractC0532u0;
import androidx.leanback.widget.VerticalGridView;
import androidx.recyclerview.widget.RecyclerView;
import m1.B0;

/* renamed from: k0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1087b extends AbstractC0532u0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f17219a;

    public C1087b(e eVar) {
        this.f17219a = eVar;
    }

    @Override // androidx.leanback.widget.AbstractC0532u0
    public void onChildViewHolderSelected(RecyclerView recyclerView, B0 b02, int i2, int i7) {
        e eVar = this.f17219a;
        int indexOf = eVar.f17227e.indexOf((VerticalGridView) recyclerView);
        eVar.c(indexOf);
        if (b02 != null) {
            eVar.onColumnValueChanged(indexOf, ((f) eVar.f17228f.get(indexOf)).getMinValue() + i2);
        }
    }
}
