package com.airbnb.lottie.model.content;

import android.graphics.Paint;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ShapeStroke$LineJoinType {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ ShapeStroke$LineJoinType[] f9047b = {new ShapeStroke$LineJoinType("MITER", 0), new ShapeStroke$LineJoinType("ROUND", 1), new ShapeStroke$LineJoinType("BEVEL", 2)};

    /* JADX INFO: Fake field, exist only in values array */
    ShapeStroke$LineJoinType EF7;

    public static ShapeStroke$LineJoinType valueOf(String str) {
        return (ShapeStroke$LineJoinType) Enum.valueOf(ShapeStroke$LineJoinType.class, str);
    }

    public static ShapeStroke$LineJoinType[] values() {
        return (ShapeStroke$LineJoinType[]) f9047b.clone();
    }

    public Paint.Join toPaintJoin() {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return Paint.Join.MITER;
        }
        if (ordinal == 1) {
            return Paint.Join.ROUND;
        }
        if (ordinal != 2) {
            return null;
        }
        return Paint.Join.BEVEL;
    }
}
