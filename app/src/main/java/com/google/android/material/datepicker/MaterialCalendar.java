package com.google.android.material.datepicker;

import M.AbstractC0181p0;
import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;

/* loaded from: classes2.dex */
public final class MaterialCalendar<S> extends I {

    /* renamed from: g0, reason: collision with root package name */
    public int f12602g0;

    /* renamed from: h0, reason: collision with root package name */
    public C0750d f12603h0;

    /* renamed from: i0, reason: collision with root package name */
    public C f12604i0;

    /* renamed from: j0, reason: collision with root package name */
    public CalendarSelector f12605j0;

    /* renamed from: k0, reason: collision with root package name */
    public C0752f f12606k0;

    /* renamed from: l0, reason: collision with root package name */
    public RecyclerView f12607l0;

    /* renamed from: m0, reason: collision with root package name */
    public RecyclerView f12608m0;

    /* renamed from: n0, reason: collision with root package name */
    public View f12609n0;

    /* renamed from: o0, reason: collision with root package name */
    public View f12610o0;

    /* renamed from: p0, reason: collision with root package name */
    public View f12611p0;

    /* renamed from: q0, reason: collision with root package name */
    public View f12612q0;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class CalendarSelector {

        /* renamed from: b, reason: collision with root package name */
        public static final CalendarSelector f12613b;

        /* renamed from: e, reason: collision with root package name */
        public static final CalendarSelector f12614e;

        /* renamed from: f, reason: collision with root package name */
        public static final /* synthetic */ CalendarSelector[] f12615f;

        static {
            CalendarSelector calendarSelector = new CalendarSelector("DAY", 0);
            f12613b = calendarSelector;
            CalendarSelector calendarSelector2 = new CalendarSelector("YEAR", 1);
            f12614e = calendarSelector2;
            f12615f = new CalendarSelector[]{calendarSelector, calendarSelector2};
        }

        public static CalendarSelector valueOf(String str) {
            return (CalendarSelector) Enum.valueOf(CalendarSelector.class, str);
        }

        public static CalendarSelector[] values() {
            return (CalendarSelector[]) f12615f.clone();
        }
    }

