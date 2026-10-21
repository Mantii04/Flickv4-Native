package h1;

import android.widget.CompoundButton;
import androidx.preference.SwitchPreferenceCompat;

/* renamed from: h1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0965f implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SwitchPreferenceCompat f16486a;

    public C0965f(SwitchPreferenceCompat switchPreferenceCompat) {
        this.f16486a = switchPreferenceCompat;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
        Boolean valueOf = Boolean.valueOf(z6);
        SwitchPreferenceCompat switchPreferenceCompat = this.f16486a;
        if (switchPreferenceCompat.callChangeListener(valueOf)) {
            switchPreferenceCompat.setChecked(z6);
        } else {
            compoundButton.setChecked(!z6);
        }
    }
}
