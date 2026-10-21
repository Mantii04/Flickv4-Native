package androidx.mediarouter.app;

import android.view.View;
import java.util.Iterator;
import java.util.List;
import m1.B0;

/* loaded from: classes.dex */
public final class h0 implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i0 f7794b;

    public h0(i0 i0Var) {
        this.f7794b = i0Var;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        i0 i0Var = this.f7794b;
        boolean p6 = i0Var.p(i0Var.f7751u);
        boolean z6 = !p6;
        boolean isGroup = i0Var.f7751u.isGroup();
        j0 j0Var = i0Var.f7820H;
        if (p6) {
            j0Var.f7835m.f7871n.removeMemberFromDynamicGroup(i0Var.f7751u);
        } else {
            j0Var.f7835m.f7871n.addMemberToDynamicGroup(i0Var.f7751u);
        }
        i0Var.q(z6, !isGroup);
        if (isGroup) {
            List<f1.U> memberRoutes = j0Var.f7835m.f7874r.getMemberRoutes();
            for (f1.U u6 : i0Var.f7751u.getMemberRoutes()) {
                if (memberRoutes.contains(u6) != z6) {
                    Y y6 = (Y) j0Var.f7835m.f7847E.get(u6.getId());
                    if (y6 instanceof i0) {
                        ((i0) y6).q(z6, true);
                    }
                }
            }
        }
        f1.U u7 = i0Var.f7751u;
        m0 m0Var = j0Var.f7835m;
        List<f1.U> memberRoutes2 = m0Var.f7874r.getMemberRoutes();
        int max = Math.max(1, memberRoutes2.size());
        if (u7.isGroup()) {
            Iterator<f1.U> it = u7.getMemberRoutes().iterator();
            while (it.hasNext()) {
                if (memberRoutes2.contains(it.next()) != z6) {
                    max += !p6 ? 1 : -1;
                }
            }
        } else {
            max += p6 ? -1 : 1;
        }
        boolean z7 = m0Var.f7870b0 && m0Var.f7874r.getMemberRoutes().size() > 1;
        boolean z8 = m0Var.f7870b0 && max >= 2;
        if (z7 != z8) {
            B0 findViewHolderForAdapterPosition = m0Var.f7844B.findViewHolderForAdapterPosition(0);
            if (findViewHolderForAdapterPosition instanceof e0) {
                e0 e0Var = (e0) findViewHolderForAdapterPosition;
                j0Var.a(e0Var.f18217a, z8 ? e0Var.f7783z : 0);
            }
        }
    }
}
