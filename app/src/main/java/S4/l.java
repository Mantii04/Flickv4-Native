package S4;

import android.widget.CompoundButton;
import flix.com.vision.App;

/* loaded from: classes2.dex */
public final class l implements CompoundButton.OnCheckedChangeListener {
    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
        A.i.x(App.getInstance().f14440s, "pref_hide_adult_content_anime", z6);
    }
}
