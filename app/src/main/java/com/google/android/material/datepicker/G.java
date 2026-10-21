package com.google.android.material.datepicker;

import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.material.R;
import java.util.Calendar;
import m1.C1288j0;
import m1.V;

/* loaded from: classes2.dex */
public final class G extends V {

    /* renamed from: d, reason: collision with root package name */
    public final C0750d f12597d;

    /* renamed from: e, reason: collision with root package name */
    public final p f12598e;

    /* renamed from: f, reason: collision with root package name */
    public final int f12599f;

    public G(ContextThemeWrapper contextThemeWrapper, C0750d c0750d, p pVar) {
        C c7 = c0750d.f12626b;
        C c8 = c0750d.f12629j;
        if (c7.compareTo(c8) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (c8.compareTo(c0750d.f12627e) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.f12599f = (contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * D.f12588j) + (y.l(contextThemeWrapper, android.R.attr.windowFullscreen) ? contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) : 0);
        this.f12597d = c0750d;
        this.f12598e = pVar;
        setHasStableIds(true);
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f12597d.f12632p;
    }

    @Override // m1.V
    public long getItemId(int i2) {
        Calendar a7 = M.a(this.f12597d.f12626b.f12581b);
        a7.add(2, i2);
        a7.set(5, 1);
        Calendar a8 = M.a(a7);
        a8.get(2);
        a8.get(1);
        a8.getMaximum(7);
        a8.getActualMaximum(5);
        a8.getTimeInMillis();
        return a8.getTimeInMillis();
    }

    @Override // m1.V
    public void onBindViewHolder(F f3, int i2) {
        C0750d c0750d = this.f12597d;
        Calendar a7 = M.a(c0750d.f12626b.f12581b);
        a7.add(2, i2);
        C c7 = new C(a7);
        f3.f12595u.setText(c7.e());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) f3.f12596v.findViewById(R.id.month_grid);
        if (materialCalendarGridView.getAdapter() == null || !c7.equals(materialCalendarGridView.getAdapter().f12590b)) {
            new D(c7, c0750d);
            throw null;
        }
        materialCalendarGridView.invalidate();
        materialCalendarGridView.getAdapter().updateSelectedStates(materialCalendarGridView);
        materialCalendarGridView.setOnItemClickListener(new E(this, materialCalendarGridView));
    }

    @Override // m1.V
    public F onCreateViewHolder(ViewGroup viewGroup, int i2) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!y.l(viewGroup.getContext(), android.R.attr.windowFullscreen)) {
            return new F(linearLayout, false);
        }
        linearLayout.setLayoutParams(new C1288j0(-1, this.f12599f));
        return new F(linearLayout, true);
    }
}
