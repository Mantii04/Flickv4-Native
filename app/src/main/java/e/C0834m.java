package e;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController$RecycleListView;

/* renamed from: e.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0834m implements AdapterView.OnItemClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AlertController$RecycleListView f13779b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0838q f13780e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C0835n f13781f;

    public C0834m(C0835n c0835n, AlertController$RecycleListView alertController$RecycleListView, C0838q c0838q) {
        this.f13781f = c0835n;
        this.f13779b = alertController$RecycleListView;
        this.f13780e = c0838q;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j7) {
        C0835n c0835n = this.f13781f;
        boolean[] zArr = c0835n.f13800q;
        AlertController$RecycleListView alertController$RecycleListView = this.f13779b;
        if (zArr != null) {
            zArr[i2] = alertController$RecycleListView.isItemChecked(i2);
        }
        c0835n.f13804u.onClick(this.f13780e.f13830b, i2, alertController$RecycleListView.isItemChecked(i2));
    }
}
