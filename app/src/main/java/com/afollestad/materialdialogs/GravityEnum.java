package com.afollestad.materialdialogs;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class GravityEnum {

    /* renamed from: b, reason: collision with root package name */
    public static final GravityEnum f8979b;

    /* renamed from: e, reason: collision with root package name */
    public static final GravityEnum f8980e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ GravityEnum[] f8981f;

    static {
        GravityEnum gravityEnum = new GravityEnum("START", 0);
        f8979b = gravityEnum;
        GravityEnum gravityEnum2 = new GravityEnum("CENTER", 1);
        GravityEnum gravityEnum3 = new GravityEnum("END", 2);
        f8980e = gravityEnum3;
        f8981f = new GravityEnum[]{gravityEnum, gravityEnum2, gravityEnum3};
    }

    public static GravityEnum valueOf(String str) {
        return (GravityEnum) Enum.valueOf(GravityEnum.class, str);
    }

    public static GravityEnum[] values() {
        return (GravityEnum[]) f8981f.clone();
    }

    @SuppressLint({"RtlHardcoded"})
    public int getGravityInt() {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return 8388611;
        }
        if (ordinal == 1) {
            return 1;
        }
        if (ordinal == 2) {
            return 8388613;
        }
        throw new IllegalStateException("Invalid gravity constant");
    }

    @TargetApi(17)
    public int getTextAlignment() {
        int ordinal = ordinal();
        if (ordinal != 1) {
            return ordinal != 2 ? 5 : 6;
        }
        return 4;
    }
}
