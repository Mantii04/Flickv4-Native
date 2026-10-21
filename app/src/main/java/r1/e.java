package r1;

import android.content.Context;
import java.io.File;

/* loaded from: classes.dex */
public abstract class e {
    public static final File getNoBackupFilesDir(Context context) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        File noBackupFilesDir = context.getNoBackupFilesDir();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(noBackupFilesDir, "context.noBackupFilesDir");
        return noBackupFilesDir;
    }
}
