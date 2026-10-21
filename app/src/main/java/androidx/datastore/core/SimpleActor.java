package androidx.datastore.core;

import H5.l;
import H5.p;
import R5.A0;
import R5.AbstractC0277i;
import R5.F;
import R5.I;
import R5.InterfaceC0294q0;
import T5.c;
import T5.f;
import T5.g;
import androidx.media3.common.util.Log;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.channels.ClosedSendChannelException;
import u5.C1711j;

/* loaded from: classes.dex */
public final class SimpleActor {

    /* renamed from: a, reason: collision with root package name */
    public final I f5611a;

    /* renamed from: b, reason: collision with root package name */
    public final p f5612b;

    /* renamed from: c, reason: collision with root package name */
    public final c f5613c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicInteger f5614d;

    public SimpleActor(I scope, final l onComplete, final p onUndeliveredElement, p consumeMessage) {
        j.checkNotNullParameter(scope, "scope");
        j.checkNotNullParameter(onComplete, "onComplete");
        j.checkNotNullParameter(onUndeliveredElement, "onUndeliveredElement");
        j.checkNotNullParameter(consumeMessage, "consumeMessage");
        this.f5611a = scope;
        this.f5612b = consumeMessage;
        this.f5613c = f.Channel$default(Log.LOG_LEVEL_OFF, null, null, 6, null);
        this.f5614d = new AtomicInteger(0);
        InterfaceC0294q0 interfaceC0294q0 = (InterfaceC0294q0) scope.getCoroutineContext().get(F.f3147e);
        if (interfaceC0294q0 == null) {
            return;
        }
        ((A0) interfaceC0294q0).invokeOnCompletion(new l() { // from class: androidx.datastore.core.SimpleActor.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // H5.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return C1711j.f20329a;
            }

            public final void invoke(Throwable th) {
                C1711j c1711j;
                l.this.invoke(th);
                SimpleActor simpleActor = this;
                simpleActor.f5613c.close(th);
                do {
                    Object m37getOrNullimpl = T5.j.m37getOrNullimpl(simpleActor.f5613c.mo28tryReceivePtdJZtk());
                    if (m37getOrNullimpl == null) {
                        c1711j = null;
                    } else {
                        onUndeliveredElement.invoke(m37getOrNullimpl, th);
                        c1711j = C1711j.f20329a;
                    }
                } while (c1711j != null);
            }
        });
    }

    public final void offer(Object obj) {
        Object mo29trySendJP2dKIU = this.f5613c.mo29trySendJP2dKIU(obj);
        if (mo29trySendJP2dKIU instanceof g) {
            Throwable m36exceptionOrNullimpl = T5.j.m36exceptionOrNullimpl(mo29trySendJP2dKIU);
            if (m36exceptionOrNullimpl != null) {
                throw m36exceptionOrNullimpl;
            }
            throw new ClosedSendChannelException("Channel was closed normally");
        }
        if (!T5.j.m40isSuccessimpl(mo29trySendJP2dKIU)) {
            throw new IllegalStateException("Check failed.");
        }
        if (this.f5614d.getAndIncrement() == 0) {
            AbstractC0277i.launch$default(this.f5611a, null, null, new SimpleActor$offer$2(this, null), 3, null);
        }
    }
}
