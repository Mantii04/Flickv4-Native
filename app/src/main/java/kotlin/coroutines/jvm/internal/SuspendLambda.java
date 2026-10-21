package kotlin.coroutines.jvm.internal;

import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.l;
import y5.InterfaceC1944c;

/* loaded from: classes2.dex */
public abstract class SuspendLambda extends ContinuationImpl implements h {
    private final int arity;

    public SuspendLambda(int i2, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.arity = i2;
    }

    @Override // kotlin.jvm.internal.h
    public int getArity() {
        return this.arity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public String toString() {
        if (getCompletion() != null) {
            return super.toString();
        }
        String renderLambdaToString = l.renderLambdaToString(this);
        j.checkNotNullExpressionValue(renderLambdaToString, "renderLambdaToString(...)");
        return renderLambdaToString;
    }
}
