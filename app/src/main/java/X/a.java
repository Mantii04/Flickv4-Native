package X;

import android.content.Context;
import java.io.File;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public abstract class a {
    public static final File dataStoreFile(Context context, String fileName) {
        j.checkNotNullParameter(context, "<this>");
        j.checkNotNullParameter(fileName, "fileName");
        return new File(context.getApplicationContext().getFilesDir(), j.stringPlus("datastore/", fileName));
    }
}
