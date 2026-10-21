package S4;

import android.view.View;
import android.widget.AdapterView;
import flix.com.vision.App;

/* loaded from: classes2.dex */
public final class m implements AdapterView.OnItemSelectedListener {
    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j7) {
        App.getInstance().f14440s.edit().putString("pref_filter_sort_anime", i2 == 1 ? "last_added" : "popular").apply();
        App.getInstance().f14440s.edit().putInt("sort_by_index_anime", i2).apply();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
