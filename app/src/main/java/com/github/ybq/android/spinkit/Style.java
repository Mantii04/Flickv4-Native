package com.github.ybq.android.spinkit;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Style {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ Style[] f9477b = {new Style("ROTATING_PLANE", 0), new Style("DOUBLE_BOUNCE", 1), new Style("WAVE", 2), new Style("WANDERING_CUBES", 3), new Style("PULSE", 4), new Style("CHASING_DOTS", 5), new Style("THREE_BOUNCE", 6), new Style("CIRCLE", 7), new Style("CUBE_GRID", 8), new Style("FADING_CIRCLE", 9), new Style("FOLDING_CUBE", 10), new Style("ROTATING_CIRCLE", 11), new Style("MULTIPLE_PULSE", 12), new Style("PULSE_RING", 13), new Style("MULTIPLE_PULSE_RING", 14)};

    /* JADX INFO: Fake field, exist only in values array */
    Style EF24;

    public static Style valueOf(String str) {
        return (Style) Enum.valueOf(Style.class, str);
    }

    public static Style[] values() {
        return (Style[]) f9477b.clone();
    }
}
