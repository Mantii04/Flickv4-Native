package l;

import android.view.View;
import android.widget.AdapterView;

/* renamed from: l.h0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1149h0 implements AdapterView.OnItemClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1158k0 f17898b;

    public C1149h0(C1158k0 c1158k0) {
        this.f17898b = c1158k0;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j7) {
        C1158k0 c1158k0 = this.f17898b;
        c1158k0.f17912Q.setSelection(i2);
        if (c1158k0.f17912Q.getOnItemClickListener() != null) {
            c1158k0.f17912Q.performItemClick(view, i2, c1158k0.f17909N.getItemId(i2));
        }
        c1158k0.dismiss();
    }
}
