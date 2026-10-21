package com.google.android.material.datepicker;

import android.view.View;
import com.google.android.material.datepicker.MaterialCalendar;

/* loaded from: classes2.dex */
public final class u implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f12652b;

    public u(MaterialCalendar materialCalendar) {
        this.f12652b = materialCalendar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MaterialCalendar materialCalendar = this.f12652b;
        MaterialCalendar.CalendarSelector calendarSelector = materialCalendar.f12605j0;
        MaterialCalendar.CalendarSelector calendarSelector2 = MaterialCalendar.CalendarSelector.f12614e;
        MaterialCalendar.CalendarSelector calendarSelector3 = MaterialCalendar.CalendarSelector.f12613b;
        if (calendarSelector == calendarSelector2) {
            materialCalendar.j(calendarSelector3);
        } else if (calendarSelector == calendarSelector3) {
            materialCalendar.j(calendarSelector2);
        }
    }
}
