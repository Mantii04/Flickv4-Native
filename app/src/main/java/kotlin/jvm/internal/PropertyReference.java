package kotlin.jvm.internal;

/* loaded from: classes2.dex */
public abstract class PropertyReference extends CallableReference implements N5.l {
    private final boolean syntheticJavaProperty;

    public PropertyReference(Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, (i2 & 1) == 1);
        this.syntheticJavaProperty = (i2 & 2) == 2;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public N5.b compute() {
        return this.syntheticJavaProperty ? this : super.compute();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PropertyReference) {
            PropertyReference propertyReference = (PropertyReference) obj;
            return getOwner().equals(propertyReference.getOwner()) && getName().equals(propertyReference.getName()) && getSignature().equals(propertyReference.getSignature()) && j.areEqual(getBoundReceiver(), propertyReference.getBoundReceiver());
        }
        if (obj instanceof N5.l) {
            return obj.equals(compute());
        }
        return false;
    }

    public int hashCode() {
        return getSignature().hashCode() + ((getName().hashCode() + (getOwner().hashCode() * 31)) * 31);
    }

    @Override // N5.l
    public boolean isConst() {
        return getReflected().isConst();
    }

    @Override // N5.l
    public boolean isLateinit() {
        return getReflected().isLateinit();
    }

    public String toString() {
        N5.b compute = compute();
        if (compute != this) {
            return compute.toString();
        }
        return "property " + getName() + " (Kotlin reflection is not available)";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public N5.l getReflected() {
        if (this.syntheticJavaProperty) {
            throw new UnsupportedOperationException("Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980");
        }
        return (N5.l) super.getReflected();
    }
}
