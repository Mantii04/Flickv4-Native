package h1;

import android.widget.CompoundButton;
import androidx.preference.CheckBoxPreference;

/* renamed from: h1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0960a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CheckBoxPreference f16484a;

    public C0960a(CheckBoxPreference checkBoxPreference) {
        this.f16484a = checkBoxPreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
        Boolean valueOf = Boolean.valueOf(z6);
        CheckBoxPreference checkBoxPreference = this.f16484a;
        if (checkBoxPreference.callChangeListener(valueOf)) {
            checkBoxPreference.setChecked(z6);
        } else {
            compoundButton.setChecked(!z6);
        }
    }
}
