package androidx.core.os;

import L.c;

/* loaded from: classes.dex */
public class OperationCanceledException extends RuntimeException {
    public OperationCanceledException() {
        this(null);
    }

    public OperationCanceledException(String str) {
        super(c.toString(str, "The operation has been canceled."));
    }
}
