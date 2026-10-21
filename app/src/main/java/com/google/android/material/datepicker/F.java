package com.google.android.material.datepicker;

import M.AbstractC0181p0;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.R;
import m1.B0;

/* loaded from: classes2.dex */
public final class F extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public final TextView f12595u;

    /* renamed from: v, reason: collision with root package name */
    public final MaterialCalendarGridView f12596v;

    public F(LinearLayout linearLayout, boolean z6) {
        super(linearLayout);
        TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
        this.f12595u = textView;
        AbstractC0181p0.setAccessibilityHeading(textView, true);
        this.f12596v = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
        if (z6) {
            return;
        }
        textView.setVisibility(8);
    }
}
