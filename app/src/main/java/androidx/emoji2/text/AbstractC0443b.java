package androidx.emoji2.text;

import android.os.Handler;
import android.os.Looper;

/* renamed from: androidx.emoji2.text.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0443b {
    public static Handler createAsync(Looper looper) {
        Handler createAsync;
        createAsync = Handler.createAsync(looper);
        return createAsync;
    }
}
