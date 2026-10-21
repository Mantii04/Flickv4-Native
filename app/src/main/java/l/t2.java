package l;

import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public abstract class t2 {
    public static void setTooltipText(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            s2.a(view, charSequence);
        } else {
            v2.setTooltipText(view, charSequence);
        }
    }
}
