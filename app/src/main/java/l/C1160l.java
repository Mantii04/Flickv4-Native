package l;

import android.content.Context;
import android.view.View;
import androidx.appcompat.R;
import k.C1058C;
import k.SubMenuC1068M;

/* renamed from: l.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1160l extends C1058C {

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ C1186u f17917m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1160l(C1186u c1186u, Context context, SubMenuC1068M subMenuC1068M, View view) {
        super(context, subMenuC1068M, view, false, R.attr.actionOverflowMenuStyle);
        this.f17917m = c1186u;
        if (!((k.s) subMenuC1068M.getItem()).isActionButton()) {
            View view2 = c1186u.f18013s;
            setAnchorView(view2 == null ? (View) c1186u.f17093q : view2);
        }
        setPresenterCallback(c1186u.f18011G);
    }

    @Override // k.C1058C
    public void onDismiss() {
        C1186u c1186u = this.f17917m;
        c1186u.f18008D = null;
        c1186u.f18012H = 0;
        super.onDismiss();
    }
}
