package com.airbnb.lottie.model.content;

import android.graphics.Paint;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ShapeStroke$LineCapType {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ ShapeStroke$LineCapType[] f9046b = {new ShapeStroke$LineCapType("BUTT", 0), new ShapeStroke$LineCapType("ROUND", 1), new ShapeStroke$LineCapType("UNKNOWN", 2)};

    /* JADX INFO: Fake field, exist only in values array */
    ShapeStroke$LineCapType EF7;

    public static ShapeStroke$LineCapType valueOf(String str) {
        return (ShapeStroke$LineCapType) Enum.valueOf(ShapeStroke$LineCapType.class, str);
    }

    public static ShapeStroke$LineCapType[] values() {
        return (ShapeStroke$LineCapType[]) f9046b.clone();
    }

    public Paint.Cap toPaintCap() {
        int ordinal = ordinal();
        return ordinal != 0 ? ordinal != 1 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
    }
}
