package d;

import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.j;

/* renamed from: d.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0771b {
    public abstract Intent createIntent(Context context, Object obj);

    public C0770a getSynchronousResult(Context context, Object obj) {
        j.checkNotNullParameter(context, "context");
        return null;
    }

    public abstract Object parseResult(int i2, Intent intent);
}
