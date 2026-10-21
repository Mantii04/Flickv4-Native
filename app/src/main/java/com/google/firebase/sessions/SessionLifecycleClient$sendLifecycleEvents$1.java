package com.google.firebase.sessions;

import A5.d;
import H5.p;
import R5.I;
import android.os.Message;
import android.util.Log;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.api.SessionSubscriber;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import v5.u;
import x5.AbstractC1855a;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "com.google.firebase.sessions.SessionLifecycleClient$sendLifecycleEvents$1", f = "SessionLifecycleClient.kt", l = {151}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class SessionLifecycleClient$sendLifecycleEvents$1 extends SuspendLambda implements p {
    final /* synthetic */ List<Message> $messages;
    int label;
    final /* synthetic */ SessionLifecycleClient this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SessionLifecycleClient$sendLifecycleEvents$1(SessionLifecycleClient sessionLifecycleClient, List<Message> list, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.this$0 = sessionLifecycleClient;
        this.$messages = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        return new SessionLifecycleClient$sendLifecycleEvents$1(this.this$0, this.$messages, interfaceC1944c);
    }

    @Override // H5.p
    public final Object invoke(I i2, InterfaceC1944c interfaceC1944c) {
        return ((SessionLifecycleClient$sendLifecycleEvents$1) create(i2, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Message latestByCode;
        Message latestByCode2;
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.b.throwOnFailure(obj);
            FirebaseSessionsDependencies firebaseSessionsDependencies = FirebaseSessionsDependencies.INSTANCE;
            this.label = 1;
            obj = firebaseSessionsDependencies.getRegisteredSubscribers$com_google_firebase_firebase_sessions(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.b.throwOnFailure(obj);
        }
        Map map = (Map) obj;
        if (map.isEmpty()) {
            Log.d(SessionLifecycleClient.TAG, "Sessions SDK did not have any dependent SDKs register as dependencies. Events will not be sent.");
        } else {
            Collection values = map.values();
            if (!(values instanceof Collection) || !values.isEmpty()) {
                Iterator it = values.iterator();
                while (it.hasNext()) {
                    if (((SessionSubscriber) it.next()).isDataCollectionEnabled()) {
                        latestByCode = this.this$0.getLatestByCode(this.$messages, 2);
                        latestByCode2 = this.this$0.getLatestByCode(this.$messages, 1);
                        List sortedWith = u.sortedWith(u.filterNotNull(v5.p.mutableListOf(latestByCode, latestByCode2)), new Comparator() { // from class: com.google.firebase.sessions.SessionLifecycleClient$sendLifecycleEvents$1$invokeSuspend$$inlined$sortedBy$1
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // java.util.Comparator
                            public final int compare(T t6, T t7) {
                                return AbstractC1855a.compareValues(Long.valueOf(((Message) t6).getWhen()), Long.valueOf(((Message) t7).getWhen()));
                            }
                        });
                        SessionLifecycleClient sessionLifecycleClient = this.this$0;
                        Iterator it2 = sortedWith.iterator();
                        while (it2.hasNext()) {
                            sessionLifecycleClient.sendMessageToServer((Message) it2.next());
                        }
                    }
                }
            }
            Log.d(SessionLifecycleClient.TAG, "Data Collection is disabled for all subscribers. Skipping this Event");
        }
        return C1711j.f20329a;
    }
}
