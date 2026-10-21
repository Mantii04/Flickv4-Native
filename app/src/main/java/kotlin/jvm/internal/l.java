package kotlin.jvm.internal;

/* loaded from: classes2.dex */
public abstract class l {

    /* renamed from: a, reason: collision with root package name */
    public static final m f17456a;

    static {
        m mVar = null;
        try {
            mVar = (m) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (mVar == null) {
            mVar = new m();
        }
        f17456a = mVar;
    }

    public static N5.e function(FunctionReference functionReference) {
        return f17456a.function(functionReference);
    }

    public static N5.c getOrCreateKotlinClass(Class cls) {
        return f17456a.getOrCreateKotlinClass(cls);
    }

    public static N5.d getOrCreateKotlinPackage(Class cls) {
        return f17456a.getOrCreateKotlinPackage(cls, "");
    }

    public static N5.g property0(PropertyReference0 propertyReference0) {
        return f17456a.property0(propertyReference0);
    }

    public static N5.i property1(PropertyReference1 propertyReference1) {
        return f17456a.property1(propertyReference1);
    }

    public static N5.k property2(PropertyReference2 propertyReference2) {
        return f17456a.property2(propertyReference2);
    }

    public static String renderLambdaToString(Lambda lambda) {
        return f17456a.renderLambdaToString(lambda);
    }

    public static String renderLambdaToString(h hVar) {
        return f17456a.renderLambdaToString(hVar);
    }
}
