package K3;

import android.view.View;
import android.widget.AdapterView;
import l.C1162l1;

/* loaded from: classes2.dex */
public final class v implements AdapterView.OnItemClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f1762b;

    public v(x xVar) {
        this.f1762b = xVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j7) {
        x xVar = this.f1762b;
        C1162l1 c1162l1 = xVar.f1766m;
        x.a(xVar, i2 < 0 ? c1162l1.getSelectedItem() : xVar.getAdapter().getItem(i2));
        AdapterView.OnItemClickListener onItemClickListener = xVar.getOnItemClickListener();
        if (onItemClickListener != null) {
            if (view == null || i2 < 0) {
                view = c1162l1.getSelectedView();
                i2 = c1162l1.getSelectedItemPosition();
                j7 = c1162l1.getSelectedItemId();
            }
            onItemClickListener.onItemClick(c1162l1.getListView(), view, i2, j7);
        }
        c1162l1.dismiss();
    }
}
