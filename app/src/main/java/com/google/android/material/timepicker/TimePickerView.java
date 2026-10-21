package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;

/* loaded from: classes2.dex */
class TimePickerView extends ConstraintLayout {

    /* renamed from: E, reason: collision with root package name */
    public static final /* synthetic */ int f12972E = 0;

    /* renamed from: D, reason: collision with root package name */
    public final Chip f12973D;

    public TimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (view == this && i2 == 0) {
            this.f12973D.sendAccessibilityEvent(8);
        }
    }

    public TimePickerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        m mVar = new m(this);
        LayoutInflater.from(context).inflate(R.layout.material_timepicker, this);
        ((MaterialButtonToggleGroup) findViewById(R.id.material_clock_period_toggle)).addOnButtonCheckedListener(new l(this));
        Chip chip = (Chip) findViewById(R.id.material_minute_tv);
        Chip chip2 = (Chip) findViewById(R.id.material_hour_tv);
        this.f12973D = chip2;
        o oVar = new o(new GestureDetector(getContext(), new n(this)));
        chip.setOnTouchListener(oVar);
        chip2.setOnTouchListener(oVar);
        chip.setTag(R.id.selection_type, 12);
        chip2.setTag(R.id.selection_type, 10);
        chip.setOnClickListener(mVar);
        chip2.setOnClickListener(mVar);
        chip.setAccessibilityClassName("android.view.View");
        chip2.setAccessibilityClassName("android.view.View");
    }
}
