package K1;

/* renamed from: K1.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0120k {
    public static C0119j getSystemIdInfo(InterfaceC0121l interfaceC0121l, r id) {
        kotlin.jvm.internal.j.checkNotNullParameter(id, "id");
        return ((C0125p) interfaceC0121l).getSystemIdInfo(id.getWorkSpecId(), id.getGeneration());
    }

    public static void removeSystemIdInfo(InterfaceC0121l interfaceC0121l, r id) {
        kotlin.jvm.internal.j.checkNotNullParameter(id, "id");
        ((C0125p) interfaceC0121l).removeSystemIdInfo(id.getWorkSpecId(), id.getGeneration());
    }
}
