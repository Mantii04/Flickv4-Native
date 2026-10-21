package androidx.leanback.app;

import androidx.leanback.widget.AbstractC0532u0;
import androidx.leanback.widget.C0492b0;
import androidx.recyclerview.widget.RecyclerView;
import m1.B0;

/* loaded from: classes.dex */
public final class a extends AbstractC0532u0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f6380a;

    public a(c cVar) {
        this.f6380a = cVar;
    }

    @Override // androidx.leanback.widget.AbstractC0532u0
    public void onChildViewHolderSelected(RecyclerView recyclerView, B0 b02, int i2, int i7) {
        c cVar = this.f6380a;
        if (cVar.f6388k0.f6381a) {
            return;
        }
        cVar.f6386i0 = i2;
        h hVar = (h) cVar;
        C0492b0 c0492b0 = hVar.f6402m0;
        if (c0492b0 == b02 && hVar.f6403n0 == i7) {
            return;
        }
        hVar.f6403n0 = i7;
        if (c0492b0 != null) {
            h.j(c0492b0, false, false);
        }
        C0492b0 c0492b02 = (C0492b0) b02;
        hVar.f6402m0 = c0492b02;
        if (c0492b02 != null) {
            h.j(c0492b02, true, false);
        }
    }
}
