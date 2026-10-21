package com.google.android.material.datepicker;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.R;
import java.util.Calendar;
import java.util.Locale;

/* renamed from: com.google.android.material.datepicker.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0757k extends BaseAdapter {

    /* renamed from: j, reason: collision with root package name */
    public static final int f12636j;

    /* renamed from: b, reason: collision with root package name */
    public final Calendar f12637b;

    /* renamed from: e, reason: collision with root package name */
    public final int f12638e;

    /* renamed from: f, reason: collision with root package name */
    public final int f12639f;

    static {
        f12636j = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public C0757k() {
        Calendar c7 = M.c(null);
        this.f12637b = c7;
        this.f12638e = c7.getMaximum(7);
        this.f12639f = c7.getFirstDayOfWeek();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f12638e;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.Adapter
    @SuppressLint({"WrongConstant"})
    public View getView(int i2, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        int i7 = i2 + this.f12639f;
        int i8 = this.f12638e;
        if (i7 > i8) {
            i7 -= i8;
        }
        Calendar calendar = this.f12637b;
        calendar.set(7, i7);
        textView.setText(calendar.getDisplayName(7, f12636j, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.mtrl_picker_day_of_week_column_header), calendar.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }

    @Override // android.widget.Adapter
    public Integer getItem(int i2) {
        int i7 = this.f12638e;
        if (i2 >= i7) {
            return null;
        }
        int i8 = i2 + this.f12639f;
        if (i8 > i7) {
            i8 -= i7;
        }
        return Integer.valueOf(i8);
    }

    public C0757k(int i2) {
        Calendar c7 = M.c(null);
        this.f12637b = c7;
        this.f12638e = c7.getMaximum(7);
        this.f12639f = i2;
    }
}
