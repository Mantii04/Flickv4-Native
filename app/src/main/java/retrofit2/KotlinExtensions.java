package retrofit2;

import A5.f;
import H5.l;
import R5.C0287n;
import R5.InterfaceC0285m;
import java.lang.reflect.Method;
import kotlin.KotlinNullPointerException;
import kotlin.Result;
import kotlin.b;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.internal.j;
import org.apache.commons.lang3.ClassUtils;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public final class KotlinExtensions {
    public static final <T> Object await(final Call<T> call, InterfaceC1944c interfaceC1944c) {
        final C0287n c0287n = new C0287n(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c), 1);
        c0287n.invokeOnCancellation(new l() { // from class: retrofit2.KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$1
            {
                super(1);
            }

            @Override // H5.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return C1711j.f20329a;
            }

            public final void invoke(Throwable th) {
                Call.this.cancel();
            }
        });
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$2$2
            @Override // retrofit2.Callback
            public void onFailure(Call<T> call2, Throwable t6) {
                j.checkParameterIsNotNull(call2, "call");
                j.checkParameterIsNotNull(t6, "t");
                InterfaceC0285m interfaceC0285m = InterfaceC0285m.this;
                int i2 = Result.f17390b;
                interfaceC0285m.resumeWith(Result.m103constructorimpl(b.createFailure(t6)));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<T> call2, Response<T> response) {
                j.checkParameterIsNotNull(call2, "call");
                j.checkParameterIsNotNull(response, "response");
                if (!response.isSuccessful()) {
                    InterfaceC0285m interfaceC0285m = InterfaceC0285m.this;
                    HttpException httpException = new HttpException(response);
                    int i2 = Result.f17390b;
                    interfaceC0285m.resumeWith(Result.m103constructorimpl(b.createFailure(httpException)));
                    return;
                }
                T body = response.body();
                if (body != null) {
                    InterfaceC0285m.this.resumeWith(Result.m103constructorimpl(body));
                    return;
                }
                Object tag = call2.request().tag(Invocation.class);
                if (tag == null) {
                    j.throwNpe();
                }
                j.checkExpressionValueIsNotNull(tag, "call.request().tag(Invocation::class.java)!!");
                Method method = ((Invocation) tag).method();
                StringBuilder sb = new StringBuilder("Response from ");
                j.checkExpressionValueIsNotNull(method, "method");
                Class<?> declaringClass = method.getDeclaringClass();
                j.checkExpressionValueIsNotNull(declaringClass, "method.declaringClass");
                sb.append(declaringClass.getName());
                sb.append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
                sb.append(method.getName());
                sb.append(" was null but response body type was declared as non-null");
                KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException(sb.toString());
                InterfaceC0285m interfaceC0285m2 = InterfaceC0285m.this;
                int i7 = Result.f17390b;
                interfaceC0285m2.resumeWith(Result.m103constructorimpl(b.createFailure(kotlinNullPointerException)));
            }
        });
        Object result = c0287n.getResult();
        if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            f.probeCoroutineSuspended(interfaceC1944c);
        }
        return result;
    }

    public static final <T> Object awaitNullable(final Call<T> call, InterfaceC1944c interfaceC1944c) {
        final C0287n c0287n = new C0287n(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c), 1);
        c0287n.invokeOnCancellation(new l() { // from class: retrofit2.KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$2
            {
                super(1);
            }

            @Override // H5.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return C1711j.f20329a;
            }

            public final void invoke(Throwable th) {
                Call.this.cancel();
            }
        });
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$4$2
            @Override // retrofit2.Callback
            public void onFailure(Call<T> call2, Throwable t6) {
                j.checkParameterIsNotNull(call2, "call");
                j.checkParameterIsNotNull(t6, "t");
                InterfaceC0285m interfaceC0285m = InterfaceC0285m.this;
                int i2 = Result.f17390b;
                interfaceC0285m.resumeWith(Result.m103constructorimpl(b.createFailure(t6)));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<T> call2, Response<T> response) {
                j.checkParameterIsNotNull(call2, "call");
                j.checkParameterIsNotNull(response, "response");
                if (response.isSuccessful()) {
                    InterfaceC0285m.this.resumeWith(Result.m103constructorimpl(response.body()));
                    return;
                }
                InterfaceC0285m interfaceC0285m = InterfaceC0285m.this;
                HttpException httpException = new HttpException(response);
                int i2 = Result.f17390b;
                interfaceC0285m.resumeWith(Result.m103constructorimpl(b.createFailure(httpException)));
            }
        });
        Object result = c0287n.getResult();
        if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            f.probeCoroutineSuspended(interfaceC1944c);
        }
        return result;
    }

    public static final <T> Object awaitResponse(final Call<T> call, InterfaceC1944c interfaceC1944c) {
        final C0287n c0287n = new C0287n(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c), 1);
        c0287n.invokeOnCancellation(new l() { // from class: retrofit2.KotlinExtensions$awaitResponse$$inlined$suspendCancellableCoroutine$lambda$1
            {
                super(1);
            }

            @Override // H5.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return C1711j.f20329a;
            }

            public final void invoke(Throwable th) {
                Call.this.cancel();
            }
        });
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$awaitResponse$2$2
            @Override // retrofit2.Callback
            public void onFailure(Call<T> call2, Throwable t6) {
                j.checkParameterIsNotNull(call2, "call");
                j.checkParameterIsNotNull(t6, "t");
                InterfaceC0285m interfaceC0285m = InterfaceC0285m.this;
                int i2 = Result.f17390b;
                interfaceC0285m.resumeWith(Result.m103constructorimpl(b.createFailure(t6)));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<T> call2, Response<T> response) {
                j.checkParameterIsNotNull(call2, "call");
                j.checkParameterIsNotNull(response, "response");
                InterfaceC0285m.this.resumeWith(Result.m103constructorimpl(response));
            }
        });
        Object result = c0287n.getResult();
        if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            f.probeCoroutineSuspended(interfaceC1944c);
        }
        return result;
    }

    public static final /* synthetic */ <T> T create(Retrofit create) {
        j.checkParameterIsNotNull(create, "$this$create");
        j.reifiedOperationMarker(4, "T");
        return (T) create.create(Object.class);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object suspendAndThrow(final java.lang.Exception r4, y5.InterfaceC1944c r5) {
        /*
            boolean r0 = r5 instanceof retrofit2.KotlinExtensions$suspendAndThrow$1
            if (r0 == 0) goto L13
            r0 = r5
            retrofit2.KotlinExtensions$suspendAndThrow$1 r0 = (retrofit2.KotlinExtensions$suspendAndThrow$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            retrofit2.KotlinExtensions$suspendAndThrow$1 r0 = new retrofit2.KotlinExtensions$suspendAndThrow$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.L$0
            java.lang.Exception r4 = (java.lang.Exception) r4
            kotlin.b.throwOnFailure(r5)
            goto L5c
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.b.throwOnFailure(r5)
            r0.L$0 = r4
            r0.label = r3
            R5.E r5 = R5.U.getDefault()
            y5.k r2 = r0.getContext()
            retrofit2.KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1 r3 = new retrofit2.KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1
            r3.<init>()
            r5.dispatch(r2, r3)
            java.lang.Object r4 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            java.lang.Object r5 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            if (r4 != r5) goto L59
            A5.f.probeCoroutineSuspended(r0)
        L59:
            if (r4 != r1) goto L5c
            return r1
        L5c:
            u5.j r4 = u5.C1711j.f20329a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.KotlinExtensions.suspendAndThrow(java.lang.Exception, y5.c):java.lang.Object");
    }
}
