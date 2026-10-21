package kotlin.coroutines;

import H5.p;
import java.io.Serializable;
import kotlin.jvm.internal.j;
import y5.InterfaceC1950i;
import y5.InterfaceC1951j;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class EmptyCoroutineContext implements InterfaceC1952k, Serializable {

    /* renamed from: b, reason: collision with root package name */
    public static final EmptyCoroutineContext f17433b = new EmptyCoroutineContext();
    private static final long serialVersionUID = 0;

    private EmptyCoroutineContext() {
    }

    @Override // y5.InterfaceC1952k
    public <R> R fold(R r6, p operation) {
        j.checkNotNullParameter(operation, "operation");
        return r6;
    }

    @Override // y5.InterfaceC1952k
    public <E extends InterfaceC1950i> E get(InterfaceC1951j key) {
        j.checkNotNullParameter(key, "key");
        return null;
    }

    public int hashCode() {
        return 0;
    }

    @Override // y5.InterfaceC1952k
    public InterfaceC1952k minusKey(InterfaceC1951j key) {
        j.checkNotNullParameter(key, "key");
        return this;
    }

    @Override // y5.InterfaceC1952k
    public InterfaceC1952k plus(InterfaceC1952k context) {
        j.checkNotNullParameter(context, "context");
        return context;
    }

    public String toString() {
        return "EmptyCoroutineContext";
    }
}
