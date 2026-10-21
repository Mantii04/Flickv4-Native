package kotlin.reflect;

import kotlin.enums.a;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class KVisibility {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ KVisibility[] f17458b;

    static {
        KVisibility[] kVisibilityArr = {new KVisibility("PUBLIC", 0), new KVisibility("PROTECTED", 1), new KVisibility("INTERNAL", 2), new KVisibility("PRIVATE", 3)};
        f17458b = kVisibilityArr;
        a.enumEntries(kVisibilityArr);
    }

    public static KVisibility valueOf(String str) {
        return (KVisibility) Enum.valueOf(KVisibility.class, str);
    }

    public static KVisibility[] values() {
        return (KVisibility[]) f17458b.clone();
    }
}
