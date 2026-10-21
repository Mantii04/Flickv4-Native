package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;

/* loaded from: classes.dex */
public final class x {
    public Typeface buildTypeface(Context context, J.q qVar) throws PackageManager.NameNotFoundException {
        return J.s.buildTypeface(context, null, new J.q[]{qVar});
    }

    public J.p fetchFonts(Context context, J.i iVar) throws PackageManager.NameNotFoundException {
        return J.s.fetchFonts(context, null, iVar);
    }

    public void unregisterObserver(Context context, ContentObserver contentObserver) {
        context.getContentResolver().unregisterContentObserver(contentObserver);
    }
}
