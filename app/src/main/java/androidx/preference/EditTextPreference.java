package androidx.preference;

import C.v;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public class EditTextPreference extends DialogPreference {
    public EditTextPreference(Context context, AttributeSet attributeSet, int i2, int i7) {
        super(context, attributeSet, i2, i7);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.EditTextPreference, i2, i7);
        int i8 = R.styleable.EditTextPreference_useSimpleSummaryProvider;
        if (v.getBoolean(obtainStyledAttributes, i8, i8, false)) {
            setSummaryProvider(a.getInstance());
        }
        obtainStyledAttributes.recycle();
    }

    public String getText() {
        return null;
    }

    @Override // androidx.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i2) {
        return typedArray.getString(i2);
    }

    @Override // androidx.preference.Preference
    public boolean shouldDisableDependents() {
        return TextUtils.isEmpty(null) || super.shouldDisableDependents();
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public EditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, v.getAttr(context, R.attr.editTextPreferenceStyle, android.R.attr.editTextPreferenceStyle));
    }
}
