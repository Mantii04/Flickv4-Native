package h1;

import android.widget.CompoundButton;
import androidx.preference.SwitchPreference;

/* renamed from: h1.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0964e implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SwitchPreference f16485a;

    public C0964e(SwitchPreference switchPreference) {
        this.f16485a = switchPreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
        Boolean valueOf = Boolean.valueOf(z6);
        SwitchPreference switchPreference = this.f16485a;
        if (switchPreference.callChangeListener(valueOf)) {
            switchPreference.setChecked(z6);
        } else {
            compoundButton.setChecked(!z6);
        }
    }
}
