package g0;

import androidx.fragment.app.strictmode.FragmentStrictMode$Flag;
import androidx.fragment.app.strictmode.Violation;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.j;
import v5.AbstractC1764B;

/* renamed from: g0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0940c {

    /* renamed from: c, reason: collision with root package name */
    public static final C0940c f16391c;

    /* renamed from: a, reason: collision with root package name */
    public final Set f16392a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f16393b;

    static {
        new C0939b(null);
        f16391c = new C0940c(AbstractC1764B.emptySet(), null, kotlin.collections.a.emptyMap());
    }

    public C0940c(Set<? extends FragmentStrictMode$Flag> flags, InterfaceC0938a interfaceC0938a, Map<String, ? extends Set<Class<? extends Violation>>> allowedViolations) {
        j.checkNotNullParameter(flags, "flags");
        j.checkNotNullParameter(allowedViolations, "allowedViolations");
        this.f16392a = flags;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ? extends Set<Class<? extends Violation>>> entry : allowedViolations.entrySet()) {
            linkedHashMap.put(entry.getKey(), entry.getValue());
        }
        this.f16393b = linkedHashMap;
    }

    public final Set<FragmentStrictMode$Flag> getFlags$fragment_release() {
        return this.f16392a;
    }

    public final InterfaceC0938a getListener$fragment_release() {
        return null;
    }

    public final Map<String, Set<Class<? extends Violation>>> getMAllowedViolations$fragment_release() {
        return this.f16393b;
    }
}