    public static <T> MaterialCalendar<T> newInstance(InterfaceC0753g interfaceC0753g, int i2, C0750d c0750d, AbstractC0756j abstractC0756j) {
        MaterialCalendar<T> materialCalendar = new MaterialCalendar<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i2);
        bundle.putParcelable("GRID_SELECTOR_KEY", interfaceC0753g);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", c0750d);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", abstractC0756j);
        bundle.putParcelable("CURRENT_MONTH_KEY", c0750d.f12629j);
        materialCalendar.setArguments(bundle);
        return materialCalendar;
    }

    public InterfaceC0753g getDateSelector() {
        return null;
    }

    public final void i(C c7) {
        G g7 = (G) this.f12608m0.getAdapter();
        int f3 = g7.f12597d.f12626b.f(c7);
        int f7 = f3 - g7.f12597d.f12626b.f(this.f12604i0);
        boolean z6 = Math.abs(f7) > 3;
        boolean z7 = f7 > 0;
        this.f12604i0 = c7;
        if (z6 && z7) {
            this.f12608m0.scrollToPosition(f3 - 3);
            this.f12608m0.post(new RunnableC0759m(this, f3));
        } else if (!z6) {
            this.f12608m0.post(new RunnableC0759m(this, f3));
        } else {
            this.f12608m0.scrollToPosition(f3 + 3);
            this.f12608m0.post(new RunnableC0759m(this, f3));
        }
    }

    public final void j(CalendarSelector calendarSelector) {
        this.f12605j0 = calendarSelector;
        if (calendarSelector == CalendarSelector.f12614e) {
            this.f12607l0.getLayoutManager().scrollToPosition(this.f12604i0.f12583f - ((O) this.f12607l0.getAdapter()).f12618d.f12603h0.f12626b.f12583f);
            this.f12611p0.setVisibility(0);
            this.f12612q0.setVisibility(8);
            this.f12609n0.setVisibility(8);
            this.f12610o0.setVisibility(8);
            return;
        }
        if (calendarSelector == CalendarSelector.f12613b) {
            this.f12611p0.setVisibility(8);
            this.f12612q0.setVisibility(0);
            this.f12609n0.setVisibility(0);
            this.f12610o0.setVisibility(0);
            i(this.f12604i0);
        }
    }

    @Override // androidx.fragment.app.C
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f12602g0 = bundle.getInt("THEME_RES_ID_KEY");
        if (bundle.getParcelable("GRID_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f12603h0 = (C0750d) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        if (bundle.getParcelable("DAY_VIEW_DECORATOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f12604i0 = (C) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.C
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i2;
        int i7;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f12602g0);
        this.f12606k0 = new C0752f(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        C c7 = this.f12603h0.f12626b;
        if (y.l(contextThemeWrapper, R.attr.windowFullscreen)) {
            i2 = com.google.android.material.R.layout.mtrl_calendar_vertical;
            i7 = 1;
        } else {
            i2 = com.google.android.material.R.layout.mtrl_calendar_horizontal;
            i7 = 0;
        }
        View inflate = cloneInContext.inflate(i2, viewGroup, false);
        Resources resources = requireContext().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(com.google.android.material.R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(com.google.android.material.R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(com.google.android.material.R.dimen.mtrl_calendar_navigation_height);
        int dimensionPixelSize = resources.getDimensionPixelSize(com.google.android.material.R.dimen.mtrl_calendar_days_of_week_height);
        int i8 = D.f12588j;
        inflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(com.google.android.material.R.dimen.mtrl_calendar_month_vertical_padding) * (i8 - 1)) + (resources.getDimensionPixelSize(com.google.android.material.R.dimen.mtrl_calendar_day_height) * i8) + resources.getDimensionPixelOffset(com.google.android.material.R.dimen.mtrl_calendar_bottom_padding));
        GridView gridView = (GridView) inflate.findViewById(com.google.android.material.R.id.mtrl_calendar_days_of_week);
        AbstractC0181p0.setAccessibilityDelegate(gridView, new C0760n());
        int i9 = this.f12603h0.f12630m;
        gridView.setAdapter((ListAdapter) (i9 > 0 ? new C0757k(i9) : new C0757k()));
        gridView.setNumColumns(c7.f12584j);
        gridView.setEnabled(false);
        this.f12608m0 = (RecyclerView) inflate.findViewById(com.google.android.material.R.id.mtrl_calendar_months);
        this.f12608m0.setLayoutManager(new C0761o(this, getContext(), i7, i7));
        this.f12608m0.setTag("MONTHS_VIEW_GROUP_TAG");
        G g7 = new G(contextThemeWrapper, this.f12603h0, new p(this));
        this.f12608m0.setAdapter(g7);
        int integer = contextThemeWrapper.getResources().getInteger(com.google.android.material.R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(com.google.android.material.R.id.mtrl_calendar_year_selector_frame);
        this.f12607l0 = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f12607l0.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f12607l0.setAdapter(new O(this));
            this.f12607l0.addItemDecoration(new r(this));
        }
        if (inflate.findViewById(com.google.android.material.R.id.month_navigation_fragment_toggle) != null) {
            MaterialButton materialButton = (MaterialButton) inflate.findViewById(com.google.android.material.R.id.month_navigation_fragment_toggle);
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            AbstractC0181p0.setAccessibilityDelegate(materialButton, new s(this));
            View findViewById = inflate.findViewById(com.google.android.material.R.id.month_navigation_previous);
            this.f12609n0 = findViewById;
            findViewById.setTag("NAVIGATION_PREV_TAG");
            View findViewById2 = inflate.findViewById(com.google.android.material.R.id.month_navigation_next);
            this.f12610o0 = findViewById2;
            findViewById2.setTag("NAVIGATION_NEXT_TAG");
            this.f12611p0 = inflate.findViewById(com.google.android.material.R.id.mtrl_calendar_year_selector_frame);
            this.f12612q0 = inflate.findViewById(com.google.android.material.R.id.mtrl_calendar_day_selector_frame);
            j(CalendarSelector.f12613b);
            materialButton.setText(this.f12604i0.e());
            this.f12608m0.addOnScrollListener(new t(this, g7, materialButton));
            materialButton.setOnClickListener(new u(this));
            this.f12610o0.setOnClickListener(new v(this, g7));
            this.f12609n0.setOnClickListener(new ViewOnClickListenerC0758l(this, g7));
        }
        if (!y.l(contextThemeWrapper, R.attr.windowFullscreen)) {
            new m1.N().attachToRecyclerView(this.f12608m0);
        }
        this.f12608m0.scrollToPosition(g7.f12597d.f12626b.f(this.f12604i0));
        AbstractC0181p0.setAccessibilityDelegate(this.f12608m0, new q());
        return inflate;
    }

    @Override // androidx.fragment.app.C
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f12602g0);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f12603h0);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f12604i0);
    }
}
