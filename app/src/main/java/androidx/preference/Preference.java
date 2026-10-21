package androidx.preference;

import C.v;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.media3.common.util.Log;
import cz.msebera.android.httpclient.message.TokenParser;
import h1.AbstractC0962c;
import h1.InterfaceC0961b;

/* loaded from: classes.dex */
public class Preference implements Comparable<Preference> {

    /* renamed from: b, reason: collision with root package name */
    public final Context f7924b;

    /* renamed from: e, reason: collision with root package name */
    public final int f7925e;

    /* renamed from: f, reason: collision with root package name */
    public final CharSequence f7926f;

    /* renamed from: j, reason: collision with root package name */
    public final CharSequence f7927j;

    /* renamed from: m, reason: collision with root package name */
    public final String f7928m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f7929n;

    /* renamed from: p, reason: collision with root package name */
    public final Object f7930p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f7931q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f7932r;

    /* renamed from: s, reason: collision with root package name */
    public InterfaceC0961b f7933s;

    public Preference(Context context, AttributeSet attributeSet, int i2, int i7) {
        this.f7925e = Log.LOG_LEVEL_OFF;
        this.f7929n = true;
        this.f7931q = true;
        this.f7932r = true;
        this.f7924b = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Preference, i2, i7);
        v.getResourceId(obtainStyledAttributes, R.styleable.Preference_icon, R.styleable.Preference_android_icon, 0);
        this.f7928m = v.getString(obtainStyledAttributes, R.styleable.Preference_key, R.styleable.Preference_android_key);
        this.f7926f = v.getText(obtainStyledAttributes, R.styleable.Preference_title, R.styleable.Preference_android_title);
        this.f7927j = v.getText(obtainStyledAttributes, R.styleable.Preference_summary, R.styleable.Preference_android_summary);
        this.f7925e = v.getInt(obtainStyledAttributes, R.styleable.Preference_order, R.styleable.Preference_android_order, Log.LOG_LEVEL_OFF);
        v.getString(obtainStyledAttributes, R.styleable.Preference_fragment, R.styleable.Preference_android_fragment);
        v.getResourceId(obtainStyledAttributes, R.styleable.Preference_layout, R.styleable.Preference_android_layout, R.layout.preference);
        v.getResourceId(obtainStyledAttributes, R.styleable.Preference_widgetLayout, R.styleable.Preference_android_widgetLayout, 0);
        this.f7929n = v.getBoolean(obtainStyledAttributes, R.styleable.Preference_enabled, R.styleable.Preference_android_enabled, true);
        boolean z6 = v.getBoolean(obtainStyledAttributes, R.styleable.Preference_selectable, R.styleable.Preference_android_selectable, true);
        v.getBoolean(obtainStyledAttributes, R.styleable.Preference_persistent, R.styleable.Preference_android_persistent, true);
        v.getString(obtainStyledAttributes, R.styleable.Preference_dependency, R.styleable.Preference_android_dependency);
        int i8 = R.styleable.Preference_allowDividerAbove;
        v.getBoolean(obtainStyledAttributes, i8, i8, z6);
        int i9 = R.styleable.Preference_allowDividerBelow;
        v.getBoolean(obtainStyledAttributes, i9, i9, z6);
        if (obtainStyledAttributes.hasValue(R.styleable.Preference_defaultValue)) {
            this.f7930p = onGetDefaultValue(obtainStyledAttributes, R.styleable.Preference_defaultValue);
        } else if (obtainStyledAttributes.hasValue(R.styleable.Preference_android_defaultValue)) {
            this.f7930p = onGetDefaultValue(obtainStyledAttributes, R.styleable.Preference_android_defaultValue);
        }
        v.getBoolean(obtainStyledAttributes, R.styleable.Preference_shouldDisableView, R.styleable.Preference_android_shouldDisableView, true);
        if (obtainStyledAttributes.hasValue(R.styleable.Preference_singleLineTitle)) {
            v.getBoolean(obtainStyledAttributes, R.styleable.Preference_singleLineTitle, R.styleable.Preference_android_singleLineTitle, true);
        }
        v.getBoolean(obtainStyledAttributes, R.styleable.Preference_iconSpaceReserved, R.styleable.Preference_android_iconSpaceReserved, false);
        int i10 = R.styleable.Preference_isPreferenceVisible;
        v.getBoolean(obtainStyledAttributes, i10, i10, true);
        int i11 = R.styleable.Preference_enableCopying;
        v.getBoolean(obtainStyledAttributes, i11, i11, false);
        obtainStyledAttributes.recycle();
    }

    public boolean callChangeListener(Object obj) {
        return true;
    }

    public Context getContext() {
        return this.f7924b;
    }

    public boolean getPersistedBoolean(boolean z6) {
        if (!shouldPersist()) {
            return z6;
        }
        getPreferenceDataStore();
        Object obj = null;
        obj.getClass();
        throw null;
    }

    public AbstractC0962c getPreferenceDataStore() {
        return null;
    }

    public CharSequence getSummary() {
        return getSummaryProvider() != null ? getSummaryProvider().provideSummary(this) : this.f7927j;
    }

    public final InterfaceC0961b getSummaryProvider() {
        return this.f7933s;
    }

    public CharSequence getTitle() {
        return this.f7926f;
    }

    public boolean hasKey() {
        return !TextUtils.isEmpty(this.f7928m);
    }

    public boolean isEnabled() {
        return this.f7929n && this.f7931q && this.f7932r;
    }

    public void notifyChanged() {
    }

    public void notifyDependencyChange(boolean z6) {
    }

    public Object onGetDefaultValue(TypedArray typedArray, int i2) {
        return null;
    }

    public void onParentChanged(Preference preference, boolean z6) {
        if (this.f7932r == z6) {
            this.f7932r = !z6;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public boolean persistBoolean(boolean z6) {
        if (!shouldPersist()) {
            return false;
        }
        if (z6 == getPersistedBoolean(!z6)) {
            return true;
        }
        getPreferenceDataStore();
        Object obj = null;
        obj.getClass();
        throw null;
    }

    public void setLayoutResource(int i2) {
    }

    public final void setSummaryProvider(InterfaceC0961b interfaceC0961b) {
        this.f7933s = interfaceC0961b;
        notifyChanged();
    }

    public void setWidgetLayoutResource(int i2) {
    }

    public boolean shouldDisableDependents() {
        return !isEnabled();
    }

    public boolean shouldPersist() {
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        CharSequence title = getTitle();
        if (!TextUtils.isEmpty(title)) {
            sb.append(title);
            sb.append(TokenParser.SP);
        }
        CharSequence summary = getSummary();
        if (!TextUtils.isEmpty(summary)) {
            sb.append(summary);
            sb.append(TokenParser.SP);
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Preference preference) {
        int i2 = preference.f7925e;
        int i7 = this.f7925e;
        if (i7 != i2) {
            return i7 - i2;
        }
        CharSequence charSequence = preference.f7926f;
        CharSequence charSequence2 = this.f7926f;
        if (charSequence2 == charSequence) {
            return 0;
        }
        if (charSequence2 == null) {
            return 1;
        }
        if (charSequence == null) {
            return -1;
        }
        return charSequence2.toString().compareToIgnoreCase(charSequence.toString());
    }

    public Preference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, v.getAttr(context, R.attr.preferenceStyle, android.R.attr.preferenceStyle));
    }
}
