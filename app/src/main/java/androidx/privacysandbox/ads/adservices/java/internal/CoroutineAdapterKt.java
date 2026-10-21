package androidx.privacysandbox.ads.adservices.java.internal;

import H5.l;
import R5.A0;
import R5.N;
import V3.F;
import androidx.concurrent.futures.k;
import androidx.concurrent.futures.n;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.j;
import u5.C1711j;

/* loaded from: classes.dex */
public abstract class CoroutineAdapterKt {
    public static final <T> F asListenableFuture(final N n7, final Object obj) {
        j.checkNotNullParameter(n7, "<this>");
        F future = n.getFuture(new k() { // from class: androidx.privacysandbox.ads.adservices.java.internal.a
            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.concurrent.futures.k
            public final Object attachCompleter(final androidx.concurrent.futures.j completer) {
                final N this_asListenableFuture = N.this;
                j.checkNotNullParameter(this_asListenableFuture, "$this_asListenableFuture");
                j.checkNotNullParameter(completer, "completer");
                ((A0) this_asListenableFuture).invokeOnCompletion(new l() { // from class: androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt$asListenableFuture$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // H5.l
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                        invoke((Throwable) obj2);
                        return C1711j.f20329a;
                    }

                    public final void invoke(Throwable th) {
                        androidx.concurrent.futures.j jVar = androidx.concurrent.futures.j.this;
                        if (th == null) {
                            jVar.set(this_asListenableFuture.getCompleted());
                        } else if (th instanceof CancellationException) {
                            jVar.setCancelled();
                        } else {
                            jVar.setException(th);
                        }
                    }
                });
                return obj;
            }
        });
        j.checkNotNullExpressionValue(future, "getFuture { completer ->…        }\n    }\n    tag\n}");
        return future;
    }

    public static /* synthetic */ F asListenableFuture$default(N n7, Object obj, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            obj = "Deferred.asListenableFuture";
        }
        return asListenableFuture(n7, obj);
    }
}
