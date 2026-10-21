package androidx.datastore.preferences.core;

import A5.d;
import H5.p;
import b0.AbstractC0626c;
import kotlin.b;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "androidx.datastore.preferences.core.PreferenceDataStore$updateData$2", f = "PreferenceDataStoreFactory.kt", l = {85}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class PreferenceDataStore$updateData$2 extends SuspendLambda implements p {

    /* renamed from: b, reason: collision with root package name */
    public int f5731b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f5732e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ p f5733f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PreferenceDataStore$updateData$2(p pVar, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.f5733f = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        PreferenceDataStore$updateData$2 preferenceDataStore$updateData$2 = new PreferenceDataStore$updateData$2(this.f5733f, interfaceC1944c);
        preferenceDataStore$updateData$2.f5732e = obj;
        return preferenceDataStore$updateData$2;
    }

    @Override // H5.p
    public final Object invoke(AbstractC0626c abstractC0626c, InterfaceC1944c interfaceC1944c) {
        return ((PreferenceDataStore$updateData$2) create(abstractC0626c, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.f5731b;
        if (i2 == 0) {
            b.throwOnFailure(obj);
            AbstractC0626c abstractC0626c = (AbstractC0626c) this.f5732e;
            this.f5731b = 1;
            obj = this.f5733f.invoke(abstractC0626c, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            b.throwOnFailure(obj);
        }
        AbstractC0626c abstractC0626c2 = (AbstractC0626c) obj;
        ((MutablePreferences) abstractC0626c2).freeze$datastore_preferences_core();
        return abstractC0626c2;
    }
}
