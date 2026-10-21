package l;

import android.view.View;
import android.widget.AdapterView;

/* renamed from: l.d1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1138d1 implements AdapterView.OnItemSelectedListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1162l1 f17881b;

    public C1138d1(C1162l1 c1162l1) {
        this.f17881b = c1162l1;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j7) {
        W0 w02;
        if (i2 == -1 || (w02 = this.f17881b.f17932f) == null) {
            return;
        }
        w02.setListSelectionHidden(false);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
