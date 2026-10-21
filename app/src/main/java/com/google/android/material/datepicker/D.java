package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.R;
import java.util.Calendar;

/* loaded from: classes2.dex */
public final class D extends BaseAdapter {

    /* renamed from: j, reason: collision with root package name */
    public static final int f12588j = M.c(null).getMaximum(4);

    /* renamed from: m, reason: collision with root package name */
    public static final int f12589m = (M.c(null).getMaximum(7) + M.c(null).getMaximum(5)) - 1;

    /* renamed from: b, reason: collision with root package name */
    public final C f12590b;

    /* renamed from: e, reason: collision with root package name */
    public C0752f f12591e;

    /* renamed from: f, reason: collision with root package name */
    public final C0750d f12592f;

    public D(C c7, C0750d c0750d) {
        this.f12590b = c7;
        this.f12592f = c0750d;
        throw null;
    }

    public final int a() {
        int i2 = this.f12592f.f12630m;
        C c7 = this.f12590b;
        Calendar calendar = c7.f12581b;
        int i7 = calendar.get(7);
        if (i2 <= 0) {
            i2 = calendar.getFirstDayOfWeek();
        }
        int i8 = i7 - i2;
        return i8 < 0 ? i8 + c7.f12584j : i8;
    }

    public final int b() {
        return (a() + this.f12590b.f12585m) - 1;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return f12589m;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2 / this.f12590b.f12584j;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    public void updateSelectedStates(MaterialCalendarGridView materialCalendarGridView) {
        throw null;
    }

    @Override // android.widget.Adapter
    public Long getItem(int i2) {
        if (i2 < a() || i2 > b()) {
            return null;
        }
        int a7 = (i2 - a()) + 1;
        Calendar a8 = M.a(this.f12590b.f12581b);
        a8.set(5, a7);
        return Long.valueOf(a8.getTimeInMillis());
    }

    @Override // android.widget.Adapter
    public TextView getView(int i2, View view, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        if (this.f12591e == null) {
            this.f12591e = new C0752f(context);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day, viewGroup, false);
        }
        int a7 = i2 - a();
        if (a7 >= 0) {
            C c7 = this.f12590b;
            if (a7 < c7.f12585m) {
                textView.setTag(c7);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, "%d", Integer.valueOf(a7 + 1)));
                textView.setVisibility(0);
                textView.setEnabled(true);
                if (getItem(i2) == null || textView == null) {
                    return textView;
                }
                textView.getContext();
                M.b().getTimeInMillis();
                throw null;
            }
        }
        textView.setVisibility(8);
        textView.setEnabled(false);
        if (getItem(i2) == null) {
            textView.getContext();
            M.b().getTimeInMillis();
            throw null;
        }
        return textView;
    }
}
