package C1;

import android.content.Context;
import java.io.File;

/* renamed from: C1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0063a {

    /* renamed from: a, reason: collision with root package name */
    public static final C0063a f424a = new C0063a();

    public final File getNoBackupFilesDir(Context context) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        File noBackupFilesDir = context.getNoBackupFilesDir();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(noBackupFilesDir, "context.noBackupFilesDir");
        return noBackupFilesDir;
    }
}
