package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public abstract class TwoStatePreference extends Preference {

    /* renamed from: t, reason: collision with root package name */
    public boolean f7938t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f7939u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f7940v;

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i2, int i7) {
        super(context, attributeSet, i2, i7);
    }

    public boolean isChecked() {
        return this.f7938t;
    }

    @Override // androidx.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i2) {
        return Boolean.valueOf(typedArray.getBoolean(i2, false));
    }

    public void setChecked(boolean z6) {
        boolean z7 = this.f7938t != z6;
        if (z7 || !this.f7939u) {
            this.f7938t = z6;
            this.f7939u = true;
            persistBoolean(z6);
            if (z7) {
                notifyDependencyChange(shouldDisableDependents());
                notifyChanged();
            }
        }
    }

    public void setDisableDependentsState(boolean z6) {
        this.f7940v = z6;
    }

    public void setSummaryOff(CharSequence charSequence) {
        if (isChecked()) {
            return;
        }
        notifyChanged();
    }

    public void setSummaryOn(CharSequence charSequence) {
        if (isChecked()) {
            notifyChanged();
        }
    }

    @Override // androidx.preference.Preference
    public boolean shouldDisableDependents() {
        return (this.f7940v ? this.f7938t : !this.f7938t) || super.shouldDisableDependents();
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
