package com.google.android.material.datepicker;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Calendar;

/* loaded from: classes2.dex */
public final class v implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ G f12653b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f12654e;

    public v(MaterialCalendar materialCalendar, G g7) {
        this.f12654e = materialCalendar;
        this.f12653b = g7;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MaterialCalendar materialCalendar = this.f12654e;
        int findFirstVisibleItemPosition = ((LinearLayoutManager) materialCalendar.f12608m0.getLayoutManager()).findFirstVisibleItemPosition() + 1;
        if (findFirstVisibleItemPosition < materialCalendar.f12608m0.getAdapter().getItemCount()) {
            Calendar a7 = M.a(this.f12653b.f12597d.f12626b.f12581b);
            a7.add(2, findFirstVisibleItemPosition);
            materialCalendar.i(new C(a7));
        }
    }
}
