package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.material.R;
import java.util.Locale;
import m1.V;

/* loaded from: classes2.dex */
public final class O extends V {

    /* renamed from: d, reason: collision with root package name */
    public final MaterialCalendar f12618d;

    public O(MaterialCalendar materialCalendar) {
        this.f12618d = materialCalendar;
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f12618d.f12603h0.f12631n;
    }

    @Override // m1.V
    public void onBindViewHolder(N n7, int i2) {
        MaterialCalendar materialCalendar = this.f12618d;
        int i7 = materialCalendar.f12603h0.f12626b.f12583f + i2;
        n7.f12617u.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i7)));
        TextView textView = n7.f12617u;
        Context context = textView.getContext();
        textView.setContentDescription(M.b().get(1) == i7 ? String.format(context.getString(R.string.mtrl_picker_navigate_to_current_year_description), Integer.valueOf(i7)) : String.format(context.getString(R.string.mtrl_picker_navigate_to_year_description), Integer.valueOf(i7)));
        C0752f c0752f = materialCalendar.f12606k0;
        if (M.b().get(1) == i7) {
            C0751e c0751e = c0752f.f12634b;
        } else {
            C0751e c0751e2 = c0752f.f12633a;
        }
        materialCalendar.getDateSelector();
        throw null;
    }

    @Override // m1.V
    public N onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new N((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }
}
