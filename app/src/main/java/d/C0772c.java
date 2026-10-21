package d;

import android.content.Intent;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;

/* renamed from: d.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0772c {
    public C0772c(g gVar) {
    }

    public final Intent createIntent$activity_release(String[] input) {
        j.checkNotNullParameter(input, "input");
        Intent putExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", input);
        j.checkNotNullExpressionValue(putExtra, "Intent(ACTION_REQUEST_PE…EXTRA_PERMISSIONS, input)");
        return putExtra;
    }
}
