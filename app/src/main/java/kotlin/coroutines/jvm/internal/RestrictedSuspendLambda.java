package kotlin.coroutines.jvm.internal;

import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.l;
import y5.InterfaceC1944c;

/* loaded from: classes2.dex */
public abstract class RestrictedSuspendLambda extends RestrictedContinuationImpl implements h {

    /* renamed from: b, reason: collision with root package name */
    public final int f17442b;

    public RestrictedSuspendLambda(int i2, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.f17442b = i2;
    }

    @Override // kotlin.jvm.internal.h
    public int getArity() {
        return this.f17442b;
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
