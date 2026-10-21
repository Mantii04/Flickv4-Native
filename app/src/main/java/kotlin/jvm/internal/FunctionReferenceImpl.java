package kotlin.jvm.internal;

/* loaded from: classes2.dex */
public abstract class FunctionReferenceImpl extends FunctionReference {
    public FunctionReferenceImpl(int i2, Class cls, String str, String str2, int i7) {
        super(i2, CallableReference.NO_RECEIVER, cls, str, str2, i7);
    }

    public FunctionReferenceImpl(int i2, Object obj, Class cls, String str, String str2, int i7) {
        super(i2, obj, cls, str, str2, i7);
    }
}
