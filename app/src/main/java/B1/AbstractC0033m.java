package B1;

/* renamed from: B1.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0033m {
    public static AbstractC0033m getDefaultInputMergerFactory() {
        return new C0032l();
    }

    public abstract AbstractC0031k createInputMerger(String str);

    public final AbstractC0031k createInputMergerWithDefaultFallback(String str) {
        AbstractC0031k createInputMerger = createInputMerger(str);
        return createInputMerger == null ? AbstractC0031k.fromClassName(str) : createInputMerger;
    }
}
