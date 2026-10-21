package androidx.preference;

import android.text.TextUtils;
import h1.InterfaceC0961b;

/* loaded from: classes.dex */
public final class b implements InterfaceC0961b {

    /* renamed from: a, reason: collision with root package name */
    public static b f7942a;

    public static b getInstance() {
        if (f7942a == null) {
            f7942a = new b();
        }
        return f7942a;
    }

    @Override // h1.InterfaceC0961b
    public CharSequence provideSummary(ListPreference listPreference) {
        return TextUtils.isEmpty(listPreference.getEntry()) ? listPreference.getContext().getString(R.string.not_set) : listPreference.getEntry();
    }
}
