package X2;

import J0.g;
import java.net.URL;

/* loaded from: classes.dex */
public abstract class b {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [A0.a] */
    /* JADX WARN: Type inference failed for: r1v2, types: [TResult, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0, types: [TInput, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v8 */
    public static <TInput, TResult, TException extends Throwable> TResult retry(int i2, TInput tinput, a aVar, c cVar) throws Throwable {
        ?? r12;
        if (i2 < 1) {
            return (TResult) ((A0.a) aVar).apply(tinput);
        }
        do {
            r12 = (TResult) ((A0.a) aVar).apply(tinput);
            ((g) cVar).getClass();
            Q2.b bVar = (Q2.b) tinput;
            Q2.c cVar2 = (Q2.c) r12;
            URL url = cVar2.f2843b;
            if (url != null) {
                W2.a.d("CctTransportBackend", "Following redirect to: %s", url);
                tinput = (TInput) new Q2.b(cVar2.f2843b, bVar.f2840b, bVar.f2841c);
            } else {
                tinput = 0;
            }
            if (tinput == 0) {
                break;
            }
            i2--;
        } while (i2 >= 1);
        return r12;
    }
}
