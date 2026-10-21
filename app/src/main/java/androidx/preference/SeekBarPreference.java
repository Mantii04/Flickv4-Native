package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public class SeekBarPreference extends Preference {

    /* renamed from: t, reason: collision with root package name */
    public final int f7935t;

    /* renamed from: u, reason: collision with root package name */
    public int f7936u;

    /* renamed from: v, reason: collision with root package name */
    public int f7937v;

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i2, int i7) {
        super(context, attributeSet, i2, i7);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SeekBarPreference, i2, i7);
        this.f7935t = obtainStyledAttributes.getInt(R.styleable.SeekBarPreference_min, 0);
        setMax(obtainStyledAttributes.getInt(R.styleable.SeekBarPreference_android_max, 100));
        setSeekBarIncrement(obtainStyledAttributes.getInt(R.styleable.SeekBarPreference_seekBarIncrement, 0));
        obtainStyledAttributes.getBoolean(R.styleable.SeekBarPreference_adjustable, true);
        obtainStyledAttributes.getBoolean(R.styleable.SeekBarPreference_showSeekBarValue, false);
        obtainStyledAttributes.getBoolean(R.styleable.SeekBarPreference_updatesContinuously, false);
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i2) {
        return Integer.valueOf(typedArray.getInt(i2, 0));
    }

    public final void setMax(int i2) {
        int i7 = this.f7935t;
        if (i2 < i7) {
            i2 = i7;
        }
        if (i2 != this.f7936u) {
            this.f7936u = i2;
            notifyChanged();
        }
    }

    public final void setSeekBarIncrement(int i2) {
        if (i2 != this.f7937v) {
            this.f7937v = Math.min(this.f7936u - this.f7935t, Math.abs(i2));
            notifyChanged();
        }
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.seekBarPreferenceStyle);
    }
}
