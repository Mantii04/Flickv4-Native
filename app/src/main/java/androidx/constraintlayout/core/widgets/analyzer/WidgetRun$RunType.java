package androidx.constraintlayout.core.widgets.analyzer;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
final class WidgetRun$RunType {

    /* renamed from: b, reason: collision with root package name */
    public static final WidgetRun$RunType f5253b;

    /* renamed from: e, reason: collision with root package name */
    public static final WidgetRun$RunType f5254e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ WidgetRun$RunType[] f5255f;

    static {
        WidgetRun$RunType widgetRun$RunType = new WidgetRun$RunType("NONE", 0);
        f5253b = widgetRun$RunType;
        WidgetRun$RunType widgetRun$RunType2 = new WidgetRun$RunType("START", 1);
        WidgetRun$RunType widgetRun$RunType3 = new WidgetRun$RunType("END", 2);
        WidgetRun$RunType widgetRun$RunType4 = new WidgetRun$RunType("CENTER", 3);
        f5254e = widgetRun$RunType4;
        f5255f = new WidgetRun$RunType[]{widgetRun$RunType, widgetRun$RunType2, widgetRun$RunType3, widgetRun$RunType4};
    }

    public static WidgetRun$RunType valueOf(String str) {
        return (WidgetRun$RunType) Enum.valueOf(WidgetRun$RunType.class, str);
    }

    public static WidgetRun$RunType[] values() {
        return (WidgetRun$RunType[]) f5255f.clone();
    }
}
