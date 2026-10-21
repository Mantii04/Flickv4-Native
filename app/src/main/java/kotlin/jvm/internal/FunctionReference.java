package kotlin.jvm.internal;

/* loaded from: classes2.dex */
public abstract class FunctionReference extends CallableReference implements h, N5.e {
    private final int arity;
    private final int flags;

    public FunctionReference(int i2, Object obj, Class cls, String str, String str2, int i7) {
        super(obj, cls, str, str2, (i7 & 1) == 1);
        this.arity = i2;
        this.flags = i7 >> 1;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public N5.b computeReflected() {
        return l.function(this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FunctionReference) {
            FunctionReference functionReference = (FunctionReference) obj;
            return getName().equals(functionReference.getName()) && getSignature().equals(functionReference.getSignature()) && this.flags == functionReference.flags && this.arity == functionReference.arity && j.areEqual(getBoundReceiver(), functionReference.getBoundReceiver()) && j.areEqual(getOwner(), functionReference.getOwner());
        }
        if (obj instanceof N5.e) {
            return obj.equals(compute());
        }
        return false;
    }

    @Override // kotlin.jvm.internal.h
    public int getArity() {
        return this.arity;
    }

    public int hashCode() {
        return getSignature().hashCode() + ((getName().hashCode() + (getOwner() == null ? 0 : getOwner().hashCode() * 31)) * 31);
    }

    @Override // N5.e
    public boolean isExternal() {
        return getReflected().isExternal();
    }

    @Override // N5.e
    public boolean isInfix() {
        return getReflected().isInfix();
    }

    @Override // N5.e
    public boolean isInline() {
        return getReflected().isInline();
    }

    @Override // N5.e
    public boolean isOperator() {
        return getReflected().isOperator();
    }

    @Override // kotlin.jvm.internal.CallableReference, N5.b
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public String toString() {
        N5.b compute = compute();
        if (compute != this) {
            return compute.toString();
        }
        if ("<init>".equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + " (Kotlin reflection is not available)";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public N5.e getReflected() {
        return (N5.e) super.getReflected();
    }
}
