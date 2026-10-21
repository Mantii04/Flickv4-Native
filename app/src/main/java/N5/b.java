package N5;

import java.util.List;
import java.util.Map;
import kotlin.reflect.KVisibility;

/* loaded from: classes2.dex */
public interface b extends a {
    Object call(Object... objArr);

    Object callBy(Map<Object, ? extends Object> map);

    List<Object> getParameters();

    m getReturnType();

    List<Object> getTypeParameters();

    KVisibility getVisibility();

    boolean isAbstract();

    boolean isFinal();

    boolean isOpen();

    boolean isSuspend();
}
