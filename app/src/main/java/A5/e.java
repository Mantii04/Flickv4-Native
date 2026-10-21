package A5;

import com.fasterxml.jackson.core.JsonPointer;
import java.lang.reflect.Field;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public abstract class e {
    public static final StackTraceElement getStackTraceElement(BaseContinuationImpl baseContinuationImpl) {
        int i2;
        String str;
        j.checkNotNullParameter(baseContinuationImpl, "<this>");
        d dVar = (d) baseContinuationImpl.getClass().getAnnotation(d.class);
        if (dVar == null) {
            return null;
        }
        int v6 = dVar.v();
        if (v6 > 1) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + v6 + ". Please update the Kotlin standard library.").toString());
        }
        try {
            Field declaredField = baseContinuationImpl.getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(baseContinuationImpl);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            i2 = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            i2 = -1;
        }
        int i7 = i2 >= 0 ? dVar.l()[i2] : -1;
        String moduleName = h.f110a.getModuleName(baseContinuationImpl);
        if (moduleName == null) {
            str = dVar.c();
        } else {
            str = moduleName + JsonPointer.SEPARATOR + dVar.c();
        }
        return new StackTraceElement(str, dVar.m(), dVar.f(), i7);
    }
}
