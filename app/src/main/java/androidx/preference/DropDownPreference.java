package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ArrayAdapter;

/* loaded from: classes.dex */
public class DropDownPreference extends ListPreference {

    /* renamed from: w, reason: collision with root package name */
    public final Context f7919w;

    /* renamed from: x, reason: collision with root package name */
    public final ArrayAdapter f7920x;

    public DropDownPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dropdownPreferenceStyle);
    }

    public ArrayAdapter createAdapter() {
        return new ArrayAdapter(this.f7919w, android.R.layout.simple_spinner_dropdown_item);
    }

    @Override // androidx.preference.Preference
    public void notifyChanged() {
        super.notifyChanged();
        ArrayAdapter arrayAdapter = this.f7920x;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i2, int i7) {
        super(context, attributeSet, i2, i7);
        this.f7919w = context;
        ArrayAdapter createAdapter = createAdapter();
        this.f7920x = createAdapter;
        createAdapter.clear();
        if (getEntries() != null) {
            for (CharSequence charSequence : getEntries()) {
                createAdapter.add(charSequence.toString());
            }
        }
    }
}
