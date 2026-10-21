package w;

import android.view.View;

/* renamed from: w.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1772a {
    public static String getName(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return "UNKNOWN";
        }
    }
}
