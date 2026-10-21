package z;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Build;

/* renamed from: z.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1969o {
    public static int checkOrNoteProxyOp(Context context, int i2, String str, String str2) {
        if (Build.VERSION.SDK_INT < 29) {
            return noteProxyOpNoThrow(context, str, str2);
        }
        AppOpsManager c7 = AbstractC1968n.c(context);
        int a7 = AbstractC1968n.a(c7, str, Binder.getCallingUid(), str2);
        return a7 != 0 ? a7 : AbstractC1968n.a(c7, str, i2, AbstractC1968n.b(context));
    }

    public static int noteProxyOpNoThrow(Context context, String str, String str2) {
        return AbstractC1967m.c((AppOpsManager) AbstractC1967m.a(context, AppOpsManager.class), str, str2);
    }

    public static String permissionToOp(String str) {
        return AbstractC1967m.d(str);
    }
}
