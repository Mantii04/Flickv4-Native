package androidx.lifecycle;

/* loaded from: classes.dex */
public abstract /* synthetic */ class b0 {
    public static X a(c0 c0Var, Class modelClass) {
        kotlin.jvm.internal.j.checkNotNullParameter(modelClass, "modelClass");
        throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
    }

    public static X b(c0 c0Var, Class modelClass, m0.c extras) {
        kotlin.jvm.internal.j.checkNotNullParameter(modelClass, "modelClass");
        kotlin.jvm.internal.j.checkNotNullParameter(extras, "extras");
        return c0Var.create(modelClass);
    }
}
