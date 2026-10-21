package com.google.android.material.datepicker;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Calendar;

/* renamed from: com.google.android.material.datepicker.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class ViewOnClickListenerC0758l implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ G f12640b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f12641e;

    public ViewOnClickListenerC0758l(MaterialCalendar materialCalendar, G g7) {
        this.f12641e = materialCalendar;
        this.f12640b = g7;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MaterialCalendar materialCalendar = this.f12641e;
        int findLastVisibleItemPosition = ((LinearLayoutManager) materialCalendar.f12608m0.getLayoutManager()).findLastVisibleItemPosition() - 1;
        if (findLastVisibleItemPosition >= 0) {
            Calendar a7 = M.a(this.f12640b.f12597d.f12626b.f12581b);
            a7.add(2, findLastVisibleItemPosition);
            materialCalendar.i(new C(a7));
        }
    }
}
