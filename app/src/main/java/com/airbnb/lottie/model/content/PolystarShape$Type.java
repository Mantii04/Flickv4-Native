package com.airbnb.lottie.model.content;

/* loaded from: classes.dex */
public enum PolystarShape$Type {
    STAR(1),
    /* JADX INFO: Fake field, exist only in values array */
    POLYGON(2);


    /* renamed from: b, reason: collision with root package name */
    public final int f9045b;

    PolystarShape$Type(int i2) {
        this.f9045b = i2;
    }

    public static PolystarShape$Type forValue(int i2) {
        for (PolystarShape$Type polystarShape$Type : values()) {
            if (polystarShape$Type.f9045b == i2) {
                return polystarShape$Type;
            }
        }
        return null;
    }
}
