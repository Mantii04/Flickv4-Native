package androidx.datastore.preferences.core;

import A5.d;
import H5.p;
import b0.AbstractC0626c;
import kotlin.b;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "androidx.datastore.preferences.core.PreferencesKt$edit$2", f = "Preferences.kt", l = {329}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class PreferencesKt$edit$2 extends SuspendLambda implements p {

    /* renamed from: b, reason: collision with root package name */
    public int f5736b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f5737e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ p f5738f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PreferencesKt$edit$2(p pVar, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.f5738f = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        PreferencesKt$edit$2 preferencesKt$edit$2 = new PreferencesKt$edit$2(this.f5738f, interfaceC1944c);
        preferencesKt$edit$2.f5737e = obj;
        return preferencesKt$edit$2;
    }

    @Override // H5.p
    public final Object invoke(AbstractC0626c abstractC0626c, InterfaceC1944c interfaceC1944c) {
        return ((PreferencesKt$edit$2) create(abstractC0626c, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.f5736b;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            MutablePreferences mutablePreferences = (MutablePreferences) this.f5737e;
            b.throwOnFailure(obj);
            return mutablePreferences;
        }
        b.throwOnFailure(obj);
        MutablePreferences mutablePreferences2 = ((AbstractC0626c) this.f5737e).toMutablePreferences();
        this.f5737e = mutablePreferences2;
        this.f5736b = 1;
        return this.f5738f.invoke(mutablePreferences2, this) == coroutine_suspended ? coroutine_suspended : mutablePreferences2;
    }
}
