package com.google.firebase.sessions;

import A5.d;
import H5.p;
import R5.I;
import android.content.Context;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.PreferencesKt;
import com.google.firebase.sessions.SessionDatastoreImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "com.google.firebase.sessions.SessionDatastoreImpl$updateSessionId$1", f = "SessionDatastore.kt", l = {87}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class SessionDatastoreImpl$updateSessionId$1 extends SuspendLambda implements p {
    final /* synthetic */ String $sessionId;
    int label;
    final /* synthetic */ SessionDatastoreImpl this$0;

    @d(c = "com.google.firebase.sessions.SessionDatastoreImpl$updateSessionId$1$1", f = "SessionDatastore.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.google.firebase.sessions.SessionDatastoreImpl$updateSessionId$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements p {
        final /* synthetic */ String $sessionId;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(String str, InterfaceC1944c interfaceC1944c) {
            super(2, interfaceC1944c);
            this.$sessionId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$sessionId, interfaceC1944c);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // H5.p
        public final Object invoke(MutablePreferences mutablePreferences, InterfaceC1944c interfaceC1944c) {
            return ((AnonymousClass1) create(mutablePreferences, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AbstractC2008a.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.b.throwOnFailure(obj);
            ((MutablePreferences) this.L$0).set(SessionDatastoreImpl.FirebaseSessionDataKeys.INSTANCE.getSESSION_ID(), this.$sessionId);
            return C1711j.f20329a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SessionDatastoreImpl$updateSessionId$1(SessionDatastoreImpl sessionDatastoreImpl, String str, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.this$0 = sessionDatastoreImpl;
        this.$sessionId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        return new SessionDatastoreImpl$updateSessionId$1(this.this$0, this.$sessionId, interfaceC1944c);
    }

    @Override // H5.p
    public final Object invoke(I i2, InterfaceC1944c interfaceC1944c) {
        return ((SessionDatastoreImpl$updateSessionId$1) create(i2, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SessionDatastoreImpl.Companion companion;
        Context context;
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.b.throwOnFailure(obj);
            companion = SessionDatastoreImpl.Companion;
            context = this.this$0.context;
            Y.d dataStore = companion.getDataStore(context);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$sessionId, null);
            this.label = 1;
            if (PreferencesKt.edit(dataStore, anonymousClass1, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.b.throwOnFailure(obj);
        }
        return C1711j.f20329a;
    }
}
