package androidx.preference;

import C.v;
import android.content.Context;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public final class PreferenceScreen extends PreferenceGroup {
    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, v.getAttr(context, R.attr.preferenceScreenStyle, android.R.attr.preferenceScreenStyle));
    }
}
