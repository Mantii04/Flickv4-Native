package d;

import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.j;

/* renamed from: d.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0775f extends AbstractC0771b {
    static {
        new C0774e(null);
    }

    @Override // d.AbstractC0771b
    public Intent createIntent(Context context, Intent input) {
        j.checkNotNullParameter(context, "context");
        j.checkNotNullParameter(input, "input");
        return input;
    }

    @Override // d.AbstractC0771b
    public androidx.activity.result.b parseResult(int i2, Intent intent) {
        return new androidx.activity.result.b(i2, intent);
    }
}
