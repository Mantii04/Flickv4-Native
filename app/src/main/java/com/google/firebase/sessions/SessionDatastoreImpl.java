package com.google.firebase.sessions;

import A5.d;
import H5.l;
import H5.p;
import R5.AbstractC0277i;
import R5.I;
import R5.J;
import U5.c;
import android.content.Context;
import android.util.Log;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.PreferenceDataStoreSingletonDelegate;
import b0.AbstractC0626c;
import b0.AbstractC0627d;
import b0.AbstractC0628e;
import b0.C0624a;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import org.apache.commons.lang3.ClassUtils;
import u5.C1711j;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public final class SessionDatastoreImpl implements SessionDatastore {

    @Deprecated
    private static final String TAG = "FirebaseSessionsRepo";
    private final InterfaceC1952k backgroundDispatcher;
    private final Context context;
    private final AtomicReference<FirebaseSessionsData> currentSessionFromDatastore;
    private final U5.b firebaseSessionDataFlow;
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final J5.a dataStore$delegate = PreferenceDataStoreDelegateKt.preferencesDataStore$default(SessionDataStoreConfigs.INSTANCE.getSESSIONS_CONFIG_NAME(), new Z.b(new l() { // from class: com.google.firebase.sessions.SessionDatastoreImpl$Companion$dataStore$2
        @Override // H5.l
        public final AbstractC0626c invoke(CorruptionException ex) {
            j.checkNotNullParameter(ex, "ex");
            Log.w("FirebaseSessionsRepo", "CorruptionException in sessions DataStore in " + ProcessDetailsProvider.INSTANCE.getProcessName$com_google_firebase_firebase_sessions() + ClassUtils.PACKAGE_SEPARATOR_CHAR, ex);
            return AbstractC0627d.createEmpty();
        }
    }), null, null, 12, null);

    @d(c = "com.google.firebase.sessions.SessionDatastoreImpl$1", f = "SessionDatastore.kt", l = {81}, m = "invokeSuspend")
    /* renamed from: com.google.firebase.sessions.SessionDatastoreImpl$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements p {
        int label;

        public AnonymousClass1(InterfaceC1944c interfaceC1944c) {
            super(2, interfaceC1944c);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
            return SessionDatastoreImpl.this.new AnonymousClass1(interfaceC1944c);
        }

        @Override // H5.p
        public final Object invoke(I i2, InterfaceC1944c interfaceC1944c) {
            return ((AnonymousClass1) create(i2, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.b.throwOnFailure(obj);
                U5.b bVar = SessionDatastoreImpl.this.firebaseSessionDataFlow;
                final SessionDatastoreImpl sessionDatastoreImpl = SessionDatastoreImpl.this;
                c cVar = new c() { // from class: com.google.firebase.sessions.SessionDatastoreImpl.1.1
                    @Override // U5.c
                    public final Object emit(FirebaseSessionsData firebaseSessionsData, InterfaceC1944c interfaceC1944c) {
                        SessionDatastoreImpl.this.currentSessionFromDatastore.set(firebaseSessionsData);
                        return C1711j.f20329a;
                    }
                };
                this.label = 1;
                if (bVar.collect(cVar, this) == coroutine_suspended) {
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

    public static final class Companion {
        static final /* synthetic */ N5.l[] $$delegatedProperties = {kotlin.jvm.internal.l.property2(new PropertyReference2Impl(Companion.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Y.d getDataStore(Context context) {
            return (Y.d) ((PreferenceDataStoreSingletonDelegate) SessionDatastoreImpl.dataStore$delegate).getValue((Object) context, $$delegatedProperties[0]);
        }

        private Companion() {
        }
    }

    public static final class FirebaseSessionDataKeys {
        public static final FirebaseSessionDataKeys INSTANCE = new FirebaseSessionDataKeys();
        private static final C0624a SESSION_ID = AbstractC0628e.stringKey("session_id");

        private FirebaseSessionDataKeys() {
        }

        public final C0624a getSESSION_ID() {
            return SESSION_ID;
        }
    }

    public SessionDatastoreImpl(Context context, InterfaceC1952k backgroundDispatcher) {
        j.checkNotNullParameter(context, "context");
        j.checkNotNullParameter(backgroundDispatcher, "backgroundDispatcher");
        this.context = context;
        this.backgroundDispatcher = backgroundDispatcher;
        this.currentSessionFromDatastore = new AtomicReference<>();
        final U5.b m43catch = U5.d.m43catch(Companion.getDataStore(context).getData(), new SessionDatastoreImpl$firebaseSessionDataFlow$1(null));
        this.firebaseSessionDataFlow = new U5.b() { // from class: com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1

            /* renamed from: com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements c {
                final /* synthetic */ c $this_unsafeFlow;
                final /* synthetic */ SessionDatastoreImpl this$0;

                @d(c = "com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1$2", f = "SessionDatastore.kt", l = {224}, m = "emit")
                /* renamed from: com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1$2$1, reason: invalid class name */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(InterfaceC1944c interfaceC1944c) {
                        super(interfaceC1944c);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(c cVar, SessionDatastoreImpl sessionDatastoreImpl) {
                    this.$this_unsafeFlow = cVar;
                    this.this$0 = sessionDatastoreImpl;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
                @Override // U5.c
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, y5.InterfaceC1944c r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1$2$1 r0 = (com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1$2$1 r0 = new com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.b.throwOnFailure(r6)
                        goto L47
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.b.throwOnFailure(r6)
                        U5.c r6 = r4.$this_unsafeFlow
                        b0.c r5 = (b0.AbstractC0626c) r5
                        com.google.firebase.sessions.SessionDatastoreImpl r2 = r4.this$0
                        com.google.firebase.sessions.FirebaseSessionsData r5 = com.google.firebase.sessions.SessionDatastoreImpl.access$mapSessionsData(r2, r5)
                        r0.label = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L47
                        return r1
                    L47:
                        u5.j r5 = u5.C1711j.f20329a
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, y5.c):java.lang.Object");
                }
            }

            @Override // U5.b
            public Object collect(c cVar, InterfaceC1944c interfaceC1944c) {
                Object collect = U5.b.this.collect(new AnonymousClass2(cVar, this), interfaceC1944c);
                return collect == AbstractC2008a.getCOROUTINE_SUSPENDED() ? collect : C1711j.f20329a;
            }
        };
        AbstractC0277i.launch$default(J.CoroutineScope(backgroundDispatcher), null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FirebaseSessionsData mapSessionsData(AbstractC0626c abstractC0626c) {
        return new FirebaseSessionsData((String) abstractC0626c.get(FirebaseSessionDataKeys.INSTANCE.getSESSION_ID()));
    }

    @Override // com.google.firebase.sessions.SessionDatastore
    public String getCurrentSessionId() {
        FirebaseSessionsData firebaseSessionsData = this.currentSessionFromDatastore.get();
        if (firebaseSessionsData != null) {
            return firebaseSessionsData.getSessionId();
        }
        return null;
    }

    @Override // com.google.firebase.sessions.SessionDatastore
    public void updateSessionId(String sessionId) {
        j.checkNotNullParameter(sessionId, "sessionId");
        AbstractC0277i.launch$default(J.CoroutineScope(this.backgroundDispatcher), null, null, new SessionDatastoreImpl$updateSessionId$1(this, sessionId, null), 3, null);
    }
}
