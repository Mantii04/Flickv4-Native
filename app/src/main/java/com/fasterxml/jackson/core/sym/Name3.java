package com.fasterxml.jackson.core.sym;

/* loaded from: classes.dex */
public final class Name3 extends Name {

    /* renamed from: q1, reason: collision with root package name */
    private final int f9467q1;

    /* renamed from: q2, reason: collision with root package name */
    private final int f9468q2;

    /* renamed from: q3, reason: collision with root package name */
    private final int f9469q3;

    public Name3(String str, int i2, int i7, int i8, int i9) {
        super(str, i2);
        this.f9467q1 = i7;
        this.f9468q2 = i8;
        this.f9469q3 = i9;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i2) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i2, int i7) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i2, int i7, int i8) {
        return this.f9467q1 == i2 && this.f9468q2 == i7 && this.f9469q3 == i8;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int[] iArr, int i2) {
        return i2 == 3 && iArr[0] == this.f9467q1 && iArr[1] == this.f9468q2 && iArr[2] == this.f9469q3;
    }
}
