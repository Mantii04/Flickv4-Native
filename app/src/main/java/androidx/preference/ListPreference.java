package androidx.preference;

import C.v;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;

/* loaded from: classes.dex */
public class ListPreference extends DialogPreference {

    /* renamed from: t, reason: collision with root package name */
    public final CharSequence[] f7921t;

    /* renamed from: u, reason: collision with root package name */
    public final CharSequence[] f7922u;

    /* renamed from: v, reason: collision with root package name */
    public final String f7923v;

    public ListPreference(Context context, AttributeSet attributeSet, int i2, int i7) {
        super(context, attributeSet, i2, i7);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListPreference, i2, i7);
        this.f7921t = v.getTextArray(obtainStyledAttributes, R.styleable.ListPreference_entries, R.styleable.ListPreference_android_entries);
        this.f7922u = v.getTextArray(obtainStyledAttributes, R.styleable.ListPreference_entryValues, R.styleable.ListPreference_android_entryValues);
        int i8 = R.styleable.ListPreference_useSimpleSummaryProvider;
        if (v.getBoolean(obtainStyledAttributes, i8, i8, false)) {
            setSummaryProvider(b.getInstance());
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.Preference, i2, i7);
        this.f7923v = v.getString(obtainStyledAttributes2, R.styleable.Preference_summary, R.styleable.Preference_android_summary);
        obtainStyledAttributes2.recycle();
    }

    public int findIndexOfValue(String str) {
        CharSequence[] charSequenceArr;
        if (str == null || (charSequenceArr = this.f7922u) == null) {
            return -1;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            if (charSequenceArr[length].equals(str)) {
                return length;
            }
        }
        return -1;
    }

    public CharSequence[] getEntries() {
        return this.f7921t;
    }

    public CharSequence getEntry() {
        CharSequence[] charSequenceArr;
        int findIndexOfValue = findIndexOfValue(null);
        if (findIndexOfValue < 0 || (charSequenceArr = this.f7921t) == null) {
            return null;
        }
        return charSequenceArr[findIndexOfValue];
    }

    @Override // androidx.preference.Preference
    public CharSequence getSummary() {
        if (getSummaryProvider() != null) {
            return getSummaryProvider().provideSummary(this);
        }
        CharSequence entry = getEntry();
        CharSequence summary = super.getSummary();
        String str = this.f7923v;
        if (str != null) {
            if (entry == null) {
                entry = "";
            }
            String format = String.format(str, entry);
            if (!TextUtils.equals(format, summary)) {
                Log.w("ListPreference", "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
                return format;
            }
        }
        return summary;
    }

    @Override // androidx.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i2) {
        return typedArray.getString(i2);
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, v.getAttr(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle));
    }
}
