package flix.com.vision.adapters;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class ModernFileAdapter$MODE {

    /* renamed from: b, reason: collision with root package name */
    public static final ModernFileAdapter$MODE f15789b;

    /* renamed from: e, reason: collision with root package name */
    public static final ModernFileAdapter$MODE f15790e;

    /* renamed from: f, reason: collision with root package name */
    public static final ModernFileAdapter$MODE f15791f;

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ ModernFileAdapter$MODE[] f15792j;

    static {
        ModernFileAdapter$MODE modernFileAdapter$MODE = new ModernFileAdapter$MODE("M3U", 0);
        f15789b = modernFileAdapter$MODE;
        ModernFileAdapter$MODE modernFileAdapter$MODE2 = new ModernFileAdapter$MODE("BACKUP", 1);
        f15790e = modernFileAdapter$MODE2;
        ModernFileAdapter$MODE modernFileAdapter$MODE3 = new ModernFileAdapter$MODE("SUBTITLE", 2);
        f15791f = modernFileAdapter$MODE3;
        f15792j = new ModernFileAdapter$MODE[]{modernFileAdapter$MODE, modernFileAdapter$MODE2, modernFileAdapter$MODE3};
    }

    public static ModernFileAdapter$MODE valueOf(String str) {
        return (ModernFileAdapter$MODE) Enum.valueOf(ModernFileAdapter$MODE.class, str);
    }

    public static ModernFileAdapter$MODE[] values() {
        return (ModernFileAdapter$MODE[]) f15792j.clone();
    }
}
