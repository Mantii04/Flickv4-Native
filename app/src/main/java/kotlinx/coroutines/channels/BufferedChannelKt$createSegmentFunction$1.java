package kotlinx.coroutines.channels;

import H5.p;
import T5.k;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* loaded from: classes2.dex */
public /* synthetic */ class BufferedChannelKt$createSegmentFunction$1 extends FunctionReferenceImpl implements p {

    /* renamed from: b, reason: collision with root package name */
    public static final BufferedChannelKt$createSegmentFunction$1 f17523b = new BufferedChannelKt$createSegmentFunction$1();

    public BufferedChannelKt$createSegmentFunction$1() {
        super(2, BufferedChannelKt.class, "createSegment", "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;", 1);
    }

    public final k invoke(long j7, k kVar) {
        return BufferedChannelKt.access$createSegment(j7, kVar);
    }

    @Override // H5.p
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return invoke(((Number) obj).longValue(), (k) obj2);
    }
}
