package kotlinx.coroutines.channels;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class BufferOverflow {

    /* renamed from: b, reason: collision with root package name */
    public static final BufferOverflow f17486b;

    /* renamed from: e, reason: collision with root package name */
    public static final BufferOverflow f17487e;

    /* renamed from: f, reason: collision with root package name */
    public static final BufferOverflow f17488f;

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ BufferOverflow[] f17489j;

    static {
        BufferOverflow bufferOverflow = new BufferOverflow("SUSPEND", 0);
        f17486b = bufferOverflow;
        BufferOverflow bufferOverflow2 = new BufferOverflow("DROP_OLDEST", 1);
        f17487e = bufferOverflow2;
        BufferOverflow bufferOverflow3 = new BufferOverflow("DROP_LATEST", 2);
        f17488f = bufferOverflow3;
        f17489j = new BufferOverflow[]{bufferOverflow, bufferOverflow2, bufferOverflow3};
    }

    public static BufferOverflow valueOf(String str) {
        return (BufferOverflow) Enum.valueOf(BufferOverflow.class, str);
    }

    public static BufferOverflow[] values() {
        return (BufferOverflow[]) f17489j.clone();
    }
}
