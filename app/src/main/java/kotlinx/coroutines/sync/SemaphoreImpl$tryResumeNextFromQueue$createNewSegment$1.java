package kotlinx.coroutines.sync;

import H5.p;
import a6.d;
import a6.e;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* loaded from: classes2.dex */
final /* synthetic */ class SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1 extends FunctionReferenceImpl implements p {

    /* renamed from: b, reason: collision with root package name */
    public static final SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1 f17644b = new SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1();

    public SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1() {
        super(2, d.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);
    }

    public final e invoke(long j7, e eVar) {
        return d.access$createSegment(j7, eVar);
    }

    @Override // H5.p
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return invoke(((Number) obj).longValue(), (e) obj2);
    }
}
