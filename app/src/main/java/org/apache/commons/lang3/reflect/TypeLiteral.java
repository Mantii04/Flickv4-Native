package org.apache.commons.lang3.reflect;

import A.i;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Map;
import org.apache.commons.lang3.Validate;

/* loaded from: classes2.dex */
public abstract class TypeLiteral<T> implements Typed<T> {

    /* renamed from: T, reason: collision with root package name */
    private static final TypeVariable<Class<TypeLiteral>> f19166T = TypeLiteral.class.getTypeParameters()[0];
    private final String toString;
    public final Type value;

    public TypeLiteral() {
        Map<TypeVariable<?>, Type> typeArguments = TypeUtils.getTypeArguments(getClass(), TypeLiteral.class);
        TypeVariable<Class<TypeLiteral>> typeVariable = f19166T;
        Type type = (Type) Validate.notNull(typeArguments.get(typeVariable), "%s does not assign type parameter %s", getClass(), TypeUtils.toLongString(typeVariable));
        this.value = type;
        this.toString = i.l("TypeLiteral<", TypeUtils.toString(type), ">");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TypeLiteral) {
            return TypeUtils.equals(this.value, ((TypeLiteral) obj).value);
        }
        return false;
    }

    @Override // org.apache.commons.lang3.reflect.Typed
    public Type getType() {
        return this.value;
    }

    public int hashCode() {
        return this.value.hashCode() | 592;
    }

    public String toString() {
        return this.toString;
    }
}
