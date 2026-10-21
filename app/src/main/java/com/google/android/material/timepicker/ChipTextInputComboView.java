package com.google.android.material.timepicker;

import M.AbstractC0181p0;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.material.R;
import com.google.android.material.chip.Chip;
import com.google.android.material.textfield.TextInputLayout;
import x3.T;

/* loaded from: classes2.dex */
class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f12938f = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Chip f12939b;

    /* renamed from: e, reason: collision with root package name */
    public final EditText f12940e;

    public ChipTextInputComboView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f12939b.isChecked();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        LocaleList locales;
        super.onConfigurationChanged(configuration);
        if (Build.VERSION.SDK_INT >= 24) {
            locales = getContext().getResources().getConfiguration().getLocales();
            this.f12940e.setImeHintLocales(locales);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z6) {
        Chip chip = this.f12939b;
        chip.setChecked(z6);
        int i2 = z6 ? 0 : 4;
        EditText editText = this.f12940e;
        editText.setVisibility(i2);
        chip.setVisibility(z6 ? 8 : 0);
        if (isChecked()) {
            T.requestFocusAndShowKeyboard(editText, false);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f12939b.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i2, Object obj) {
        this.f12939b.setTag(i2, obj);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.f12939b.toggle();
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        LocaleList locales;
        LayoutInflater from = LayoutInflater.from(context);
        Chip chip = (Chip) from.inflate(R.layout.material_time_chip, (ViewGroup) this, false);
        this.f12939b = chip;
        chip.setAccessibilityClassName("android.view.View");
        TextInputLayout textInputLayout = (TextInputLayout) from.inflate(R.layout.material_time_input, (ViewGroup) this, false);
        EditText editText = textInputLayout.getEditText();
        this.f12940e = editText;
        editText.setVisibility(4);
        editText.addTextChangedListener(new a(this));
        if (Build.VERSION.SDK_INT >= 24) {
            locales = getContext().getResources().getConfiguration().getLocales();
            editText.setImeHintLocales(locales);
        }
        addView(chip);
        addView(textInputLayout);
        TextView textView = (TextView) findViewById(R.id.material_label);
        editText.setId(AbstractC0181p0.generateViewId());
        AbstractC0181p0.setLabelFor(textView, editText.getId());
        editText.setSaveEnabled(false);
        editText.setLongClickable(false);
    }
}
