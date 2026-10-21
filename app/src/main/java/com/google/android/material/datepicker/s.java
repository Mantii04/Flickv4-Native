package com.google.android.material.datepicker;

import M.C0152b;
import android.view.View;
import com.google.android.material.R;

/* loaded from: classes2.dex */
public final class s extends C0152b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f12648d;

    public s(MaterialCalendar materialCalendar) {
        this.f12648d = materialCalendar;
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityNodeInfo(View view, N.n nVar) {
        super.onInitializeAccessibilityNodeInfo(view, nVar);
        MaterialCalendar materialCalendar = this.f12648d;
        nVar.setHintText(materialCalendar.f12612q0.getVisibility() == 0 ? materialCalendar.getString(R.string.mtrl_picker_toggle_to_year_selection) : materialCalendar.getString(R.string.mtrl_picker_toggle_to_day_selection));
    }
}
