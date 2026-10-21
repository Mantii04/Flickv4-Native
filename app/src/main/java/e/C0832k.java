package e;

import android.R;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;

/* renamed from: e.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0832k extends ArrayAdapter {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AlertController$RecycleListView f13773b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0835n f13774e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0832k(C0835n c0835n, Context context, int i2, CharSequence[] charSequenceArr, AlertController$RecycleListView alertController$RecycleListView) {
        super(context, i2, R.id.text1, charSequenceArr);
        this.f13774e = c0835n;
        this.f13773b = alertController$RecycleListView;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i2, view, viewGroup);
        boolean[] zArr = this.f13774e.f13800q;
        if (zArr != null && zArr[i2]) {
            this.f13773b.setItemChecked(i2, true);
        }
        return view2;
    }
}
