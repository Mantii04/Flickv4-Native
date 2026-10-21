package A;

import android.content.Context;
import android.os.Process;
import z.AbstractC1969o;

/* loaded from: classes.dex */
public abstract class n {
    public static int checkPermission(Context context, String str, int i2, int i7, String str2) {
        if (context.checkPermission(str, i2, i7) == -1) {
            return -1;
        }
        String permissionToOp = AbstractC1969o.permissionToOp(str);
        if (permissionToOp == null) {
            return 0;
        }
        if (str2 == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(i7);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            str2 = packagesForUid[0];
        }
        return ((Process.myUid() != i7 || !L.c.equals(context.getPackageName(), str2)) ? AbstractC1969o.noteProxyOpNoThrow(context, permissionToOp, str2) : AbstractC1969o.checkOrNoteProxyOp(context, i7, permissionToOp, str2)) == 0 ? 0 : -2;
    }

    public static int checkSelfPermission(Context context, String str) {
        return checkPermission(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }
}
