package l;

import android.content.Context;
import android.view.View;
import androidx.appcompat.R;
import k.C1058C;
import k.C1084p;

/* renamed from: l.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1175q extends C1058C {

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ C1186u f17967m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1175q(C1186u c1186u, Context context, C1084p c1084p, View view, boolean z6) {
        super(context, c1084p, view, z6, R.attr.actionOverflowMenuStyle);
        this.f17967m = c1186u;
        setGravity(8388613);
        setPresenterCallback(c1186u.f18011G);
    }

    @Override // k.C1058C
    public void onDismiss() {
        C1186u c1186u = this.f17967m;
        C1084p c1084p = c1186u.f17088f;
        if (c1084p != null) {
            c1084p.close();
        }
        c1186u.f18007C = null;
        super.onDismiss();
    }
}
