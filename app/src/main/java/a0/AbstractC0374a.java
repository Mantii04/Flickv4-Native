package a0;

import android.content.Context;
import java.io.File;

/* renamed from: a0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0374a {
    public static final File preferencesDataStoreFile(Context context, String name) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(name, "name");
        return X.a.dataStoreFile(context, kotlin.jvm.internal.j.stringPlus(name, ".preferences_pb"));
    }
}
