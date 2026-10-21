package kotlin.jvm.internal;

import java.io.Serializable;

/* loaded from: classes2.dex */
public abstract class Lambda<R> implements h, Serializable {
    private final int arity;

    public Lambda(int i2) {
        this.arity = i2;
    }

    @Override // kotlin.jvm.internal.h
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        String renderLambdaToString = l.renderLambdaToString((Lambda) this);
        j.checkNotNullExpressionValue(renderLambdaToString, "renderLambdaToString(...)");
        return renderLambdaToString;
    }
}
