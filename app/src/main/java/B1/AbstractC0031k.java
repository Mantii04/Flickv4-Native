package B1;

import java.util.List;

/* renamed from: B1.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0031k {

    /* renamed from: a, reason: collision with root package name */
    public static final String f186a = t.tagWithPrefix("InputMerger");

    public static AbstractC0031k fromClassName(String str) {
        try {
            return (AbstractC0031k) Class.forName(str).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e3) {
            t.get().error(f186a, "Trouble instantiating + " + str, e3);
            return null;
        }
    }

    public abstract C0028h merge(List<C0028h> list);
}
