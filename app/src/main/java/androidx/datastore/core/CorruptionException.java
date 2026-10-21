package androidx.datastore.core;

import java.io.IOException;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class CorruptionException extends IOException {
    public /* synthetic */ CorruptionException(String str, Throwable th, int i2, g gVar) {
        this(str, (i2 & 2) != 0 ? null : th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CorruptionException(String message, Throwable th) {
        super(message, th);
        j.checkNotNullParameter(message, "message");
    }
}
