package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import com.google.android.material.chip.Chip;
import x3.K;

/* loaded from: classes2.dex */
public final class a extends K {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ChipTextInputComboView f12974b;

    public a(ChipTextInputComboView chipTextInputComboView) {
        this.f12974b = chipTextInputComboView;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        boolean isEmpty = TextUtils.isEmpty(editable);
        ChipTextInputComboView chipTextInputComboView = this.f12974b;
        Chip chip = chipTextInputComboView.f12939b;
        if (isEmpty) {
            chip.setText(k.formatText(chipTextInputComboView.getResources(), "00"));
            return;
        }
        int i2 = ChipTextInputComboView.f12938f;
        String formatText = k.formatText(chipTextInputComboView.getResources(), editable);
        if (TextUtils.isEmpty(formatText)) {
            formatText = k.formatText(chipTextInputComboView.getResources(), "00");
        }
        chip.setText(formatText);
    }
}
