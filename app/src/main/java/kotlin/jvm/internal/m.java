package kotlin.jvm.internal;

/* loaded from: classes2.dex */
public final class m {
    public N5.c getOrCreateKotlinClass(Class cls) {
        return new e(cls);
    }

    public N5.d getOrCreateKotlinPackage(Class cls, String str) {
        return new k(cls, str);
    }

    public String renderLambdaToString(Lambda lambda) {
        return renderLambdaToString((h) lambda);
    }

    public String renderLambdaToString(h hVar) {
        String obj = hVar.getClass().getGenericInterfaces()[0].toString();
        return obj.startsWith("kotlin.jvm.functions.") ? obj.substring(21) : obj;
    }

    public N5.e function(FunctionReference functionReference) {
        return functionReference;
    }

    public N5.g property0(PropertyReference0 propertyReference0) {
        return propertyReference0;
    }

    public N5.i property1(PropertyReference1 propertyReference1) {
        return propertyReference1;
    }

    public N5.k property2(PropertyReference2 propertyReference2) {
        return propertyReference2;
    }
}
