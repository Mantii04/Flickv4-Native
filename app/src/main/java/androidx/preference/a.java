package androidx.preference;

import android.text.TextUtils;
import h1.InterfaceC0961b;

/* loaded from: classes.dex */
public final class a implements InterfaceC0961b {

    /* renamed from: a, reason: collision with root package name */
    public static a f7941a;

    public static a getInstance() {
        if (f7941a == null) {
            f7941a = new a();
        }
        return f7941a;
    }

    @Override // h1.InterfaceC0961b
    public CharSequence provideSummary(EditTextPreference editTextPreference) {
        return TextUtils.isEmpty(editTextPreference.getText()) ? editTextPreference.getContext().getString(R.string.not_set) : editTextPreference.getText();
    }
}
