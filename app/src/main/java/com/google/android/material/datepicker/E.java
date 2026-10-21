package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;

/* loaded from: classes2.dex */
public final class E implements AdapterView.OnItemClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendarGridView f12593b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ G f12594e;

    public E(G g7, MaterialCalendarGridView materialCalendarGridView) {
        this.f12594e = g7;
        this.f12593b = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j7) {
        MaterialCalendarGridView materialCalendarGridView = this.f12593b;
        D adapter = materialCalendarGridView.getAdapter();
        if (i2 < adapter.a() || i2 > adapter.b()) {
            return;
        }
        G g7 = this.f12594e;
        g7.f12598e.onDayClick(materialCalendarGridView.getAdapter().getItem(i2).longValue());
    }
}
