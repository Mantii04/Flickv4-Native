package androidx.preference;

import C.v;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import androidx.media3.common.util.Log;
import java.util.ArrayList;
import p.q;

/* loaded from: classes.dex */
public abstract class PreferenceGroup extends Preference {

    /* renamed from: t, reason: collision with root package name */
    public final ArrayList f7934t;

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i2, int i7) {
        super(context, attributeSet, i2, i7);
        new q();
        new Handler();
        this.f7934t = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PreferenceGroup, i2, i7);
        int i8 = R.styleable.PreferenceGroup_orderingFromXml;
        v.getBoolean(obtainStyledAttributes, i8, i8, true);
        if (obtainStyledAttributes.hasValue(R.styleable.PreferenceGroup_initialExpandedChildrenCount)) {
            int i9 = R.styleable.PreferenceGroup_initialExpandedChildrenCount;
            setInitialExpandedChildrenCount(v.getInt(obtainStyledAttributes, i9, i9, Log.LOG_LEVEL_OFF));
        }
        obtainStyledAttributes.recycle();
    }

    public Preference getPreference(int i2) {
        return (Preference) this.f7934t.get(i2);
    }

    public int getPreferenceCount() {
        return this.f7934t.size();
    }

    @Override // androidx.preference.Preference
    public void notifyDependencyChange(boolean z6) {
        super.notifyDependencyChange(z6);
        int preferenceCount = getPreferenceCount();
        for (int i2 = 0; i2 < preferenceCount; i2++) {
            getPreference(i2).onParentChanged(this, z6);
        }
    }

    public void setInitialExpandedChildrenCount(int i2) {
        if (i2 == Integer.MAX_VALUE || hasKey()) {
            return;
        }
        android.util.Log.e("PreferenceGroup", getClass().getSimpleName().concat(" should have a key defined if it contains an expandable preference"));
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
