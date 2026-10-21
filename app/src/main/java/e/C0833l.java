package e;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

/* renamed from: e.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0833l implements AdapterView.OnItemClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0838q f13776b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0835n f13777e;

    public C0833l(C0835n c0835n, C0838q c0838q) {
        this.f13777e = c0835n;
        this.f13776b = c0838q;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j7) {
        C0835n c0835n = this.f13777e;
        DialogInterface.OnClickListener onClickListener = c0835n.f13798o;
        c0 c0Var = this.f13776b.f13830b;
        onClickListener.onClick(c0Var, i2);
        if (c0835n.f13802s) {
            return;
        }
        c0Var.dismiss();
    }
}
