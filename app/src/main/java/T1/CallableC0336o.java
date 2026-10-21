package T1;

import java.io.InputStream;
import java.util.concurrent.Callable;

/* renamed from: T1.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class CallableC0336o implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ InputStream f3631b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f3632e;

    public CallableC0336o(InputStream inputStream, String str) {
        this.f3631b = inputStream;
        this.f3632e = str;
    }

    @Override // java.util.concurrent.Callable
    public L call() {
        return AbstractC0338q.fromJsonInputStreamSync(this.f3631b, this.f3632e);
    }
}
