package kotlin.jvm.internal;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import kotlin.reflect.KVisibility;

/* loaded from: classes2.dex */
public abstract class CallableReference implements N5.b, Serializable {
    public static final Object NO_RECEIVER = NoReceiver.f17444b;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    protected final Object receiver;
    private transient N5.b reflected;
    private final String signature;

    public static class NoReceiver implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public static final NoReceiver f17444b = new NoReceiver();

        private NoReceiver() {
        }
    }

    public CallableReference(Object obj, Class cls, String str, String str2, boolean z6) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z6;
    }

    @Override // N5.b
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // N5.b
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    public N5.b compute() {
        N5.b bVar = this.reflected;
        if (bVar != null) {
            return bVar;
        }
        N5.b computeReflected = computeReflected();
        this.reflected = computeReflected;
        return computeReflected;
    }

    public abstract N5.b computeReflected();

    @Override // N5.a
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    public Object getBoundReceiver() {
        return this.receiver;
    }

    public String getName() {
        return this.name;
    }

    public N5.d getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        return this.isTopLevel ? l.getOrCreateKotlinPackage(cls) : l.getOrCreateKotlinClass(cls);
    }

    @Override // N5.b
    public List<Object> getParameters() {
        return getReflected().getParameters();
    }

    public N5.b getReflected() {
        N5.b compute = compute();
        if (compute != this) {
            return compute;
        }
        throw new KotlinReflectionNotSupportedError();
    }

    @Override // N5.b
    public N5.m getReturnType() {
        getReflected().getReturnType();
        return null;
    }

    public String getSignature() {
        return this.signature;
    }

    @Override // N5.b
    public List<Object> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // N5.b
    public KVisibility getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // N5.b
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // N5.b
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // N5.b
    public boolean isOpen() {
        return getReflected().isOpen();
    }

    @Override // N5.b
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }
}
